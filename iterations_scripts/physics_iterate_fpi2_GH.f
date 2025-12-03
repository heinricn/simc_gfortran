	real*8 function peepi(vertex,main)

* Purpose:
* This function determines the kinematics in the PHOTON-NUCLEON center of mass
* frame, calculates some of the kinematical variables (s,t, and CM quantities
* in the 'main' structure), and returns the pion cross section.
*
*   output:
*	peepi		!d5sigma/dEe'dOmegae'Omegapi	(microbarn/MeV/sr^2)

	USE structureModule
	implicit none
	include 'simulate.inc'

	type(event_main):: main
	type(event):: vertex

* NOTE: when we refer to the center of mass system, it always refers to the
* photon-NUCLEON center of mass, not the photon-NUCLEUS!  The model gives
* the cross section in the photon-nucleon center of mass frame.

	real*8 sigma_eepi       !final cross section (returned as peepi)
	real*8 k_eq		!equivalent photon energy.
	real*8 gtpr			!gamma_t prime.
	real*8 fac
	real*8 tfcos,tfsin		!cos/sin of theta between pfermi and q
	real*8 s
	
! Variables calculated in transformation to gamma-NUCLEON center of mass.
        real*8 gstar,bstar,bstarx,bstary,bstarz		!beta of boost to C.M.
        real*8 nustar,qstar,qstarx,qstary,qstarz	!q in C.M.
        real*8 epicm,ppicm,ppicmx,ppicmy,ppicmz		!p_hadron in C.M.
        real*8 ebeamcm,pbeamcm,pbeamcmx,pbeamcmy,pbeamcmz !p_beam in C.M.
        real*8 etarcm,ptarcm,ptarcmx,ptarcmy,ptarcmz	!p_fermi in C.M.
        real*8 thetacm,phicm,phiqn,jacobian,jac_old
	
	real*8 Wgev, Q2gev, E0, cthcm, sig0, fac1
	real*8 sig_iterate
	
	logical first
	data first /.TRUE./

* Calculate velocity of PHOTON-NUCLEON C.M. system in the lab frame. Use beta
* and gamma of the cm system (bstar and gstar) to transform particles into
* c.m. frame.  Define z along the direction of q, and x to be along the
* direction of the pion momentum perpendicular to q.

	call transform_to_cm(vertex,main,
     &		gstar,bstar,bstarx,bstary,bstarz,
     &		nustar,qstar,qstarx,qstary,qstarz,
     &		epicm,ppicm,ppicmx,ppicmy,ppicmz,
     &		ebeamcm,pbeamcm,pbeamcmx,pbeamcmy,pbeamcmz,
     &		etarcm,ptarcm,ptarcmx,ptarcmy,ptarcmz,
     &		thetacm,phicm,phiqn,jacobian,jac_old)

	main%thetacm = thetacm
	main%phicm = phicm
	main%pcm = ppicm
	main%davejac = jacobian
	main%johnjac = jac_old		!approx. assuming collinear boost.

!	write (6,*) jacobian,jac_old,100.*(jacobian-jac_old)/jacobian,'%'

* calculate some kinematical variables
* 'f' and 'fer' indicate fermi momenta. 'star' or 'cm' indicate CM system
* Some of the physics calculations (t,epsi,s, etc...) are redundant with
* the calculations in event.f.  We should use the main.* variables from
* complete_ev where possible.  WORSE YET, WE CHANGE UNITS OF MAIN.W,... HERE!!!

	tfcos = pferx*vertex%uq%x+pfery*vertex%uq%y+pferz*vertex%uq%z
	if(tfcos-1..gt.0..and.tfcos-1..lt.1.e-8)tfcos=1.0
	tfsin=sqrt(1.-tfcos**2)

	s = (vertex%nu+efer)**2-(vertex%q+pfer*tfcos)**2-(pfer*tfsin)**2
	main%wcm = sqrt(s)

*******************************************************************************
* Get photon flux factor (two options, see comments below).
*
* DJG,2000: Replace targ.Mtar_struck in denominator of gammaflux with more 
* general efer-pfer*tfcos, for pfer =0 this reverts to old form
*	k_eq = (s-targ%Mtar_struck**2)/2./(efer-pfer*tfcos)
*
* JRA,2001: Go back to original version - more consistent with phase space used
* in the subroutine (according to DJG - see gaskell_model.ps)
	k_eq = (main%wcm**2-targ%Mtar_struck**2)/2./targ%Mtar_struck

	ntup%sigcm1 = sig_iterate(thetacm,phicm,main%t/1.e6,vertex%q2/1.e6,s/1.e6,main%epsilon,
     >		targ%Mtar_struck/1000.,which_pion)

	sigma_eepi = ntup%sigcm1
	ntup%sigcm = sigma_eepi		!sig_cm

*******************************************************************************

* sigma_eepi is two-fold C.M. cross section: d2sigma/dt/dphi_cm [ub/MeV**2/rad]
* Convert from dt dphi_cm --> dOmega_lab using 'jacobian' [ub/sr]
* Convert to 5-fold by multiplying by flux factor, gtpr [1/MeV]
* to give d5sigma/dOmega_pi/dOmega_e/dE_e [ub/Mev/sr].
*
* Note that there is an additional factor 'fac' included with gtpr.   This
* takes into account pieces in the flux factor that are neglected (=1) in
* colinear collisions.  The flux factor is |v_1-v_2| * 2E_1 * 2E_2.
* For a stationary target, v_2=0 and so velocity term is v_1=1 (electron
* beam), and E_2=M_2.  For collinear boost, the flux factor can be expressed
* in a way that is lorenz invariant, and so can be used for lab or C.M.
* For a NON-COLLINEAR boost, there are two changes.  First, the |v| term
* becomes 1 - (z component of pfer)/efer.  Second, E_2 isn't just the mass,
* it becomes E_fermi, so we have to remove targ.Mtar_struck (which is used
* for E_2 by default) and replace it with efer.  Since the flux factor 
* comes in the denominator, we replace the usual flux factor (gtpr) with
* gtpr*fac, where fac = 1/ ( (1-pfer_z/efer)* (efer/mtar_struck) ).
*
* 	fac = 1./(1.-pferz*pfer/efer) * targ%Mtar_struck/efer
*	gtpr = alpha/2./(pi**2)*vertex%e%E/vertex%Ein*k_eq/vertex%q2/(1.-main%epsilon)
*
*	gtpr = alpha/2./(pi**2)*vertex%e%E/vertex%Ein*(s_gev-mtar_gev**2)/2./
*       >		(targ%Mtar_struck)/Q2_gev/(1.-epsi)

	fac = 1./(1.-pferz*pfer/efer) * targ%Mtar_struck/efer
	gtpr = alpha/2./(pi**2)*vertex%e%E/vertex%Ein*k_eq/vertex%q2/(1.-main%epsilon)

	peepi = sigma_eepi*jacobian*(gtpr*fac) !ub/MeV^2/rad-->ub/sr-->ub/MeV/sr

*	davesig = gtpr*sig*jacobian
*
*******************************************************************************
*
*	sigma_eepi = davesig
*	peepi = sigma_eepi
*
*	ntup%sigcm = sigma_eepi		!sig_cm

*	write(6,*)' 1 ',jacobian,thetacm,phicm,ppicm
*	write(6,*)'   ',efer,pfer
*	write(6,*)'   ',gtpr,peepi,sigma_eepi

	return
	end

*******************************************************************************	

*******************************************************************************
	real*8 function sig_iterate(thetacm,phicm,t_gev,q2_gev,s_gev,eps,mtar_gev,which_pion)

* Purpose:
* This routine calculates p(e,e'pi+)n cross sections from a fit to the data of
* Brauel et al., Z.Phys.C. 3(1979)101.
* Fit gives dsigma/dt/dphi_cm, which is returned as sig_blok [ub/MeV^2-rad].

	implicit none
	include 'constants.inc'

	real*8 thetacm,phicm,q2_gev,s_gev,mtar_gev
	real*8 sig219,sig
	real*8 ft,ftav
	real*8 q2_set,t_gev,tav
	real*8 wfactor
	real*8 sigt,sigl,siglt,sigtt	!components of dsigma/dt
	real*8 efer			!energy of target particle
	real*8 eps			!epsilon of virtual photon
	real*8 gtpr			!gamma_t prime.
	real*8 mpig                     !m_pi in GeV
	integer which_pion

*=====================================================================
c       Fit parameters.
	integer npar,ipar
	parameter (npar=16)	!number of fit parameters
	real*8 fitpar(npar),par,par_er
	save fitpar
	logical first_call
	save first_call

	data first_call/.true./
*=====================================================================

	if (t_gev.eq.0) print*,"t error",t_gev,first_call
	mpig=Mpi/1000.

*       Read fit parameters when first called.

	   if(first_call) then

	      first_call=.false.
	
	      if (which_pion.eq.1 .or. which_pion.eq.11 .or. which_pion.eq.3) then !pi-
		 open(88,file='par.mn',status='old')
	      else
		 open(88,file='par.pl',status='old')
	      end if

	      do while(.true.)
		 read(88,*,end=99) par,par_er,ipar
		 fitpar(ipar)=par
	      end do
 99	      close(88)

	      print*," Fpi-2 parameterization",which_pion
	      do ipar=1,npar
		 print*,fitpar(ipar),ipar
	      end do

	   end if		!first_call.

* Models for sigL, sigT, sigLT, sigTT  

***
* start with Tanja's Fpi-2 Parameterization
	   sigt = (fitpar(1)/Q2_gev)+(fitpar(2)/(Q2_gev**2))
c	   print*,"sigt", sigt,fitpar(1)/Q2_gev,fitpar(2)/(Q2_gev**2)

           sigl = (fitpar(5)*Q2_gev
     1	      *exp((fitpar(6)-fitpar(7)*log(Q2_gev))*abs(t_gev)))
     2        /(1+fitpar(8)*Q2_gev+fitpar(9)*(Q2_gev**2))**2
c	   print*,"sigl", sigl,fitpar(5)*Q2_gev,fitpar(6),fitpar(7)*log(Q2_gev),fitpar(8)*Q2_gev,fitpar(9)*(Q2_gev**2)

	   siglt=(exp(fitpar(10)+(fitpar(11)*abs(t_gev)/sqrt(Q2_gev)))
     1       +fitpar(12)+(fitpar(13)/(Q2_gev**2)))*sin(thetacm)
c	   print*,"siglt", siglt,fitpar(10),fitpar(11)*abs(t_gev),fitpar(12),fitpar(13)*(Q2_gev)**2

	   sigtt=(fitpar(14)/(Q2_gev**2)) * (abs(t_gev)/(abs(t_gev)+mpig**2)**2)
     1         *sin(thetacm)**2
c           print*,"sigtt", sigtt,fitpar(14)/(Q2_gev**2),abs(t_gev)/(abs(t_gev)+mpig**2)

	 if (t_gev.gt.0.) then
	   sig219=(sigt+eps*sigl+eps*cos(2.*phicm)*sigtt
     >		+sqrt(2.0*eps*(1.+eps))*cos(phicm)*siglt)/1.e0
         else
	   sig219=0.
	 endif
	  
c	  print*,"s", s_gev
c	  print*,"sig", sig219
c	  print*,eps,phicm,thetacm
	  
c now convert to different W
c W dependence given by 1/(W^2-M^2)^2
	  wfactor=1.e0/(s_gev-mtar_gev**2)**2
	  sig=sig219*wfactor

	  sig=sig/2./pi/1.e+06   !dsig/dtdphicm in microbarns/MeV**2/rad
	  sig_iterate = sig

C--->Debug
c 	  write(*,*) 's =',s_gev
c 	  write(*,*) 'wfactor =',wfactor
c 	  write(*,*) 'sig =',sig
c 	  write(*,*) 'sigL  =',sigL
c 	  write(*,*) 'sigT  =',sigT
c 	  write(*,*) 'sigLT =',sigLT
c 	  write(*,*) 'sigTT =',sigTT
c 	  write(*,*) '-----------------------------------------------------'
C--->Debug

C--->Debug
c	  write(*,*) 'sig =',sig
c	  write(*,*) '====================================================='
C--->Debug

	  return
	end


	real*8 function sig_blok(thetacm,phicm,t,q2_gev,s_gev,eps,mtar_gev,which_pion)

* Purpose:
* This routine calculates p(e,e'pi+)n cross sections from a fit to the data of
* Brauel et al., Z.Phys.C. 3(1979)101.
* Fit gives dsigma/dt/dphi_cm, which is returned as sig_blok [ub/MeV^2-rad].

	implicit none
	include 'constants.inc'

	real*8 sig219,sig
	real*8 sigt,sigl,siglt,sigtt	!components of dsigma/dt
	
	real*8 mrho_emp
	real*8 fpi,fpi2

	real*8 thetacm,phicm,t,q2_gev,s_gev,eps,mtar_gev
	integer which_pion

* Fits to p(e,e'pi+)n cross-sections
* HPB: cross sections for pi-fits to Brauel's n(e,e'pi-)p
* HPB: dsigma/dt cross sections at W=2.19 and Q^2=0.70 MODIFIED BY HAND!!!

	  sigl = 27.8*exp(-11.5*abs(t))
	  sigt = 10.0*(5.*abs(t))*exp(-5.*abs(t))
	  siglt= 0.0*sin(thetacm)
	  sigtt= -(4.0*sigl+0.5*sigt)*(sin(thetacm))**2

	  if (which_pion.eq.1 .or. which_pion.eq.11 .or. which_pion.eq.3) then	!pi-
	    sigt =sigt *0.25*(1.+3.*exp(-10.*abs(t)))
	    sigtt=sigtt*0.25*(1.+3.*exp(-10.*abs(t)))
	  endif

* GMH: Now scale sigl by Q2*pion_formfactor
* HPB: parametrization of pion formfactor in the region 0.5<Q2<1.8

	  mrho_emp = 0.712   !DETERMINED BY EMPIRICAL FIT TO FORMFACTOR (GeV/c**2)

	  fpi=1./(1.+1.65*q2_gev+0.5*q2_gev**2)
	  fpi2=fpi**2

* HPB: now convert to different Q^2
* HPB: s_L follows Q^2*Fpi^2; s_T and s_TT go as 1/(0.3+Q^2)?
* HPB: factor 0.1215 therefore is value of q2*fpi**2 for q2=0.7

	  sigl=sigl*(fpi2*q2_gev)/0.1215
	  sigt=sigt/(0.3+q2_gev)
	  sigtt=sigtt/(0.3+q2_gev)

	  sig219=(sigt+eps*sigl+eps*cos(2.*phicm)*sigtt
     >		+sqrt(2.0*eps*(1.+eps))*cos(phicm)*siglt)/1.e0

* GMH: Brauel scaled all his data to W=2.19 GeV, so rescale by 1/(W**2-mp**2)**2
* HPB: factor 15.333 therefore is value of (W**2-mp**2)**2 at W=2.19

	  sig=sig219*15.333/(s_gev-mtar_gev**2)**2
	  sig=sig/2./pi/1.d+06   !dsig/dtdphicm in microbarns/MeV**2/rad

	  sig_blok = sig

	  return
	end

	
