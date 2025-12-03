      PROGRAM PTC
C TODO 

c bug: p_norad is really identical to p_rad. Don't use p_norad
      
c rerun with shp>0.02
c change left ct cut to be -12, not -16 for accidentals Sp18
      
c check why such a large spread in dummy subtraction for LH2 but not LD2!

c effect of Fermi motion on LD2 pt distributions

c see if product of two Gaussians is Gaussian in 3D

c see what adding two Gaussians is like. Rho decays.

c check sum,diff in two regions of pt

c rerun SIMC with slightly different target thicknesses
c or correct results here (see makesimcfiles.f)

c rerun SIMC with improved SIDIS model

c is HMS cer eff low on one side due to light leak
c in fall 18?

c write paper on R versus z, mmpi from KLT. Add pt dep.

c K, p data/simc don't agree in some
c bins in pt,phi,z: causes bad agreement
c for SHMS moved by 2 deg. For runs 4890 and 4871,
c the problems seem to all be in 4890 at the highest
c z bin (18 or 19). This might be becuse no RF and
c wide TOF, so pions leak into K, p sample. Only
c have aerogel and hg. 

c check treatment of K+ contam. for early KLT runs
c with no RF and bad TOF.

c study e0 from the,thp HEEP coin runs

c why runs 3998-4004 15% lower than same kin. in fall18
c (runs 5913)? Can't find any reason.

c plot diff. ratio for different bins in pt

c plot trk eff versus rate for paper

c write up pion MM peak versus dp/p in SHMS. Include
c not only width, position, but also cross section as well.

c look at width of pi and omega peaks versus HSMS delta
c with two sets matrix elements

c try different correction formulas for DSS

c Shouldn't integral of FF increase with nu???
c maybe in paper of Berger?

c post exclusive peak study. But first add HMS to study.

c fix bad xhi2/df for agreement of protons at low momentum, big angle
c maybe ep elastic rad. tail?

c look at protons versus X_F/(1-x) for scaling

c analyze data for e p - p omega (see mm.pdf)

c analyze big HEEP scan from Fpi, as well as
c Delta and excl. xsections

c read in COMPASS adn HERMES to results plot

C ANALYZE AL/D RATIOS AND ADJUST SIMC

c write paper on Beam SSA for KLT runs versus pt in 3 regions of mmpi


cccccccccccccccccccccccccccccccccccccccccccccccccccccccc
C CHECKS DONE

c check why kin15 doesn't have same sum,diff results as other
c low W points. Actually: ok within error

c try FF ratio from JAM. Also d/u ratio. See jamtest.f
c include inclusive p/d ratios to constrain d/u, delu
c check that indeed p(10)=d/u and p(19) csv term are
c highly correlated.

C PION ABSORBTION CORRECTIONS. Put in as syst. error
c 1+/-1%

c study of pair-symmetric backgrounds: use e+ in SHMS

c measure actual d/p inclusive ratios and compare with f1f2in09

c more careful stuy of kaon contamination
c (various dp/p bins, bigger input dp/p range, check of model)
c done, but study ytar distributions, maybe put cuts?
c more careful treatment of kaon and proton ID
c (improve stored RF or CT spectra, then analyze)

c change multiplicies in table to be realive to sige, not 4u + d etc
c this has big impact on extracted CSV!

c fix treatment of pi-Delta for mmpi<1.3 multiplicity

c look at Varden's DVM  results when they come.

c get fraction of pions that come from kaon decays.
c and subtract.
 
c dummy runs typically 30% low in SIMC compared to data
c especially for KLT runs like 4940. Fixed by using
c real data instead of SIMC

c in excl fit. cos(phi) bad for 3rd KLT point (W=2.2)
c phi distrib. for ikin-37 looks strange at phi=0
c use new fit to imporve ikin=1,2
c why ikin=3,4 so low?
c can sigLT for pi- be constrainedd to not get so big?
c look at fit relative to e- in SHMS

C KLT EXCL. Q2=3 W=2.2 LOW AND HI HMS TH DON'T AGREE!
C ALSO WHY DOSN'T IKIN=3,4 AGREE WITH REST?
C ALSO, LOOKS LIKE NEED TO MAKE T-SLOPE CHANGE WITH Q2
C ADD MORE BINS AT COSTHCM NEAR 1.0 TO MAID TABLES
C SCALE EXCLFIT BY (W-AM) FOR W<1.9

C DO KAONS MAKE SIGNALS AS PION (FROM DECAYS)? IN HG?. CHECK USING RF
c Do kaons that decay to pions have weired pdelta...?

C WHY ARE IKIN=3,4 LOW, ESP. HIGHER Z? MAYBE BECAUSE
C IS HIGHEST W? EPSILON?

C not done: ADD CAHN COS2PHI TERMS TO FITS, MODIFIED BY
C BOGLIONI, MELIS, ADN PADUKIN FORMULAS

C USE SHE, CT OR RF SPECTRA IN PTA ANALYSIS.
C ADD SHP SPECTRA

c generate kaon decay prob versus dist. for different momentum
c bins. Amound in hut should change by factor of 2 from 2 to 4 gev

c why sighad model not agree with average from SIMC in pta.f
c (see ptaw.multpi). fixed

c optimize aerogel cut for protons. Need <2.5 or <4?
c clearly <1 is too tight. See ptc.rf. Decided on <3.5.
c see if original matrix elements for HMS make
c ratios of fnorm in ptm.f for ikin and ikin+1 closer to 1
c (now they are like 1.05!)
c make simc files with no decays for proton anaysis
c and add into counts files
c more studies of acceptance
c kaon contam. from decays. Fix SIMC to use drift for
c first section, not trnasp.
c put sigcc and sigcm both for rad, norad, and both pi and K
c and proton
c try including kaons with P>2.7 also
c put rho back in (case 8 now: values in V16))
c add SIDIS protons
c add kappa, rho strenght to global fits
C USE AVKIN FOR Z IN FITTING, NOT Z CENTRAL.
C IMPROVE KAON ID ( ADD RF)
c in ptb, check if it is u or x*u etc in bfit
c (ie should csv term be scaled by x or not)?
c also in bit, use sighad from latest SIMC in simcmodel
c also, try using multiplicites from table

c make pta output average multiplicity (and sigma)
c make pta output kaon and proton multiplicites too
c fix about 10 bad runs in ratew.pdf. No worries: just *****
c lowered  HG cut to 2.8 GeV (was 3.0) 12/2021
C ADD BRUELL DATA
C ADD CT SEPARATED DATA
C TRY NEW PTRACKING PARAMS FOR KLT...
C IS PHI* BACKWARDS FOR EXCL., DELTA? no
C STUDY EVENS WITH SMALL SHE: MISSING CAL.?
C MAY NEED FIDUCIAL CUTS AT HMS CAL. IN BOTH DATA, SIMC
C MUST USE SHP<0.8 CUT: GET EFF. VERSUS P
C PUT IN 2.3% / 100 MUA BOILING CORR. FROM DM
C THEN REFIT TRIG1 RATE SLOPE
C NEED TO PUT SAME CORR2 INTO PTA.F
C WHY RUNS 3700 BIGGER THAN SAME KINEMATICS
C  NEAR RUN 3490 OR WHATEER (REPEATED)
C RE-CHECK SP18 AND FALL18 CROSS NORM. 
C FIX SIMC EXCL. ETC. ON PTCRAT RAT2 PLOTS
C HMS MISPOINTING HELP PHIE DISTRIBUTION COMPARED SIMC/
C PION MM AT 0.94 FOR SPRING18 OK
C OMEGA MM PEAK IS AROUND 0.77 (SHOULD BE 0.78)
C LOOK AT OMEGA PEAK AT HIGH PDELTA. LOOK GOODC
C RUNS 5600-17 HAD P=2.58 BUT SHOULD HAVE BEEN 2.53
C SEE IF CER TIME CUT CAN REDUCE PRORON CONTAMINATION. ANSWER: NO
C DO KAON-LT RUNS AND SPRING19 CSV RUNS
C WHY BIG L / R ASSYMETRY IN RANDOMS IN SP18?? 
C DUE TO TRIG. INEFFICIENCY
C CHECK OF DETECTOR CALIBRATIONS, ADC WINDOWS, ETC.
C SEEMS TO BE BIG DEPENDENCE ON CURRENT SPRING18
C  SEE 3433-37, 3469-72. FIXED WITH LARGE CORR2.
C PROBLEMS WITH RUNS 3421 AND 23 COMPARED TO 25...
C FIX PROBLEMS WITH CURRENT_CUT/CURRENT, DT RUNS 4914-37
C CAREFUL TREATMENT OF KAON DECAYS IN SIMC.
C ADD PI+PI0 CHANNEL
C FIX PROBLEMS WITH EXCL. MODEL AT LOWER W
C FIX HUGE FLUCTUATIONS IN EXCL, RHO, DUMMY 3696-99 FOR EXAMPLE
C RERUN SIMC WITH 4X MORE SIDIS
C FIX NEG SIMC XSECTIONS.
C CHANGED TO DDS FRAG. FUN. IN SIMC FOR PI, K. MUCH BETTER FOR K
C SEE IF HKDS WORKS BETTER THAN DSS FRAG. FUN.
C YES, CHANGED TO HKNS FOR PI, KEPT DDS FOR K
C FIXED REASON PION MM PEAK WAS A BIT LOW?
C FIXED SLOPE IN PHICM AT PI BY ADDING HMS PHI OFFSET
C DON;T ADD IDENTICAL RUNS TOGETHER FIRST FOR CNT FILES
C KLT WHY NEG. PPI<-12 NOT WORKING? NOW IT WORKS.
C ARE RUNS 3700 ETC 2% HIGHER THAN RUNS 3400 (TWO KIN.) NO.
C STUDY EP ELASTIC
C INCLUDE R IN SIDIS MODEL
C PUT WEDGE IN SIMC. HAD NO EFFECT ON RUN 3537
C INCLUDE EFFIC OF CERE AND HGCER IN SIMC COUNTS
C CHECK MODEL FOR PI- DELTA++
C STUDY NOBLE GASS DETECTOR. DECIDED NOT TO USE IT.
C MATCH CAL. X/Y CUTS IN DATA, SIMC
C LOOK FOR HEAVY PHOTON IN E+E-: SEE MEE.PDF NONE OBVIOUS
C IN PTA.F, STORE SIDIS, EXCL, ENDCAP, RHO SEPARATELY EACH BIN
C PLOT RATIOS OF THESE TO SIDIS
C FINE TUNE THE THREE SETS OF CUTS
c see if any runs have elastic peaks in single-arm
c (use randoms). None found.
C CUT1: NO HG CUT, BUT KEEP CT AND RF SPECTRA
C PUT RF CUT IN ALL 3 VERSIONS (LOOSE FOR FIRST ONE)
C ADD MX2 CUT AND VERSION 2 AND 3 (SIMC TOO!)
C CORRECT EXCLUSIVE FOR DUMMY
C STUDY HG EFFICIENCY VERSUS P. TRY CUTTING
C OUT HOLE IN (X,Y). 
c use D. Mack LT correction for un-buffered mode.
c - decided not relevant for our cases
c study koans in aerogel: find best P to start using HG
c - decided on 3 gev
c use different threshold for 1.011! Not needed.
c find HG eff. at different radii. Only cut eff. < 30%
C INCLUDE FPI AND CT IN EXCL. FIT
C GET THE SIG0'S WORKIN
C ANALYZE E IN SHMS EVENTS
C CHANGE HG TO BE CUT IN (X,Y).
C FIT FOR PI-
C LOOK AT CASES OF HUGE EXCL. TAIL, SUCH AT
C RUNS 5580-5600 (30 DEG. POS. POL.). Now <13% with new fit
c Eric fit 996 almost same as fit 995 in SIMC, so didn't switch
c fix iacc=3 for ikin=1-7, 55-56 (rf?
c why bump at proton mass in delta spectrum??
c also, related, looks like pi- Delta++ too big.
c fix normfac for Al in exclusive
c fix normfac for Al in SIDIS
c (see runs 3970, 35xx)
C INCREASE ERRORS ON CSVFF ACCORDING TO CHISQ?
C IN PTA, SP18 / FALL18 LOOKS GOOD UP TO ABOUT 3900,
C THEN SP18 IS ABOUT 8% LOWER THAN FALL18. FIX.
C ALSO GET AVERAGE SIGHAD FOR PI_NORAD: PUT IN V16
C PUT KAONS IN V17, V18
c use charg to get more accuate v1min in pta.f
c (copy from ptap.f)
c subtract dummy for all xsections 
c run ptc with wide cuts for KLT runs for RSIDIS
c put in Hourglass cut at SHMS focal plane
C IMPROVE SIMC ACCEPTANCE at low delta 
C STUDY AEROGEL EFF. FOR INDEX 1.011
c need to subtract acidentals from histograms and
c also apply rf cut.
c added cut W>1.8 GeV
c check lumi runs with Hem's root files
c More sutdies of pions that decay
c study of pion punch-through of front collimator
c check if rate def. to SHMS cal eff. due to using
c etottrack norm not etracknorm. Tried, but etracknorm 
c is not in rootfiles. But, effic. changes by <1% with
c current scan runs, so can absorb into ad hoc corr.
c fix runs with no dummy runs in pta
c try 20.1 m instead of 21 m for cointime p, K corr.

 
      IMPLICIT NONE
      INTEGER I,J,K,KK,KKK,IRUN,IT,ITLAST,ITRIG,ICC,izm,iptm,iphim,iqm
      integer j1,j2,j3,xaeroh(20),yaeroh(20),jp,ippi
      INTEGER IMPS,INEG,IPOS,ICOIN,ITPREV,SUMI(20),icasep,imc,immm
      INTEGER ACCEP(20,30,70,30),LOEDGE(20),HIEDGE(20)
      INTEGER ACCEPW(4,30,100,100),idp,nplt
      INTEGER LO_SIMC_HMS(30,30),HI_SIMC_HMS(30,30),IRUNLAST
      INTEGER DPXYZH(3,15),F222,idlt,imm
      real*8 MMPI2H(61,101,2),mmpfh(61,101,2),mmp,mmpfhj(101,2),mmk
      REAL ACCEPC(20,30,70,30),AVY1,AVY2,RAT
      REAL ACCEPZ(20,30,70,30),rfxy(16,41,2)
      REAL XCER, YCER, HGHXY(20,6,20,10),aeroeff(41,2)
      real hghr(20,20,20,10)
      integer okacc(2,30,70,30),totdiff(20),im,aerotray
      real*8 simcphicm,simct,simcthcm,t,xycer,mmpi
      character*80 fname
      character*100 sstring
      real*8 ngcerh(16,10) 
      real*8 weight,normfac,sum1,sum2,corr,tcut,e0_e,e0_p
      real*8 dpe,dpp,dppcorr,dthe,dthp,dphie,dphip,pe,the,pp
      real*8 dpeo,dppo,dtheo,dthpo,dphieo,dphipo
      real*8 thp,chrg,tefe,tefp,dt,ctpinew,thp_rad,th,bcm1
      real*8 dpp_init, xptar_init, yptar_init,yt_orig,yrast
      real*8 zk,phicmk,cthcmk,ptk,sumacc(10,2),r1,r2,r3,r4,r5
      real*8 cthcmp,ptp,phicmp,thsimc,phisimc1,phisimc2
      real*8 sum1m(20),sum2m(20),sratem(20),mmpi2_cent_h
      real*8 mmpi2_cent_s,rex,rexer,tcutk,decdist,m2final
      real*8 sratemer(20),sratemx(20,9),sratemxer(20,9)
      real*8 sum1z(20),sum2z(20),xmaxaero,ymaxaero,aeromin
      real*8 sratez(20),sratezer(20),fstate(8,30,5),fstatek(10,30)
      real*8 eff_she, eff_aero, eff_ct, eff_shp,hgpmin,summk(10)
      real*8 wcut, mmpi2cut
      real*8 sratezx(20,9),sratezxer(20,9)
      real deldpph(100,17),deldpeh(100,17)
      real delxpph(100,17),delxpeh(100,17)
      real delypph(100,17),delypeh(100,17)
      real*8 m_mu/.105/,m_pi/0.139/,m_k/0.495/
      integer ipart,idist,ict,cth(600)
      integer cereff(30,20,20,3),hgeff(30,20,20,9)
      real*8 avnfac(10),sum3tot(10)
      real*8 ctpi,ctk,ctp,cere,cerng,ceraero,cerhg
      real*8 pre,prp,she,shp,avrter(20),eprot,aerot,aeront,evtype
      real*8 rate1,pipeak,kpeak,sum3,pav(2),thav(2),fcoin,avrt(20)
      real*8 savrt,savrter,timecorr,corr2,pgdsceff,hgdsceff,corr4
      real*8 toff(3000:7000),offset,kin(7000,5),savrtnox,savrtnoxer
      real*8 savrtwrho,savrtwrhoer,sum5
      real*8 rate(7000),rateer(7000),fry,totchi2(10),totdf(10)
      real*8 ratem(20),ratemer(20),pirm(20),piaccm(20),corr3
      real*8 pirmz(20,2),piaccmz(20,2)
      real*8 ratez(20),ratezer(20),pirz(20),piaccz(20),bcmcorr
      real*8 avrate(8,6,15), avrateer(8,6,15),rt(95,20)
      real*8 rter(95,20),chi,df,w,w2
      real*8 savrate(8,6,15), savrateer(8,6,15)
      real*8 savratenox(8,6,15), savratenoxer(8,6,15)
      real*8 savratewrho(8,6,15), savratewrhoer(8,6,15)
      real*8 srt(95),srter(95),aeroth(40,16)
      real*8 avkin(2,16,15,20,9)
      real*8 xexit,yexit,crad,voffset,hwid
      real*8 dpe_init, xptar_e_init, yptar_e_init,yt_e_orig
      real huth(50,50,9,2),huts(50,50,9,2)
      integer pexit,hexit,mmpi2hs(20),icase,isp
      real*8 avratexz(4,4,4,9),avratexzer(4,4,4,9),gdsc
      real*8 srate(7000),srateer(7000),curmin,curmax
      real*8 sratex(7000,9),sratexer(7000,9),normfacx
      real*8 current,hbeta,pbeta,hztar,pztar,hxfp,hyfp,hdpfp,hypfp,sum4
      real*8 pxfp,pyfp,pxpfp,pypfp,ppprev,thpprev,sigsv(10),ptkeff
      real*8 ep0prev,the0prev,bcmhms(8000),piaccH,piaccL,x,q2,the0r
      integer ctpih(40),ctkh(40),cteh(40),itsv(7000),ix,iy,ctkhf(40)
      integer ctpihfa(40),ctph(40),ctpihw(50,10),yth(19,16),ii,jj,idx
      real*8 pir, piacc, ratec(7000), ratecer(7000), thplast,ep0,the0
      real*8 pir4, piacc4, ratec4(7000), ratecer4(7000)
      real*8 pir5, piacc5, ratec5(7000), ratecer5(7000)
      real*8 fact,rateck(6,20),ratecker(6,20),rateak(6,20)
      real*8 rateckt(6,20),rateakt(6,20),rateckter(6,20)
      real*8 ratesk(100,20),ratesker(100,20),xaero,yaero
      real*8 rateskt(6,20),pxyh(20,20),pxyhs(20,20)
      real*8 pirk(6,20),piacck(6,20),pirks(100,20),piaccks(100,20)
      real*8 pirkt(6,20),piacckt(6,20),pirkst(6,20),piacckst(6,20)
      integer dpph(100),dpeh(100),dthph(100),dtheh(100),doit,nrtc
      integer dpphistrun(15),ythistrun(15),icp
      real ythist(44,15,5),ctphff(41)
      integer dphieh(100),dphiph(100),ctpihf(40),nrt,ikin,itp,ith
      integer hgh(30,50),ctrfrun(21,4),ctrfrn(10,20,4),xyaeroh(4,21)
      real  hghp(30,50,7),tefesv(9000,3),tefpsv(9000,3)
      integer ngh(16),ctphf(40)
      real*8 hghrun(17),hghtot(15,17),hghrunp(17)
      integer cerefff(30,20,20,3,3),hgefff(30,20,20,6,3)
      integer iptp,ithp,iphip
      real*8 ceff, heff, denom, numer, wcorr
c counts in bins of pt,phi,z,xq2,pol
      integer ixq2, ipt,iphi,iz,ihel,irr,iq2bin,ixbin
      integer cnts(2,16,15,20,40),iselec,izxtra
      integer cntsacc(2,24,20,20,2)
      real*8 cntsaccmc(2,24,20,20,2)
      integer cntsm(2,16,15,20,40)
      real*8 cntsdpmc(2,100,2),cntsdpmco(2,100,2)
      real*8 avkinm(2,16,15,20,9),cntsmcm(2,16,15,20,30)
      integer cntsct(20,40,4),cntsshe(20,40,2)
      integer cntsctk(20,40,2),cntsctp(20,40,2)
      integer cntscte(40,2),cntsctppi(16,60,4)
      integer cntsrfppi(16,40,2)
      real*8 sigdp(2,100),sigdper(2,100),shmuonh(16),cte
      real*8 sigdpo(2,100),sigdpoer(2,100),muons(2)
      integer cntsmmpi(50,10),cntsz(50,10),izz
      real*8  cntsdp(2,100,2)
      integer cntse(2,16,15,2),cntseh(2,16,15,8,2)
      integer cntsemch(2,16,15,10)
      real*8 cntsemc(2,16,15,3),cntsew(20,8),cntsewmc(20,3)
      real cntsmc(2,16,15,20,30),cntsmcmmpi(50,30),cntsmcz(50,30)
      integer ispireal, ispiacc, iskreal, iskacc, ispiaccL,ispiaccH
      integer ispreal, ispacc,errcode
      real*8 sumcnt(3,2),sumcntsf(3,2),avsinphi,avsinphier
      real*8 sumcntex(3,2),sumcntexsf(3,2),sumcnts(2,2)
      real*8 rtc(99),rtcer(99),avrtc,avrtcer,ztnew,zdnew
      real*8 pplast,Empi,Emk,Emp,phi,mmpi2,mmk2,mmp2,hmean,pmean
      real*8 amp/0.9383/, ampi/0.1396/, amk/0.494/
      real*8 e0,ep,ppi,p_x(2),p_y(2),p_z(2),thpi,sigcc,sigcm
      real*8 v1,v2,v3,elreal
      integer mmpih(20,12),phih(20),mmph(20,14),eprh(14,21)
      integer mmpht(20),mmphs(20),mmpihs(20),mmpihsa(20)
      integer mmphf(400),mmphfs(400),mmpheta(400),ipm,betah(2,20)
      integer ps1,ps2,ps3,ps4,ps5,p6
      real*8  cereh(12,16),cerepih(12,16)
      integer sheh(16,2),meeh(320,2),sh2h(16),prh(16,2),ctev(60,6,2)
      integer sheht(50,3)
      integer mmpihd(2,40,20),sh2hrun(16)
      real*8  shh(16,4),meephi(20,2,2),meeht(320,2,2,5)
      real*8  aeroh(16),aerohp(16),rfhp(10,21,12)
      integer hnrf,pnrf,i1,i2,i3,i4,i5
      real shht(130,2)
      integer cthist(20,4,40),ctrfhist(20,4,40,2),ip,imax
      integer goodhodoh,goodhodop,mmpihfs(50)
      real*8 heffh,heffp,fptimeh,fptimep,okhms,okshms
      real*8 rexlo(10)/0., .01, .02, .04, .07, .12, .18, 0.3, .4, .5/
      real*8 rexhi(10)/  .01, .02, .04, .07, .12, .18, 0.3, .4, .5, 1./
      real*8 epv(4),p1vp(4),phicm,cthcm,pt,pt2,nu,zpi,mee,zh,zp,zs,zd
      real*8 hgtry,pgtry,prf,hrf,pfpt,hfpt,pfptc,pfptcr,pfptcc(10)
      real*8 hdcx,hdcxp,hdcy,hdcyp,pdcx,pdcxp,pdcy,pdcyp
      real*8 hfptc,hfptcr,hfptcc(20),dpshmslo,dpshmshi
      real*8 dphmslo,dphmshi,dthhms,dthshms,dphihms,dphishms
      real*8 dthhmsmin,dthshmsmin,dphihmsmin,dphishmsmin
      real*8 dthhmsmax,dthshmsmax,dphihmsmax,dphishmsmax
      real*8 e0last,ep0last,the0last,dtav,chrgtot,pfptck,pfptcp
      real*8 dtx,chrgx,tefex,tefpx,corrx,corr2x,corr3x
      real*8 tefeav,tefpav,corrav,corr2av,corr3av,pfptce,pfptcer
      real*8 pfptckr,pfptcpr
      character*900 string
      character*80 title
      integer irate_e,irate_p,ielclean,ielcleanp
c 2 hodo planes, 100 x or y bins 3 y or x bins
      integer ctx(4,100,3,10),ctrf(5000,2)
      integer cty(4,3,100,10)
      real*8 xpad,ypad,rff,rfff,tmp
      integer npt,testing,usenewacc,ilo(4),ihi(4)
      real*8 ycoeff(10),deltaph(20,15,2,5)
      real*8 del(100000),yfp(100000),ypfp(100000),
     >  ytarg(100000)
      common/rastdatacmn/del,yfp,ypfp,ytarg,npt
      integer simcevents,doaccstudy,accv(70)
      real*8 pi,phi0e,phi0p,xoff,xpoff,hwsign
      real*8 dpz, dpn, dthz, dthn, dphiz, dphin, yn, yz
      real*8 dpzp, dthzp, dphizp, yzp
      integer pxdist(100),pydist(100,7),sumk(20)
      integer epelas,settoanalyze
      logical skipok,addruns,doingdelta,skipcal,skipexit,okkaon
      logical use_hms_recon,use_shms_recon,hasstar
      logical useHB/.false./,doingklt
      logical noacccorr
      
C HMS Calorimeter position
	real*8 hcal_1pr_zpos,hcal_2ta_zpos,hcal_3ta_zpos,hcal_4ta_zpos
	real*8 hcal_left,hcal_right,hcal_top,hcal_bottom
        real*8 xcal,ycal,hcalh(0:10,0:1),scalh(0:10,0:1)
        integer hcal,scal,iw,scalsv
	parameter (hcal_1pr_zpos = 338.69)
	parameter (hcal_2ta_zpos = 349.69)
	parameter (hcal_3ta_zpos = 360.69)
	parameter (hcal_4ta_zpos = 371.69)
	parameter (hcal_left     =  35.00)	!actual size of calorimeter
	parameter (hcal_right    = -35.00)
	parameter (hcal_top      = -69.66)
	parameter (hcal_bottom   =  60.34)
C SHMS Calorimeter position
	real*8 scal_1pr_zpos,scal_2ta_zpos,scal_3ta_zpos,scal_4ta_zpos
	real*8 scal_left,scal_right,scal_top,scal_bottom
	parameter (scal_1pr_zpos = 292.6)
	parameter (scal_2ta_zpos = 306.4)
	parameter (scal_3ta_zpos = 323.7)
	parameter (scal_4ta_zpos = 341.0)
	parameter (scal_left     =  63.00)
	parameter (scal_right    = -63.00)
	parameter (scal_top      = -70.00)
	parameter (scal_bottom   =  70.00)

c target endcaps/walls in mm. Total about 0.09 gm/cm**2
      real endcap_entr(2)/0.150, 0.130/
      real endcap_exit(2)/0.191, 0.188/
      real walls(2)/0.219, 0.184/
c For LH2, that's between 71.5 - 72.87 kg/m^3 (~1.2% variation), and for 
c LD2 it's between 165.1 - 168.7 kg/m^3 (~2.2% variation).
      real targden(2)/0.0723, 0.167/
      real tlen(2)/ 10.00, 10.00/
c density of Al used
      real alden/2.81/
c dummy foils in gm/cm2
      real dummy(2)/0.1816, 0.1815/
c so dummy subtraction factor is 
c h: .034 * 2.8 / 0.363 = .262
c d  .032 * 2.8 / 0.363 = .245
c if xsection same for Al and d, then about 0.09/1.6 = 5.5% from endcap

c if want identifcal runs added together
      addruns = .true.

c if want to make code run fast, skkip simc events
      simcevents=1000000000

c cuts used for inelastic pions versus z,pt,phi
      wcut = 2.0
      mmpi2cut = 2.56

c standard value is 1
c running wide acceptance this time. opened up
c limits in accminmax. Put back when done. if skipok is true
cxxx      settoanalyze=1
      settoanalyze=2

c if want no acccorr (only affect /group/...Cntdata files)
      noacccorr=.true.    
c      noacccorr=.false.
      
! skip cal. position check?
c this now includes hodo plane 2 check!
c never make true as no hut cuts in SIMC now
      skipcal=.false.

c skip spectrometer exit check?
      skipexit=.false.
c      skipexit=.true.

c use hms recon from simc?
      use_hms_recon=.false.
c      use_hms_recon=.true.

c use shms recon from simc? Never set true: no hut cuts in SIMC
      use_shms_recon=.false.
c      use_shms_recon=.true.
c not using dpp_init instead of dpp... in SIMC pi_rad

c cuts. Mark recommends -12 to 25 for SHMS, -8 to 10 HMS
c set 2 has tighter cuts on coin time also
      if(settoanalyze.eq.2) then
       dphmslo = -8.
       dphmshi =  8.
       dpshmslo = -10.
       dpshmshi =  20.

c       dphmslo = -8.
c       dphmshi =  10.
c       dpshmslo = -15.
c       dpshmshi =  20.
c note these are now in subroutine accminmax
       dthhms = 0.060
       dthshms = 0.045
       dphihms = 0.022
       dphishms = 0.028
cxxx       skipok = .true.
       skipok = .false.
      endif

c wider open limits, but still cut low HMS, high SHMS
      if(settoanalyze.eq.1) then
       dphmslo =  -9.
       dphmshi =  11.
! for studies of acceptance
c       dphmslo =  -11.
c       dphmshi =  13.
c based on mm.top, this range is ok as far as resolution goes
c also look at various dptest.pdf
       dpshmslo = -15
       dpshmshi =  18.
c for studies of acceptance
c       dpshmslo = -20
c       dpshmshi =  28.
c actual limits now set in newacc subroutine
c note these are now in subroutine accminmax
       dthhms = 0.050
       dthshms = 0.045
       dphihms = 0.022
       dphishms = 0.028
c if true, this skips check on okhms and okshmsuseHB
c always make true as okhms, okshms not working right
c for SHMS < -12%. Doesn't make much diff. at all for HMS
c      skipok = .true.
c should work ok now
        skipok = .false.
      endif

c to compare with Hem
      if(useHB) then
       dphmslo = -8
       dphmshi =  8
       dpshmslo = -10.
       dpshmshi =  20.
      endif
! define spectrometer angles to match SIMC
      pi=3.141592653589793
      phi0e = 1.5 * pi
      phi0p = 0.5 * pi

c 
      testing=0
      if(testing.ne.1) then
       open(unit=7,file='ptc.chist')
       open(unit=8,file='ptc.chistk')
       open(unit=188,file='ptc.chistp')
       open(unit=20,file='ptc.ctpk')
       open(unit=14,file='ptc.phi')
       open(unit=15,file='ptc.mmpi')
       open(unit=16,file='ptc.out')
       open(unit=17,file='ptc.chistf')
       open(unit=18,file='ptc.rate')
       open(unit=382,file='ptc.prate')
       open(unit=19,file='ptc.chiste')
       open(unit=31,file='ptc.mmp')
       open(unit=32,file='ptc.mee')
       open(unit=33,file='ptc.chistkf')
       open(unit=36,file='ptcctb.top')
       open(unit=38,file='ptc.ctxy')
       open(unit=43,file='ptc.rf')
       open(unit=44,file='ptc.rff')
       open(unit=45,file='ptc.ztar')
       open(unit=46,file='ptc.beta')
       open(unit=47,file='ptc.aero')
       open(unit=48,file='ptc.sh')
       open(unit=49,file='ptcjpsi.txt')
       open(unit=51,file='ptc.cere')
       open(unit=52,file='ptc.she')
       open(unit=53,file='ptc.sh2')
       open(unit=54,file='ptc.ng')
       open(unit=55,file='ptc.mrate')
       open(unit=56,file='ptc.zrate')
       open(unit=57,file='ptc.shmuon')
       open(unit=59,file='ptc.pr')
       open(unit=81,file='ptcdpphist.txt')
       open(unit=82,file='ptcythist.txt')
       open(unit=85,file='ptc.eprh')
       open(unit=91,file='ptc.cmpsimc')
       open(unit=93,file='ptc.hg')
       open(unit=181,file='summedrunlist.txt')
      endif
      if(testing.eq.1) then
c plot ratios data/simc
       open(unit=222,file='cmpsimc.top')
      endif
      write(222,'(''set device postscript'')')

      curmin=1000
      curmax=0.


       do kk=1,40
        do icc=1,16
         aeroth(kk,icc)=0.
        enddo
       enddo

c read in cere and hg eff for three time periods
      do ip=1,3
       if(ip.eq.1) open(unit=5,file='cereffsp18.txt')
       if(ip.eq.2) open(unit=5,file='cerefffall18.txt')
       if(ip.eq.3) open(unit=5,file='cereffsp19.txt')
       sum1 = 0.
       sum2 = 0.
       sum3 = 0.
       do ipt=1,30
        do iphi=1,20
         do ith=1,20
          read(5,'(3i3,3i5)') iptp,iphip,ithp,
     >     (cerefff(ipt,iphi,ith,j,ip),j=1,3)
          sum1 = sum1 + cerefff(ipt,iphi,ith,1,ip)
          sum2 = sum2 + cerefff(ipt,iphi,ith,2,ip)
          sum3 = sum3 + cerefff(ipt,iphi,ith,3,ip)
         enddo
        enddo
       enddo
        write(16,'(''cereff'',i2,2f7.3)') ip,
     >   sum2/sum1, sum3/sum1
       if(ip.eq.1) open(unit=5,file='hgeffsp18.txt')
       if(ip.eq.2) open(unit=5,file='hgefffall18.txt')
       if(ip.eq.3) open(unit=5,file='hgeffsp19.txt')
       do ipt=1,30
        do iphi=1,20
         do ith=1,20
          read(5,'(3i3,6i5)') iptp,iphip,ithp,
     >     (hgefff(ipt,iphi,ith,j,ip),j=1,6)
         enddo
        enddo
       enddo
      enddo

c read in read in new acceptance limits from 4/20/20 based
c on fall18 runs (output ptc.accep)
       usenewacc = 1
       open(unit=5,file='ptc.goodaccep')
       do ipt=1,30
         do iphi=1,30
          read(5,'(10i4)') i1,i2,ilo,ihi
          do ith=1,70
           do irr=1,2
            i3 = okacc(irr,ipt,ith,iphi)
            okacc(irr,ipt,ith,iphi)=0
            if(ith.gt.ilo(2*irr-1) .and.
     >         ith.gt.ilo(2*irr) .and.
     >         ith.lt.ihi(2*irr-1).and.
     >         ith.lt.ihi(2*irr)) then
              okacc(irr,ipt,ith,iphi)=1
            endif
c            write(6,'(2i2,20i3)') i3,okacc(irr,ipt,ith,iphi),
c     >       ipt,i1,iphi,i2,irr,ith,ilo,ihi
           enddo
          enddo
         enddo
       enddo

       do isp=1,2
        do idp=1,100
         sigdp(isp,idp)=0.
         sigdper(isp,idp)=0.
         sigdpo(isp,idp)=0.
         sigdpoer(isp,idp)=0.
        enddo
       enddo

c Time offsets
c no longer used
c      open(unit=5,file='ptc.toff')
c      do irun=3001,7000
c       toff(irun)= -1.0 
c      enddo
c      do i=1,10000
c       read(5,*,end=2) irun,offset
c       toff(irun)=offset
c      enddo
c 2    close(unit=5)

c BCM1 with current corrections from hms.f
c don't use this anymore
c      open(unit=5,file='ptc.hmsbcm')
c      do i=1,10000
c       read(5,*,end=3) irun,tmp
c       bcmhms(irun)=tmp
c      enddo
c 3    close(unit=5)


      nrt = 0
      nrtc = 0
      do kk=1,20
       avrt(kk) = 0.
       avrter(kk) = 0.
      enddo
      savrt = 0.
      savrtnox = 0.
      savrtwrho = 0.
      avrtc =0.
      savrter = 0.
      savrtnoxer = 0.
      savrtwrhoer = 0.
      avrtcer = 0.
      open(unit=5,file='corrrunlistnew.txt')
      read(5,'(a)') title
      do i=1,2625
c      do i=1,1720
c      do i=1,831
c        read(5,'(i4,i2,10f7.3,2i8,2i10,f7.2,3f7.3,f7.1,6i6)') 
        read(5,'(i4,i2,10f7.3,2i8,2i10,f7.2,3f7.3,f7.1)') 
     >   irun,it,e0,ep0,the0,pp,thp,chrg,dt,
     >   tefe,tefp,current,irate_e,irate_p,
     >   ielclean,ielcleanp,bcm1,v1,v2,v3,elreal
c     >   ,ps1,ps2,ps3,ps4,ps5,p6
c small correction to ep0
        if(abs(ep0).gt.5.3) ep0 = ep0 * 0.998
c for check 
c definitly *not* needed for the 6.59 setting
c now checking the 5.91 vrs 5.98 setting
c        if(abs(ep0).gt.5.9) ep0 = ep0 * 5.91/5.98

c        write(6,'(2i6)') i,irun

        if(i.eq.1)then
         itlast = it
         thplast = thp
         pplast = pp
         e0last = e0
         ep0last = ep0
         the0last = the0r
        endif

        doingklt = .false.
        if(irun.gt.4500 .and. irun.lt. 5360) doingklt=.true.
        if(irun.gt.7870) doingklt = .true.

c Skip some problem runs
        if(irun.eq.1234 .or.(  
c     >  irun.ge.6009 .and.irun.le.6553 .and.
c     >  irun.ge.6554 .and.irun.le.7869 .and.
c     >  irun.ge.5529 .and.irun.le.5532 .and.
c     >  (irun.ge. 5030 .and. irun.lt. 5366) .and.
c     >  (irun.ge. 4500 .and. irun.lt. 5040) .and.
     >   irun.gt.7870 .and. 
     >   pp.gt.0.0 .and.
c     >   (irun/11)*11.eq.irun .and.
c     >  irun.ge.3715 .and.irun.le.3718.and.
c     >  irun.ge.3060 .and.irun.le.4400.and.
c     >  irun.ge.3440 .and.irun.le.3450.and.
c     >  irun.ge.3544 .and.irun.le.3576 .and.
c     >   (irun/11)*11.eq.irun .and.
c     >     irun.lt.3423 .and.
c     >     abs(pp)/(e0-abs(ep0)).gt.0.7 .and.
c     >    doingklt .and.
c     >   (irun.ge.1000 .and. irun.le.3500) .and.
c     >   (irun.ge.4300 .and. irun.le.4890) .and.
c     >   (irun.ge.8162 .and. irun.le.8163) .and.
c     >   it.le.2 .and.
c     >    abs(ep0).gt.6.5 .and.
c     >    it.eq.1 .and. pp.gt.0.0 and.
c     >    pp.gt.2.2 .and. pp.lt.3.7 .and. it.eq.1 .and.
c     >   it.eq.3 .and. thp.gt.20.0 .and.
c     >   it.eq.1 .and.pp.gt.0.0 .and.
c     >    abs(pp)/(e0 - abs(ep0)).gt.0.65 .and.
c skip the positron runs
c     >   (irun.lt.4212.or.irun.gt.4231).and.
c don't do these 18.0 deg. runs, as no dummy for them
c and later we did 19.0 deg. with higher statistics
     >   (irun.lt.5959.or.irun.gt.5962).and.
c     >   (irun.ge.4212.and.irun.le.4231).and.
c     >     abs(pp)/(e0-abs(ep0)).lt.0.7 .and.
c     >     abs(pp)/(e0-abs(ep0)).gt.0.7 .and.
c     >     irun.eq.6417 .and.  
c     >     irun.ge.5368 .and. irun.le.5372 .and.
c     >    ((irun.ge.5368 .and. irun.le. 5377) .or. 
c     >     (irun.ge.6429 .and. irun.le. 6433) .or. 
c     >     (irun.ge.6459 .and. irun.le. 6464)) .and.
c     >     it.le.2 .and. pp.lt.0.0 .and. 
c     >      pp.gt.-2.6 .and.
c    >    abs(pp)/(e0 - abs(ep0)).gt.0.6 .and.
c     >     (irun.eq.3458 .or. irun.eq.5100) .and.
c     >     (irun/30)*30.eq.irun.and.
c     >     ((irun.ge.4965 .and. irun.le.4975).or.
c     >      (irun.ge.4982 .and. irun.le.4998).or.
c     >      (irun.ge.5040 .and. irun.le.5066).or.
c     >      (irun.ge.5128 .and. irun.le.5220).or.
c     >      (irun.ge.5367 .and. irun.le.5377).or.
c     >      (irun.ge.5434 .and. irun.le.5436).or.
c     >      (irun.ge.8039 .and. irun.le.8084)) .and.
c     >     (irun/25)*25.eq.irun.and.abs(pp).gt.2.8 .and.
c     >     it.ne.3 .and. 
c     >     pp.lt.0. .and.
c     >     irun.eq.5660 .and. 
c     >     irun.ge.5660 .and. irun.le.5710 .and.
c     >     irun.ge.8147 .and. irun.le.9999 .and.
c     >   (irun.lt.4865 .or. irun.gt.5360).and.
c     >    irun.lt.4400 .and.
c     >   ((irun.ge.4865 .and. irun.le.5360).or.
c     >    irun.ge.7861) .and.
c     >    (irun/10)*10.eq.irun .and.
c     >    abs(pp)/(e0 - abs(ep0)).gt.0.88 .and.
c same kin in fall18 and sp18
c    >    ((irun.ge.3458 .and. irun.le. 3478) .or. 
c    >     (irun.ge.5600 .and. irun.le. 5617) .or.
c    >     (irun.ge.3583 .and. irun.le. 3596) .or.
c    >     (irun.ge.5826 .and. irun.le. 5844) .or.
c    >     (irun.ge.4055 .and. irun.le. 4078) .or.
c    >     (irun.ge.3983 .and. irun.le. 4005) .or.
c    >     (irun.ge.5876 .and. irun.le. 5928)) .and. 
c    >    ((irun.ge.8180 .and. irun.le. 8190) .or. 
c    >     (irun.ge.5240 .and. irun.le. 5250) .or.
c    >     (irun.ge.5290 .and. irun.le. 5310) .or. 
c    >     (irun.ge.8040 .and. irun.le. 8050) .or. 
c    >     (irun.ge.6490 .and. irun.le. 6520))  .and. 
c     >     (irun/10)*10.eq.irun.and.
c     >     irun.gt.3300 .and. irun.le.6520 .and.
c     >      irun.eq.4255 .and.
c     >      (irun.eq.3696 .or .irun.eq. 5409) .and.
c     >     pp.lt.-2.5 .and.
c     >     ((irun.ge.3400.and.irun.le.3440).or.
c     >      (irun.ge.3540.and.irun.le.3560)).and.
c     >     it.eq.1 .and. 
c ep elastic runs
c     >      irun.ge.6010.and.irun.le.6019.and.
c     >     irun.ge.6080.and.irun.le.6085.and.
c     >     irun.ge.3473 .and.irun.lt.3477.and.
c     >     irun.ge.4060 .and.irun.lt.4062.and.
c     >     irun.ge.3000 .and.irun.le.3430.and.
c     >     it.eq.2.and.
c     >     thp.gt.18.0 .and.
c     >     it.eq.1 .and.pp.gt.0.0 .and.
c     >   mmpi2_cent_h.lt.1.5 .and.
c    >    10*(irun/10).eq.irun .and. irun.lt.4400 .and.
c     >      (irun.eq.3478.or.irun.eq.5603.or.irun.gt.8226).and.
c current scans
c     >  ((irun.ge.3470 .and.  irun.le. 3472) .or.
c     >   (irun.ge.3435 .and.  irun.le. 3437) .or.
c     >   (irun.ge.3517 .and.  irun.le. 3519) .or.
c     >   (irun.ge.3982 .and.  irun.le. 3984) .or.
c     >   (irun.ge.4051 .and.  irun.le. 4054)) .and.
c     >   (irun.ge.5600 .and.  irun.le. 5617) .or.
c     >   (irun.ge.3460 .and.  irun.le. 3478) .or.
c     >   ((irun.ge.4882 .and.  irun.le. 4890) .or.
c     >   (irun.ge.4910 .and.  irun.le. 4912) .or.
c     >   (irun.ge.4965 .and.  irun.le. 4975) .or.
c     >   (irun.ge.4982 .and.  irun.le. 4998) .or.
c     >   (irun.ge.5040 .and.  irun.le. 5066) .or.
c     >   (irun.ge.4965 .and.  irun.le. 4975) .or.
c     >   (irun.ge.5128 .and.  irun.le. 5220) .or.
c     >   (irun.ge.5367 .and.  irun.le. 5378) .or.
c     >   (irun.ge.5415 .and.  irun.le. 5436) .or.
c     >   (irun.ge.5437 .and.  irun.le. 5440) .or.
c     >   (irun.ge.5634 .and.  irun.le. 5636) .or.
c     >   (irun.ge.5671 .and.  irun.le. 5727) .or.
c     >   (irun.ge.5687 .and.  irun.le. 5689) .or.
c     >   (irun.ge.5751 .and.  irun.le. 5754) .or.
c     >   (irun.ge.5963 .and.  irun.le. 5965) .or.
c     >   (irun.ge.6129 .and.  irun.le. 6135) .or.
c     >   (irun.ge.6429 .and.  irun.le. 6433) .or.
c     >   (irun.ge.6459 .and.  irun.le. 6464)) .and.
c     >   ((irun.ge.8039 .and.  irun.le. 8084) .or.
c     >    (irun.gt.8226)) .and.
c     >   irun.ge.3500  .and.irun.le.3520.and.
c Kaon 10.6 runs
c     >   irun.ge.4865  .and.irun.le.5360.and.
c     >   irun.ge.5460  .and.irun.le.5472.and.
c     >   irun.ge.5775  .and.irun.le.5490.and.
c     >   irun.gt.5400 .and. irun.le.9000 .and.
c     >   irun.ge.7500  .and.irun.le.7900.and.
c     >  (irun.eq.3424 .or. irun.eq.3442 .or.
c     >   irun.eq.3472 .or.irun.eq.3842 .or.
c     >   irun.eq.3929 .or.irun.eq.3947 .or.
c     >   irun.eq.4070 .or.irun.eq.5406 .or.
c     >   irun.eq.5411 .or.irun.eq.5507.or.
c     >    (irun.gt.7600 .and. irun.lt.7850) .or.
c     >   irun.eq.5993.or. irun.eq.7604) .and.
c     >  pp.gt.4.0.and.irun.lt.6100.and.
c     >    irun.lt.3440 .and.
c     >    (irun.eq.3900.or.irun.eq.6025) .and.
c     >   ((irun.ge.3800 .and.irun.le.3830) .or. 
c     >    irun.ge.5400 .and. irun.le.6000 .and.
c     >    pp.lt.4.2 .and. irate_p.lt.150000 .and.
c     >   irun.ge.3800 .and.irun.le.3830.and.
c     >   irun.ge.5820 .and.irun.le.5830.and.
c     >   it.eq.1 .and.
c     >   abs(pp).lt. 3.0.and.
c     >   ((irun.ge.6192 .and.irun.le.6293) .or.
c     >    (irun.ge.3421 .and.irun.le.3425 .and.it.eq.1)).and.
c short run: high rate
     >    irun.ne.4983 .and.
c short run: low rate
     >    irun.ne.4188 .and.
c low rate for no apparant reason
     >    irun.ne.4324 .and.
c looks like BCM problem KLT10
     >    irun.ne.4892 .and.irun.ne.4893.and.
c bad runs in csv 2019
     >    irun.ne.7599 .and.
     >    irun.ne.7600 .and.
     >    irun.ne.7678 .and.
c short low rate run klt
     >    irun.ne.7914 .and.
     >    irun.ne.7915 .and.
     >    irun.ne.7917 .and.
     >    irun.ne.7980 .and.
     >    irun.ne.8314 .and.
     >    irun.ne.8334 .and.
     >    irun.ne.8355 .and.
c elastic runs
     >   (irun.lt.6009.or.irun.gt.6017)
     >   )) then

        write(6,'(''doing run'',i5)') irun
c        write(16,'(''doing run'',i5)') irun

        kin(i,1)= abs(ep0)
        kin(1,2)= the0
        the0r = the0
        the0 = the0 * pi/180.
        ep0 = abs(ep0)
        thp_rad = thp * pi/180.

 
       if(irunlast.ne.-99 .and. (it.ne.itlast.or.
cc     >   pp.ne.12345. .or.
     >   abs(ep0 - ep0last).gt.0.02 .or.
     >   abs(the0r - the0last).gt.0.1 .or.
     >   abs(pp - pplast).gt.0.02 .or.
     >   abs(thp-thplast).gt.0.1)) then
         if(nrt.gt.0) then
          ikin = 0
          if(irun.le.6008 .or. irun.ge. 6554) then
           if(abs(abs(pplast) - 1.925).lt.0.01) ikin = 1
           if(abs(abs(pplast) - 2.485).lt.0.01) ikin = 2
           if(abs(abs(pplast) - 2.602).lt.0.01) ikin = 3
           if(abs(abs(pplast) - 3.339).lt.0.01) ikin = 4
           if(abs(abs(pplast) - 2.006).lt.0.01) ikin = 5
           if(abs(abs(pplast) - 2.575).lt.0.01) ikin = 6
           if(abs(abs(pplast) - 3.43).lt.0.01) ikin = 7
           if(abs(abs(pplast) - 4.79).lt.0.01 .and.
     >      irun.ge.5391) ikin = 8
          endif
          itp = itlast
          if(pplast.lt.0.) itp = itp + 3
          ith = int((thplast-5.9)/2.) + 1
c special case
          if(ikin.eq.5) ith = int((thplast - 12.9)/3.) + 1
          do kk=1,10
           avrt(kk) = avrt(kk) / avrter(kk)
           avrter(kk) = 1./sqrt(avrter(kk))
          enddo
          savrt = savrt / savrter
          savrter = 1./sqrt(savrter)
          savrtnox = savrtnox / savrtnoxer
          savrtnoxer = 1./sqrt(savrtnoxer)
          savrtwrho = savrtwrho / savrtwrhoer
          savrtwrhoer = 1./sqrt(savrtwrhoer)
          doit = 0
c          if(irun.lt.4212) doit=1
          if(irun.lt.4233) doit=1
          if(irun.gt.4275 .and. irun.lt.4313 ) doit=1
          if(irun.gt.4323.and.irun.lt.9000) doit=1
          if(doit.gt.0) then
           if(ikin.gt.0) then
            avrate(ikin,itp,ith) = avrt(1)
            avrateer(ikin,itp,ith) = avrter(1)
            savrate(ikin,itp,ith) = savrt
            savrateer(ikin,itp,ith) = savrter
            savratenox(ikin,itp,ith) = savrtnox
            savratenoxer(ikin,itp,ith) = savrtnoxer
            savratewrho(ikin,itp,ith) = savrtwrho
            savratewrhoer(ikin,itp,ith) = savrtwrhoer
           endif
           if(curmax/curmin.gt.1.4) write(16,'(''current scan'')')
           do kk=1,10
            chi = 0.
            df = 0.
            do k=1,nrt
             chi = chi + (rt(k,kk) - avrt(kk))**2 / rter(k,kk)**2
             df = df + 1.
            enddo
c            if(curmax/curmin.gt.1.2) then
             totchi2(kk) = totchi2(kk) + chi
             totdf(kk) = totdf(kk) + df
c            endif
            if(curmax/curmin.gt.1.4 .or. kk.eq.5) then
             write(16,'(8x,3i5,3f8.3,f4.0)') ikin,itp,ith,
     >        avrt(kk),avrter(kk),chi/df,df
             if(kk.eq.5 .and. chi .gt. df + 6.) write(16,
     >        '(''warning, big chisq'')')
            endif
           enddo ! loop over kk
           write(16,'(8x,3i5,6f8.3)') ikin,itp,ith,
     >       savrt,savrter,savrtwrho,savrtwrhoer,
     >       savrtnox,savrtnoxer
          endif
         endif
         write(16,'()')
         write(16,'(1x,''starting it, pp, thp='',i2,f7.2,f7.1)')
     >    it,pp,thp
         write(16,'(''  rn  cur  rate   err simm/d  w/ex'',
     >     ''   lt tefe tefe  r/r cor3  cor cor2 hsef psef'')')
         nrt = 0
         do kk=1,10
           avrt(kk) = 0.
           avrter(kk) = 0.
         enddo
         savrt = 0.
         savrter = 0.
         savrtnox = 0.
         savrtnoxer = 0.
         savrtwrho = 0.
         savrtwrhoer = 0.
         curmin=1000.
         curmax=0.
       endif ! end section on starting new kin.
 
c write out all individual files or summed files
c        if(irunlast.ne.0) then
       if((it.ne.itlast.or.irun.eq.1234 .or.
     >   abs(e0 - e0last).gt.0.1 .or.
     >   abs(ep0 - ep0last).gt.0.1 .or.
     >   abs(the0r - the0last).gt.0.1 .or.
     >   abs(pp - pplast).gt.0.02 .or.
     >   abs(thp-thplast).gt.0.1 .or.
     >   (.not.addruns)).and.irunlast.ne.0) then

c write out cnts
        close(unit=22)
! set 1
c        if(irunlast.eq.0) irunlast=8227

        if(settoanalyze.eq.1) then 
         if(addruns) then
          write(fname,
     >     '(''/group/c-sidis/bosted/CntfilesA/Cntdecay'',
     >      i4,''.txt'')') irunlast
         else
          write(fname,
     >     '(''/group/c-sidis/bosted/Cntfiles/Cntdecay'',
     >      i4,''.txt'')') irunlast
         endif
        endif
        if(settoanalyze.eq.2) then 
         if(addruns) then
          write(fname,
     >    '(''/group/c-sidis/bosted/Cnt0A/Cntdecay'',
     >      i4,''.txt'')') irunlast
         else
          write(fname,
     >     '(''/group/c-sidis/bosted/Cnt0/Cntdecay'',
     >      i4,''.txt'')') irunlast
         endif
        endif
c        write(6,'(''fname='',a)') fname
        if(testing.eq.0) then
         open(unit=22,file=fname)
        else
         open(unit=22,file='Cntdecay.txt')
        endif
        do icase=1,7 
         sum3 = 0.
         sum4 = 0.
         do idist=1,30
          sum3 = sum3 + fstate(icase,idist,4)
          sum4 = sum4 + fstate(icase,idist,5)
         enddo
         do idist=1,30
          do ipart=1,3
           if(fstate(icase,idist,4).ne.0.) then
            fstate(icase,idist,ipart) =
     >       fstate(icase,idist,ipart) /
     >       fstate(icase,idist,4)
           endif
          enddo
          write(22,'(2i3,5f7.4)') icase,idist,
     >      fstate(icase,idist,4)/sum3,
     >      fstate(icase,idist,5)/sum4,
     >      (fstate(icase,idist,ipart),ipart=1,3)
         enddo
        enddo
! Apply normac to SIMC 
        do icase=1,10
         irr = icase*2
         normfac = avnfac(icase) / chrgtot / 
     >    max(1.,sum3tot(icase))
c special case for delta++
         if(icase.eq.3) then
          normfac = avnfac(2) / chrgtot / 
     >     max(1.,sum3tot(2))
         endif
         do im=1,50
          cntsmcmmpi(im,irr) = cntsmcmmpi(im,irr) * normfac 
         enddo
         do izz=1,50
          cntsmcz(izz,irr) = cntsmcz(izz,irr) * normfac
         enddo
         do ipt =1,16
          do iphi=1,15
           do iz=1,20
             do iq2bin=1,2
              cntsmc(iq2bin,ipt,iphi,iz,irr) = 
     >         cntsmc(iq2bin,ipt,iphi,iz,irr)  * normfac
              cntsmcm(iq2bin,ipt,iphi,iz,irr) = 
     >         cntsmcm(iq2bin,ipt,iphi,iz,irr)  * normfac
             enddo
           enddo
          enddo
         enddo
         if(irr.le.2) then
         do ipt =1,24
          do iphi=1,20
           do iz=1,20
             do iq2bin=1,2
              cntsaccmc(iq2bin,ipt,iphi,iz,irr) = 
     >         cntsaccmc(iq2bin,ipt,iphi,iz,irr)  * normfac
             enddo
           enddo
          enddo
         enddo
         endif
         if(icase.le.2) then
          do isp=1,2
           do idp=1,100
            cntsdpmc(isp,idp,icase) = 
     >       cntsdpmc(isp,idp,icase)  * normfac
            cntsdpmco(isp,idp,icase) = 
     >       cntsdpmco(isp,idp,icase)  * normfac
           enddo
          enddo
         endif
         if(icase.eq.2) then
          do iw=1,20
           cntsewmc(iw,2) = 
     >      cntsewmc(iw,2)  * normfac
          enddo
         endif
        enddo
        close(unit=22)
        if(settoanalyze.eq.1) then 
         if(addruns) then
          write(fname,
     >     '(''/group/c-sidis/bosted/CntfilesA/Cntdata'',
     >      i4,''.txt'')') irunlast
cto get acceptance files without cuts!
c          write(fname,
c     >     '(''/group/c-sidis/bosted/CntfilesA_noacccuts/Cntdata'',
c     >      i4,''.txt'')') irunlast
c to get results with wcorr=1
          if(noacccorr) write(fname,
     >     '(''/group/c-sidis/bosted/CntfilesA_noacccorr/Cntdata'',
     >      i4,''.txt'')') irunlast
          if(use_hms_recon)then
           write(fname,
     >      '(''/group/c-sidis/bosted/CntfilesA_HMSrecon/Cntdata'',
     >       i4,''.txt'')') irunlast
          endif
         else
          write(fname,
     >     '(''/group/c-sidis/bosted/Cntfiles/Cntdata'',
     >      i4,''.txt'')') irunlast
         endif
        endif
        if(settoanalyze.eq.2) then 
cxxx  new directory for ptotons
          if(addruns) then
          write(fname,
     >    '(''/group/c-sidis/bosted/Cnt0Ap/Cntdata'',
     >      i4,''.txt'')') irunlast
         else
          write(fname,
     >     '(''/group/c-sidis/bosted/Cnt0/Cntdata'',
     >      i4,''.txt'')') irunlast
         endif
        endif
        if(testing.eq.0) then
         open(unit=22,file=fname)
        else
         open(unit=22,file='Cntdata.txt')
        endif
        do im =1,50
         write(22,'(i3,10i6,8(f8.0,e12.4),14e12.4)') im, 
     >     (cntsmmpi(im,irr),irr=1,10),
     >     (cntsmcmmpi(im,irr),irr=1,30)
        enddo
        do izz=1,50
         write(22,'(i3,10i6,8(f8.0,e12.4),14e12.4)') izz,
     >     (cntsz(izz,irr),irr=1,10),
     >     (cntsmcz(izz,irr),irr=1,30)
c         write(6,'(''cntsmcz'',4e12.4)') 
c     >     cntsmcz(izz,9),cntsmcz(izz,10),
c     >     cntsmcz(izz,15),cntsmcz(izz,16 )
        enddo

        do iq2bin=1,2
        do iz=1,20
         do iphi=1,15
          do ipt=1,16
           sum3 = 0.
           do irr=1,2
            sum3 = sum3 + cnts(iq2bin,ipt,iphi,iz,irr)
            sum3 = sum3 + cnts(iq2bin,ipt,iphi,iz,irr+6)
            sum3 = sum3 + cnts(iq2bin,ipt,iphi,iz,irr+8)
           enddo
           sum3 = sum3 + cntsmc(iq2bin,ipt,iphi,iz,1)
           sum3 = sum3 + cntsmc(iq2bin,ipt,iphi,iz,3) 
           sum3 = sum3 + cntsmc(iq2bin,ipt,iphi,iz,5) 
           denom = avkin(iq2bin,ipt,iphi,iz,9)
c looks like very rare: probably pt2>1 events
c           if(sum3.gt.0 .and. denom.le.0) 
c     >        write(6,'(''err! denom='',f8.3,4i3,8i4,2f6.0)') 
c     >       denom,
c     >       iq2bin,ipt,iphi,iz,
c     >       (cnts(iq2bin,ipt,iphi,iz,irr),irr=1,8),
c     >       (cntsmc(iq2bin,ipt,iphi,iz,irr),irr=1,3,2)
           if(sum3.gt.0 .and. denom.gt.0.) then
            write(22,'(i2,3i3,10i5,f8.0,e12.4,f8.0,e12.4,
     >       3f7.3,f7.3,3f7.3,f7.3,
     >       8(f8.0,e12.4),10e12.4/11x,10i5/11x,10i5/11x,10i5)') 
cxxx     >       6(f8.0,e12.4),14e12.4/11x,10i5/11x,10i5/11x,10i5)') 
     >       iq2bin,ipt,iphi,iz,
     >       (cnts(iq2bin,ipt,iphi,iz,irr),irr=1,10),
     >       (cntsmc(iq2bin,ipt,iphi,iz,irr),irr=1,4),
     >       (avkin(iq2bin,ipt,iphi,iz,irr)/
     >        denom,irr=1,8),
     >       (cntsmc(iq2bin,ipt,iphi,iz,irr),irr=5,30),
     >       (cnts(iq2bin,ipt,iphi,iz,irr),irr=11,40)

             w = avkin(iq2bin,ipt,iphi,iz,5)/denom
             if(w.lt.1.2 .or. w.gt. 3.5) 
     >         write(6,'(''error w='',f8.3)') w
           endif
          enddo
         enddo
        enddo
        enddo
        write(22,'('' 0  0  0  0'')')
        do iq2bin=1,2
        do iz=1,20
         do iphi=1,15
          do ipt=1,16
           sum3 = 0.
           do irr=1,2
            sum3 = sum3 + cntsm(iq2bin,ipt,iphi,iz,irr)
            sum3 = sum3 + cntsm(iq2bin,ipt,iphi,iz,irr+6)
            sum3 = sum3 + cntsm(iq2bin,ipt,iphi,iz,irr+8)
           enddo
           sum3 = sum3 + cntsmcm(iq2bin,ipt,iphi,iz,1)
           sum3 = sum3 + cntsmcm(iq2bin,ipt,iphi,iz,3) 
           sum3 = sum3 + cntsmcm(iq2bin,ipt,iphi,iz,5) 
           denom = avkinm(iq2bin,ipt,iphi,iz,9)
c           if(sum3.gt.0 .and. denom.le.0) 
c     >        write(6,'(''err! denom='',f8.3,4i3,8i4,2f6.0)') 
c     >       denom,
c     >       iq2bin,ipt,iphi,iz,
c     >       (cntsm(iq2bin,ipt,iphi,iz,irr),irr=1,8),
c     >       (cntsmcm(iq2bin,ipt,iphi,iz,irr),irr=1,3,2)
           if(sum3.gt.0 .and. denom.gt.0.) then
            write(22,'(i2,3i3,10i5,f8.0,e12.4,f8.0,e12.4,
     >       3f7.3,f7.3,3f7.3,f7.3,
     >       6(f8.0,e12.4),14e12.4/11x,10i5/11x,10i5/11x,10i5)') 
     >       iq2bin,ipt,iphi,iz,
     >       (cntsm(iq2bin,ipt,iphi,iz,irr),irr=1,10),
     >       (cntsmcm(iq2bin,ipt,iphi,iz,irr),irr=1,4),
     >       (avkinm(iq2bin,ipt,iphi,iz,irr)/
     >        denom,irr=1,8),
     >       (cntsmcm(iq2bin,ipt,iphi,iz,irr),irr=5,30),
     >       (cntsm(iq2bin,ipt,iphi,iz,irr),irr=11,40)

             w = avkinm(iq2bin,ipt,iphi,iz,5)/denom
             if(w.lt.1.2 .or. w.gt. 3.5) 
     >         write(6,'(''error w='',f8.3)') w
           endif
          enddo
         enddo
        enddo
        enddo
        write(22,'('' 0  0  0  0'')')
! versus dp, dphi, etc. just for pions
        write(12,'(12f8.4)') dphmslo,dphmshi,dpshmslo,dpshmshi,
     >     dthhmsmin,dthshmsmin,dphihmsmin,dphishmsmin,
     >     dthhmsmax,dthshmsmax,dphihmsmax,dphishmsmax
        do j1=1,24
         do j2=1,20
          do j3=1,20
           write(22,'(3i3,i5,i5,f7.0,e12.4,i5,i5,f7.0,e12.4)') j1,j2,j3, 
     >      ((cntsacc  (isp,j1,j2,j3,irr),irr=1,2),
     >       (cntsaccmc(isp,j1,j2,j3,irr),irr=1,2),isp=1,2)
          enddo
         enddo
        enddo

c coincidence spectra and also she spectra and dp ratios
        close(unit=22)
        if(settoanalyze.eq.1) then 
         if(addruns) then
          wri te(fname,
     >     '(''/group/c-sidis/bosted/CntfilesA/Cntct'',
     >      i4,''.txt'')') irunlast
         else
          write(fname,
     >     '(''/group/c-sidis/bosted/Cntfiles/Cntct'',
     >      i4,''.txt'')') irunlast
         endif
        endif
        if(settoanalyze.eq.2) then 
         if(addruns) then
          write(fname,
     >    '(''/group/c-sidis/bosted/Cnt0A/Cntct'',
     >      i4,''.txt'')') irunlast
         else
          write(fname,
     >     '(''/group/c-sidis/bosted/Cnt0/Cntct'',
     >      i4,''.txt'')') irunlast
         endif
        endif
        if(testing.eq.0) then
         open(unit=22,file=fname)
        else
         open(unit=22,file='cntct.txt')
        endif
        do iz=1,20
         do kk=1,40
          write(22,'(10i6)') (cntsct(iz,kk,im),im=1,4),
     >     (cntsshe(iz,kk,im),im=1,2),
     >     (cntsctk(iz,kk,im),im=1,2),
     >     (cntsctp(iz,kk,im),im=1,2)
         enddo
        enddo
        do kk=1,40
         write(22,'(2i6)') (cntscte(kk,im),im=1,2)
        enddo
        dtx = dtav / chrgtot
        tefex = tefeav /chrgtot
        tefpx = tefpav / chrgtot
        corrx = corrav  / chrgtot
        corr2x = corr2av / chrgtot
        corr3x = corr3av / chrgtot
        chrgx = chrgtot
c        write(16,'(''dt...'',7f8.3)') dtx,tefex,tefpx,
c     >   corrx,corr2x,corr3x,chrgx
c ratios versus dp
        do isp=1,2
         do idp=1,100
          pir = cntsdp(isp,idp,1)
          piacc = cntsdp(isp,idp,2)
          rex = (pir - piacc/4.) / chrgx / dtx / 
     >      tefex / tefpx / corr3x / corrx / corr2x
          rexer = sqrt(max(1.,pir + piacc/16.))/chrgx/dtx/
     >      tefex / tefpx / corr3x / corrx / corr2x
          sum1 = cntsdpmc(isp,idp,1) + 
     >           cntsdpmc(isp,idp,2)
          sum2 = cntsdpmco(isp,idp,1) + 
     >           cntsdpmco(isp,idp,2)
          if(sum1.gt.0. .and. pir.gt.3) then
           if(idp.eq.99950 .and. isp.eq.2) 
     >      write(16,'(''r'',i2,i3,2f5.0,7f7.2,4f9.2)') 
     >      isp,idp,
     >      pir,piacc,rex/sum1,rexer/sum1,
     >      rex,rexer,sum1,
     >      cntsdpmc(isp,idp,1)/sum1,
     >      cntsdpmc(isp,idp,2)/sum1
           rex =  rex/sum1
           rexer = rexer/sum1
           sigdp(isp,idp) = sigdp(isp,idp) + 
     >       rex/rexer**2
           sigdper(isp,idp) = sigdper(isp,idp) + 
     >       1./rexer**2
           if(idp.eq.99950) write(16,'(''r'',i2,i3,2f7.2)') isp,idp,
     >      sigdp(isp,idp)/sigdper(isp,idp),
     >      1./sqrt(sigdper(isp,idp))
           if(idp.gt.99950.and.isp.eq.2) 
     >      write(16,'(''r'',i2,i3,2f12.4)') isp,idp,sum1/sum2
           write(22,'(2i3,4e12.4)') isp,idp,rex,rexer,sum1,sum2
c           write(6,'(2i3,3f8.3)') isp,idp,rex,rexer,sum2/sum1
           rex =  rex * sum1
           rexer = rexer * sum1
          endif
          if(sum2.gt.0. .and. pir.gt.3) then
           rex =  rex/sum2
           rexer = rexer/sum2
           sigdpo(isp,idp) = sigdpo(isp,idp) + 
     >       rex/rexer**2
           sigdpoer(isp,idp) = sigdpoer(isp,idp) + 
     >       1./rexer**2
           write(22,'(2i3,3f8.3)') isp+2,idp,rex,rexer,sum2/sum1
          endif
         enddo
        enddo

c exclusive pion counts
        close(unit=22)
        if(settoanalyze.eq.1) then 
         if(addruns) then
          write(fname,
     >     '(''/group/c-sidis/bosted/CntfilesA/Cnce'',
     >      i4,''.txt'')') irunlast
         else
          write(fname,
     >     '(''/group/c-sidis/bosted/Cntfiles/Cnce'',
     >      i4,''.txt'')') irunlast
         endif
        endif
        if(settoanalyze.eq.2) then 
         if(addruns) then
          write(fname,
     >     '(''/group/c-sidis/bosted/Cnt0A/Cnce'',
     >      i4,''.txt'')') irunlast
         else
          write(fname,
     >     '(''/group/c-sidis/bosted/Cnt0/Cnce'',
     >      i4,''.txt'')') irunlast
         endif
        endif

        if(testing.eq.0) then
         open(unit=22,file=fname)
        else
         open(unit=22,file='Cnte.txt')
        endif
        do iw=1,20
         pir = cntsew(iw,1)
         piacc = cntsew(iw,2)
         rex = (pir - piacc/4.) / chrg / dt / 
     >      tefe / tefp / corr3 / corr / corr2
         rexer = sqrt(pir + piacc/16.)/chrg/dt/
     >      tefe / tefp / corr3 / corr / corr2
         if(cntsewmc(iw,2).gt.0.) then
          rex =  rex/cntsewmc(iw,2)
          rexer = rexer/cntsewmc(iw,2)
         endif
         corr = cntsewmc(iw,3)/max(1.,cntsewmc(iw,1))
         write(22,'(i2,3f6.0,2e12.4,2f8.3,2e12.4)') 
     >    iw,
     >    (cntsew(iw,irr),irr=1,2),
     >    (cntsewmc(iw,irr),irr=1,3),
     >    rex, rexer,rex*corr, rexer*corr
        enddo
        do iq2bin=1,2
         do iphi=1,7
          do ipt=1,4
           pir = cntse(iq2bin,ipt,iphi,1)
           piacc = cntse(iq2bin,ipt,iphi,2)
           rex = (pir - piacc/4.) / chrg / dt / 
     >      tefe / tefp / corr3 / corr / corr2
           rexer = sqrt(pir + piacc/16.)/chrg/dt/
     >      tefe / tefp / corr3 / corr / corr2
           if(cntsemc(iq2bin,ipt,iphi,2).gt.0.) then
            rex =  rex/cntsemc(iq2bin,ipt,iphi,2)
            rexer = rexer/cntsemc(iq2bin,ipt,iphi,2)
           endif
           write(22,'(i2,2i3,2i5,f6.0,2e12.4,2f8.3)') 
     >       iq2bin,ipt,iphi,
     >       (cntse(iq2bin,ipt,iphi,irr),irr=1,2),
     >       (cntsemc(iq2bin,ipt,iphi,irr),irr=1,3),
     >       rex, rexer
          enddo
         enddo
        enddo

! clear the arrays
        do iq2bin=1,2
         do iphi=1,7
          do ipt=1,4
           write(22,'(i2,2i3,8i5/8x,8i5/8x,8i5)') 
     >       iq2bin,ipt,iphi,
     >       (cntseh(iq2bin,ipt,iphi,im,1),im=1,8),
     >       (cntseh(iq2bin,ipt,iphi,im,2),im=1,8),
     >       (cntsemch(iq2bin,ipt,iphi,im),im=1,8)
          enddo
         enddo
        enddo
        DO IPT=1,16
         DO IPHI=1,15
          DO IQ2BIN=1,2
           CNTSE(IQ2BIN,IPT,IPHI,1)=0.
           CNTSE(IQ2BIN,IPT,IPHI,2)=0.
           DO IM=1,8
            CNTSEH(IQ2BIN,IPT,IPHI,IM,1)=0.
            CNTSEH(IQ2BIN,IPT,IPHI,IM,2)=0.
            CNTSEMCH(IQ2BIN,IPT,IPHI,IM)=0.
           ENDDO
           DO IRR=1,3
            CNTSEMC(IQ2BIN,IPT,IPHI,IRR)=0.
           ENDDO
          ENDDO
         ENDDO
        ENDDO
        do iw=1,20
         do irr=1,3
          cntsew(iw,irr)=0.
          cntsewmc(iw,irr)=0.
         enddo
        enddo
        do iz=1,20
         do kk=1,40
          do jj=1,4
            cntsct(iz,kk,jj) = 0
            if(jj.le.2) cntscte(kk,jj)=0.
          ENDDO
          if(testing.lt.1) then
           do jj=1,2
            cntsshe(iz,kk,jj) = 0
            cntsctk(iz,kk,jj) = 0
            cntsctp(iz,kk,jj) = 0
           ENDDO
          endif
         ENDDO
        ENDDO
        do ipt=1,3
         do iphi=1,15
          dpxyzh(ipt,iphi)=0
         enddo
        enddo
        DO IPT =1,24
         DO IPHI=1,20
          DO IZ=1,20
           DO IQ2BIN=1,2
            DO IRR=1,2
             CNTSacc(IQ2BIN,IPT,IPHI,IZ,IRR)=0
             CNTSaccmc(IQ2BIN,IPT,IPHI,IZ,IRR)=0
            ENDDO
           ENDDO
          ENDDO
         ENDDO
        ENDDO
        DO IPT =1,16
         DO IPHI=1,15
          DO IZ=1,20
           DO IQ2BIN=1,2
            DO IRR=1,40
             CNTS(IQ2BIN,IPT,IPHI,IZ,IRR)=0
             CNTSm(IQ2BIN,IPT,IPHI,IZ,IRR)=0
            ENDDO
            DO IRR=1,9
             AVKIN(IQ2BIN,IPT,IPHI,IZ,IRR)=0.
             AVKINm(IQ2BIN,IPT,IPHI,IZ,IRR)=0.
            ENDDO
            DO IRR=1,30
             CNTSMC(IQ2BIN,IPT,IPHI,IZ,IRR)=0
             CNTSMCm(IQ2BIN,IPT,IPHI,IZ,IRR)=0
            ENDDO
           ENDDO
          ENDDO
         ENDDO
        ENDDO
        do isp=1,2
         do idp=1,100
          cntsdp(isp,idp,1) = 0
          cntsdp(isp,idp,2) = 0
          cntsdpmc(isp,idp,1) = 0
          cntsdpmc(isp,idp,2) = 0
          cntsdpmco(isp,idp,1) = 0
          cntsdpmco(isp,idp,2) = 0
         enddo
        enddo
        DO IPT=1,50
         DO IRR=1,10
          CNTSMMPI(IPT,IRR)=0
          CNTSZ(IPT,IRR)=0
         ENDDO
         DO IRR=1,30
          CNTSMCMMPI(IPT,IRR)=0
          CNTSMCZ(IPT,IRR)=0
         ENDDO
        ENDDO
        write(181,182) irunlast,itlast,e0last,ep0last,
     >   the0last,pplast,thplast,chrgtot,
     >   dtav/chrgtot,
     >   tefeav/chrgtot,
     >   tefpav/chrgtot,
     >   corrav/chrgtot,
     >   corr2av/chrgtot,
     >   corr3av/chrgtot
 182    format(i4,i2,5f7.3,f8.2,6f7.3)
        chrgtot = 0.
        tefeav = 0.
        tefpav = 0.
        dtav = 0.
        corr3av = 0.
        corrav = 0.
        corr2av = 0.
        do irr=1,10
         avnfac(irr) = 0.
        su m3tot(irr) = 0.
        enddo

         itlast = it
         thplast = thp
         pplast = pp
         e0last = e0
         ep0last = ep0
         the0last = the0r
! end of test on whether to write out data (addruns)
        endif

c this is to make sure last run gets written out
        if(irun.eq.1234) goto 1239

c tried this, but not good
c      dpshmslo = -12.
c      if(irun.gt.4400 .and. irun.le.5334 ) dpshmslo = -19.5
c      if(irun.ge.7871 .and. irun.lt.8300 ) dpshmslo = -19.5

c apply BCM4A correction (from code hmsf)
c        corr = 0.995 + 0.035 * (log(60.) - log(current)) /
c     >                         (log(60.) - log(2.))
c        chrg = chrg * corr
c use bcm1 for spring18 csv runs
c        if(irun.ge.4860 .and. irun.le.5350) chrg = bcm1
c changed to use bcm1 for all runs now
c fix stange gain change
        if(irun.ge.3651.and.irun.lt.4400) bcm1 = bcm1 * 0.94
        if(current.le.60.) then
          bcmcorr = 1.00 + 0.045 * (log(60.) - log(current)) /
     >                          (log(60.) - log(2.))
        else
         bcmcorr = 1. + 0.010 * (current - 60.) / 25.
        endif
        bcm1 = bcm1 * bcmcorr
c override bcm4a with bcm1
        chrg = bcm1

c change dt from percent to fraction
       dt = dt/100.

c aerogel tray. 2= index 1.015, 1= index 1.011
       aerotray = 2
       if(irun.ge.4965.and.irun.le.5378) aerotray=1
       if(irun.ge.7940.and.irun.le.8356) aerotray=1
       xmaxaero = 100.
       ymaxaero = 100.
       aeromin = 2.5
       hgpmin = 2.85
       if(aerotray.eq.1) then
        xmaxaero = 45.
        ymaxaero = 30.
        aeromin = 2.5
        hgpmin = 3.35 ! threshold in aero for kaons
       endif
c get central mmpi
! get kinematic vectors
! positive yptar makes theta smaller in HMS
        ep = ep0
        dphie = 0.
        dthe = 0.
        ppi = abs(pp) 
        dthp = 0.
        dphip = 0.
	 call physics_angles(the0, phi0e, dthe, dphie,
     >     ep,p_x(1),p_y(1),p_z(1))
	 call physics_angles(thp_rad, phi0p, dthp, dphip, 
     >     ppi,p_x(2),p_y(2),p_z(2))
        Empi = e0 + amp - ppi - sqrt(ampi**2 + ep**2)
        mmpi2_cent_h = 
     >     (Empi)**2 - 
     >     (p_x(1) + p_x(2))**2 -
     >     (p_y(1) + p_y(2))**2 -
     >     (p_z(1) + p_z(2)- e0)**2
c this is for e- in shms, pi- in hms
        Empi = e0 + amp - ep - sqrt(ampi**2 + ppi**2)
        mmpi2_cent_s = 
     >     (Empi)**2 - 
     >     (p_x(1) + p_x(2))**2 -
     >     (p_y(1) + p_y(2))**2 -
     >     (p_z(1) + p_z(2)- e0)**2
c        write(6,'(''mmpi2='',i5,2f8.2)') irun,mmpi2_cent_h,mmpi2_cent_s

! rf spacing in nsec. Only for Fall (not hooked up in Spring)
! Right now, the master oscillator frequency is 499001553.45 Hz. We get every other
! bunch, so the bunch space should be 4.008 ns like you found below.
! see fort.44 for check: seems good for whole run
! MOFC1FREQ - this gives the absolute frequency in Hz (EPICS)
! MOFC1DELTA - this give the deviation from exactly 499 MHz

       rff = 4.000 * 1.0020

       kin(i,3)=pp
       kin(i,4)=thp
       itsv(i)=it

c runs with low HMS elclean / chrg (copied from hms.f)
       ikin=1
 

        epelas = 0
        if(irun.gt.6009.and.irun.le.6017) epelas=1

c Original skim files
c        write(fname,
c     >    '(''/work/hallc/sane/bosted/ptc/Skim'',i4,''.txt'')') irun
c new ones
        write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/Skimfiles/Skim'',
     >     i4,''.txt'')') irun
c if using Hem's files
        if(useHB) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/Skimfiles/SkimHB'',
     >     i4,''.txt'')') irun

        OPEN(UNIT=9,FILE=FNAME)

        DO K=1,15
         DPPHISTRUN(K)=0.
         YTHISTRUN(K)=0.
        ENDDO
        DO K=1,50
         DO KK=1,10
          CTPIHW(K,KK)=0
         ENDDO
        ENDDO
        PIR = 0.
        PIACC = 0.
        PIR4 = 0.
        PIACC4 = 0.
        PIR5 = 0.
        PIACC5 = 0.
        PIACCL = 0.
        PIACCH = 0.
        DO IM=1,20
         PIRM(IM) = 0
         PIACCM(IM) = 0
c         PIRMz(IM,1) = 0
c         PIACCMz(IM,1) = 0
c         PIRMz(IM,2) = 0
c         PIACCMz(IM,2) = 0
         PIRZ(IM) = 0
         PIACCZ(IM) = 0
        ENDDO
        DO K=1,6
         DO KK=1,20
          PIRK(K,KK)=0.
          PIACCK(K,KK)=0.
          PIRKS(K,KK)=0.
          PIACCKS(K,KK)=0.
         ENDDO
        ENDDO
        DO K=1,100
         DO KK=1,20
          PIACCKS(K,KK)=0.
         ENDDO
        ENDDO
        DO K=1,40
         CTPIH(K)=0
         CTPIHF(K)=0
         CTPIHFA(K)=0
         CTKH(K)=0
         ctph(k)=0
         ctphff(k)=0
         ctphff(41)=0
         CTPHF(K)=0
         CTKHF(K)=0
         CTEH(K)=0
        ENDDO
        DO K=1,14
         DO KK=1,21
          EPRH(K,KK)=0
         ENDDO
        ENDDO
        DO K=1,12
         DO KK=1,16
          CEREH(K,KK)=0
          CEREPIH(K,KK)=0
         ENDDO
        ENDDO
        do k=1,17
         hghrun(k)=0
         hghrunp(k)=0
        enddo
        muons(1)=0.
        muons(2)=0.
        DO K=1,16
         NGH(K)=0
         shmuonh(k)=0.
         do kk=1,4
          SHH(K,kk)=0
         enddo
         prh(k,1)=0
         prh(k,2)=0
         SHEH(K,1)=0
         SHEH(K,2)=0

         SH2Hrun(K)=0
         AEROH(K)=0
         AEROHp(K)=0
         DO KK=1,19
          YTH(KK,K)=0
         ENDDO
        ENDDO
        DO K=1,20
         BETAH(1,K)=0
         BETAH(2,K)=0
        enddo
        DO K=1,21
         CTRFRUN(K,1)=0
         CTRFRUN(K,2)=0
         CTRFRUN(K,3)=0
         CTRFRUN(K,4)=0
        enddo
        do k=1,20
         xaeroh(k)=0
         yaeroh(k)=0
        enddo
        do k=1,20
         DO KK=1,10
          CTRFRN(KK,K,1)=0
          CTRFRN(KK,K,2)=0
         ENDDO
         DO KK=1,4
          XYAEROH(KK,K)=0.
          XYAEROH(KK,21)=0.
         ENDDO
         DO KK=1,12
          MMPIH(K,KK)=0
          MMPH(K,KK)=0
         ENDDO
         PHIH(K)=0
        ENDDO
        do k=1,320
         MEEH(K,1)=0
         MEEH(K,2)=0
        enddo
        do k=1,400
         MMPHF(K)=0
         MMPHETA(K)=0
        enddo
        DO ii =1,8
         DO j=1,30
          DO k=1,5
           fstate(ii,j,k)=0.
          ENDDO
         ENDDO
        ENDDO

        DO IHEL=1,3
         do j=1,2
          SUMCNT(IHEL,j)=0
          SUMCNTSF(IHEL,j)=0
          if(ihel.le.2) SUMCNTS(IHEL,j)=0
          SUMCNTex(IHEL,j)=0
          SUMCNTexSF(IHEL,j)=0
         enddo
        ENDDO

c have-wave plate from IHWP from Steve Wood
      hwsign=-1 ! OUT is default
      if(irun.ge.4966.and.irun.le.4967) hwsign=1 ! IN
      IF(IRUN.GE.5034.AND.IRUN.LE.5154) HWSIGN=1 ! IN
      IF(IRUN.GE.5336.AND.IRUN.LE.5667) HWSIGN=1 
      IF(IRUN.GE.5963.AND.IRUN.LE.6146) HWSIGN=1 
      IF(IRUN.GE.6245.AND.IRUN.LE.6620) HWSIGN=1
      IF(IRUN.GE.7042.AND.IRUN.LE.7461) HWSIGN=1 
      IF(IRUN.GE.7590.AND.IRUN.LE.7772) HWSIGN=1 
      IF(IRUN.GE.7832.AND.IRUN.LE.8054) HWSIGN=1 
      IF(IRUN.GE.8207.AND.IRUN.LE.8356) HWSIGN=1 
! in middle of a set
      IF(IRUN.EQ.4968) HWSIGN=0 !     IN > OUT
! in middle of a set
      IF(IRUN.EQ.5033) HWSIGN=0 !     OUT->IN
! in middle of a set
      IF(IRUN.EQ.5155) HWSIGN=0 !     IN > OUT
! in middle of a set
      if(irun.eq.5668) hwsign=0 !     IN->OUT
! in middle of a set
      IF(IRUN.EQ.5962) HWSIGN=0 !     OUT->IN
c dummy run
      if(irun.eq.6244) hwsign=0 !     OUT->IN
      if(irun.eq.7831) hwsign=0 !     OUT->IN
      if(irun.eq.8055) hwsign=0 !     IN->OUT
      if(irun.eq.8206) hwsign=0 !     OUT->IN


        DO J=1,7654321
C        DO J=1,10000
C         READ(9a)',end=10,err=10) string
         read(9,'(a)',end=10) string
         if(j.lt.1) write(6,'(a)') string(1:60)
         read(string,*) ctpi,ctk,ctp
         if(ctpi.eq.0.0 .and.ctk.eq.0. .and. ctp.eq.0.) then
            write(6,'(''finished'',i5,i7)') irun,j
            read(9,*) sum1,sum2,sum3,sum4
c override track effeciency SHMS with new one
c            tefp = sum4 / sum2
c changed to use sum3 (no tight pdelta cut)
            tefp = sum3 / sum2
            if(tefp.lt.0.80) write(16,'(''big bad tefp='',f8.3)') tefp
            read(9,*) sum1,sum2,sum3,sum4
c override track effeciency HMS with new one
c            tefe = sum4 / sum2
c changed to sum3 because pbeta is mostly 0. for some run periods (kaonlt)
c            tefe = sum4 / sum2
            tefe = sum3 / sum2
c skkip 200 lines
            do jj=1,200
             read(9,'(a)',end=10,err=10) string
            enddo
c get percentage of cointimeraw within +/-100 nsec
            read(9,*) sum1,sum2,sum3
c            timecorr = 1. - sum3
! Get efficiency of pgdsc
            read(9,*) i1,i2,pgdsceff
            goto 10
         endif ! end check on end of file
! read in an event
! cahnged order of dthe, dphie to match PeterB.C
! dth is xprar, dphi is yptar
         if(irun.lt.4400) then
          errcode=4
          read(string,*,end=999) ctpi,ctk,ctp,imps,ineg,ipos,
     >     dpe,dthe,dphie,dpp,dthp,dphip,cere,pre,she,
     >     cerng,ceraero,cerhg,prp,shp,hgtry,pgtry,pbeta,
     >     hdcx,hdcxp,hdcy,hdcyp,pdcx,pdcxp,pdcy,pdcyp,
     <     prf,hrf,pfpt,hfpt,pztar,hztar,gdsc
     >     ,goodhodoh,goodhodop,hbeta,ctpinew,aerot,aeront,evtype
          i1 = min(15,max(1,int((ctpi+30.)/4.)+1))
          i2 = min(6,max(1,int(float(irate_p)/1.e5)+1))
          if(evtype.lt.3) then
           ctev(i1,i2,1) = ctev(i1,i2,1) + ps4
          else
           ctev(i1,i2,2) = ctev(i1,i2,2) + 1
          endif

c beam helicity
          if(irun.lt.5360) then
           if(imps.eq.1) then
            ihel = 3 ! undefined
           else
            ihel = max(1,imps) ! 0->1 2->2
           endif
c           write(6,'(''hel'',6i3)') imps,ineg,ipos,ihel
          else
           if(imps.eq.1) ihel=3
           if(imps.eq.0) ihel=1
           if(imps.eq.2) ihel=2
           if(imps.lt.0 .or. imps.gt.2) then
            ihel=3
            write(6,'(''error hel'',3i3)') imps,ipos,ineg
           endif
          endif

c corresction for HMS set too low by 0.16% in sp18 for 5.27 setting
c and also an angle correction
c add the 0.4%
c Now new values in run list
c          if(ep0.gt.5.2) then 
c           dpe = dpe - 0.56
c          endif
c          dpp = dpp - 0.4

c vertical angle offset for all of spring 18
c Carlos found 2.85 mr, so my value is similar
c (comes from making cos(phi) dist. even)
           dthe = dthe + 0.0027

c this is for fall18, spring19
         else
          evtype=4
          errcode=3
          read(string,*,end=999) ctpi,ctk,ctp,imps,ineg,ipos,
     >     dpe,dthe,dphie,dpp,dthp,dphip,cere,pre,she,
     >     cerng,ceraero,cerhg,prp,shp,hgtry,pgtry,pbeta,
     >     hdcx,hdcxp,hdcy,hdcyp,pdcx,pdcxp,pdcy,pdcyp,
     <     prf,hrf,pfpt,hfpt,pztar,hztar,gdsc
     >     ,goodhodoh,goodhodop,hbeta,ctpinew,aerot,aeront

c fix shp for these runs! (p=4.8 in standard.kinematics, not 3.44
          if(irun.ge.5639 .and. irun.le.5686) then
           shp = shp * 4.80 / 3.44
          endif
         
c if reading in Hem's root files
          if(useHB) ctpi = ctpi - 1.0

c also shift for other runs
           dthe = dthe + 0.0027

c beam helicity
          if(irun.lt.5360) then
           if(imps.eq.1) then
            ihel = 3 ! undefined
           else
            ihel = max(1,imps) ! 0->1 2->2
           endif
          else
           if(imps.eq.1) ihel=3
           if(imps.eq.0) ihel=1
           if(imps.eq.2) ihel=2
           if(imps.lt.0 .or. imps.gt.2) then
            ihel=3
            write(6,'(''error hel'',3i3)') imps,ipos,ineg
           endif
          endif
         endif
c flip ihel if HW plate is "out"
c set to 3 if run where plate changing
         if(hwsign.eq.0) ihel=3
         if(hwsign.eq.-1 .and. ihel.lt.3) then
          if(ihel.eq.1) then
           ihel = 2
          else
           ihel = 1
          endif
         endif

c         goodhodoh = 1.
c         goodhodop = 1.
c         hbeta = 1.
c         write(6,'(''shms x y dx dy'',4f8.3)') 
c     >    pdcx,pdcxp,pdcy,pdcyp

c change pr to not be normalized by pp
c         prp= prp * abs(pp)

c correction to hms xptar. Data were processed with
c an offset of -5 mr. Carlos found we should use
c +3 mr on average with new DC. In reality, this
c correction should depend on hdelta as
c it is probably due to DC alignment, but for
c now lets just do a constant offset of 5 mr
c reran with zero offset for spring18, but -5 by mistake for
c fall18

c SHMS dipole exit
         pexit=1
         xexit = pdcx -307. * pdcxp
         yexit = pdcy -307. * pdcyp
         crad = 23.81
         voffset = crad - 24.035
         hwid = 11.549/2.
         if(abs(yexit) .lt. hwid) then
           if(abs(xexit) .gt.  (crad + voffset)) pexit=0 
         else
           if ( yexit .ge. hwid) then
            if ( (xexit - voffset)**2 + 
     >           (yexit - hwid)**2 .gt.
     >            crad**2) pexit=0;
           endif
           if ( yexit .le. -1.*hwid) then
            if ( (xexit - voffset)**2 + 
     >           (yexit + hwid)**2 .gt.
     >            crad**2) pexit=0;
           endif
         endif
         if(skipexit) pexit=1
c         if(j.lt.10000.and.pexit.eq.0) write(6,'(i2,6f8.3)') 
c     >    pexit,xexit,yexit,pdcx,pdcxp,pdcy,pdcyp

c HMS dipole exit
         xexit = hdcx - 148. * hdcxp
         yexit = hdcy - 148. * hdcyp
         hexit=1
         if ( (xexit - 2.8)**2 + 
     >        (yexit)**2 .gt. 46.607**2) hexit=0;
         if(skipexit) hexit=1
c         if(j.gt.10000.and.hexit.eq.0) write(6,'(i3,6f8.3)') 
c     >    hexit,xexit,yexit,hdcx,hdcxp,hdcy,hdcyp

! HMS Calorimeter cut
         xcal = hdcx + hcal_4ta_zpos * hdcxp
         ycal = hdcy + hcal_4ta_zpos * hdcyp
         hcal = 1
 	 if (ycal.gt.(hcal_left-2.0) .or. 
     >      ycal.lt.(hcal_right+2.0) .or.
     >      xcal.gt.(hcal_bottom-2.0) .or. 
     >      xcal.lt.(hcal_top+2.0)) hcal=0
c add DC cut at focal plane
         xcal = hdcx
         if(abs(xcal).gt.58.) hcal=0
c add hotoscope cut
         xcal = hdcx + 318. * hdcxp
         if(abs(xcal).gt.59.) hcal=0

         if(abs(dpe).lt.10.) 
     >    hcalh(0,hcal) = hcalh(0,hcal)+1
         
         if(skipcal) hcal=1

! SHMS Calorimeter cut
         xcal = pdcx + scal_4ta_zpos * pdcxp
         ycal = pdcy + scal_4ta_zpos * pdcyp
c         if(j.lt.1000) write(431,'(7f7.2)') pdcx,pdcxp,xcal,pdcy,
c     >     pdcyp,ycal,cerng
         scal = 1
 	 if (ycal.gt.(scal_left-2.0) .or. 
     >      ycal.lt.(scal_right+2.0) .or.
     >      xcal.gt.(scal_bottom-2.0) .or. 
     >      xcal.lt.(scal_top+2.0)) scal=0
c add DC cut at focal plane
         xcal = pdcx
         ycal = pdcy
         if(abs(xcal).gt.38.) scal=0
         if(abs(ycal).gt.38.) scal=0
c histogram of x,y at fp
         if(scal.eq.1) then
          ix = int((xcal + 40.)/4.)+1
          iy = int((ycal + 40.)/4.)+1
          pxyh(ix,iy) = pxyh(ix,iy)+1
         endif
! Hourglass cut
         if(ycal .gt. 10 + abs(xcal)) scal = 0
         if(ycal .lt. -10 - abs(xcal)) scal = 0

         scalh(0,scal) = scalh(0,scal)+1

         if(skipcal) scal=1


c option to  using corrected dpp. Doesn't help at least
c for positive dpp, so no need. Haven't checked dpp<-12
c because cannot find suitable run.
c         call shmscorr(pdcx,pdcxp,pdcy,pdcyp,dpp,dppcorr)
c         dpp = dppcorr

c fill in acceptance array and fill in ok flags
         okhms = 0
         if(abs(dpe).lt.13 .and.
     >    abs(dthe).lt.0.100 .and. 
     >    abs(dphie).lt.0.030) then
          ith = int((dthe + 0.100) / 0.200 * 70)+1
          iphi = int((dphie + 0.030) / 0.060 * 30.)+1
          ipt = int((dpe + 13.) / 26. * 30.)+1
          accep(1,ipt,ith,iphi) = accep(1,ipt,ith,iphi) + 1
          okhms = okacc(1,ipt,ith,iphi)
          if(okhms.eq.1) accep(5,ipt,ith,iphi) = 
     >     accep(5,ipt,ith,iphi) + 1

c study turned off
          if(j.lt.0 .and. she.gt.0.7) then
           do k=1,5
            fry = -0.201 + 0.1*(k-1)
   	    call mc_hms_recon (hdcx,hdcxp,hdcy,hdcyp,fry,
     >       dpz, dphiz, dthz, yz)
            ix = int((dpe + 12.)/24.*20)+1
            iy = int((dpe-dpz + 2.)/4.*15)+1
            ix=min(20,max(1,ix))
            iy = min(15, max(1, iy))
            deltaph(ix,iy,1,k) = deltaph(ix,iy,1,k) + 1
            if(j.lt.1000.and.dpe.gt.-1. .and. dpe.lt. 1.) then
             if(k.eq.1) write(6,'(''a'')')
             write(6,'(''hms recon'',6f7.3)') dpe,dpz-dpe,
     >        dthe,dthe-dthz, dphie, dphie-dphiz
            endif
           enddo
          endif

c study turned off
          if(j.lt.0) then
          do k=1,5
           fry = -0.201 + 0.1*(k-1)
   	   call mc_shms_recon (pdcx,pdcxp,pdcy,pdcyp,fry,
     >      dpzp, dphizp, dthzp, yzp)
           if(j.lt.10.and.abs(dpzp-dpp).gt.3.0.and.scal.eq.1) then
            if(k.eq.1) write(6,'(''a'')')
            write(6,'(''shms recon'',i5,2f7.1,4f7.3)') j,dpp,dpzp-dpp,
     >       dthp,dthp-dthzp, dphip, dphip-dphizp
           endif
           if(abs(dpzp-dpp).gt.3.0 .and. abs(dpp).lt.5 .and. 
     >       abs(dthp).lt.0.020 .and. abs(dphip).lt.0.020.and.
     >      k.eq.2 .and. scal.eq.1) then
            write(612,'(4f7.3,2f7.1,4f7.3)') pdcx,pdcxp,pdcy,pdcyp,
     >       dpp,dpzp-dpp,
     >       dthp,dthp-dthzp, dphip, dphip-dphizp
           endif
           if(scal.eq.1) then
            ix = int((dpp + 20.)/50.*20)+1
            iy = int((dpp-dpzp + 2.)/4.*15)+1
            ix=min(20,max(1,ix))
            iy = min(15, max(1, iy))
            deltaph(ix,iy,2,k) = deltaph(ix,iy,2,k) + 1
           endif
          enddo
          endif

! try making adjustments to DC 
! this takes a long time, so limit number of event per run
          if(j.lt.2) then
           fry = 0.001
	   call mc_hms_recon (hdcx,hdcxp,hdcy,hdcyp,fry,
     >      dpz, dphiz, dthz, yz)
           if(j.lt.1) write(6,'(''hms z'',8f8.4)') 
     >      dpe, dpz, dthe, dthz, dphie, dphiz
           do k=1,3
            do kk=1,3
c             xoff = -0.5 + 0.5 * (k-1)
             xoff = 0.
             fry = -0.101 + 0.1*(k-1)
             xpoff = -0.001 + 0.0010 * (kk-1)
	     call mc_hms_recon (hdcx+xoff,hdcxp+xpoff,hdcy,hdcyp,
     >         fry,dpn, dphin, dthn, yn)
             if(j.lt.1)  write(6,'(2i3,8f7.3)') 
     >         k,kk,dpz, dpn, dthz, dthn, dphiz, dphin, yz, yn
             if(abs(dpn).lt.13 .and.
     >        abs(dthn).lt.0.100 .and. 
     >        abs(dphin).lt.0.030) then
              ith = int((dthn + 0.100) / 0.200 * 70)+1
              iphi = int((dphin + 0.030) / 0.060 * 30.)+1
              ipt = int((dpn + 13.) / 26. * 30.)+1
              kkk = 10 + (k-1) * 3 + kk
              accep(kkk,ipt,ith,iphi) = 
     >          accep(kkk,ipt,ith,iphi) + 1
             endif
            enddo
           enddo
          endif ! j
         endif ! tests on dpe etc for acceptance


c from study above, -0.1 on average agrees with orginal
         if(use_hms_recon) then
           fry= -0.1
   	   call mc_hms_recon (hdcx,hdcxp,hdcy,hdcyp,fry,
     >      dpz, dphiz, dthz, yz)
           dpe = dpz
           dthe = dthz
           dphie = dphiz
         endif

c regardless of use_recon flag, use Jacob Murphy's 6.5 GeV matrix
c elements for the high momentum HMS setting
c tried turning off to see if chi2 for narrow gets better
c but actually, made it worse
c         if(abs(ep0).gt.999.2) then
         if(abs(ep0).gt.6.2) then
           fry= -0.1
   	   call mc_hms_recon_659 (hdcx,hdcxp,hdcy,hdcyp,fry,
     >      dpz, dphiz, dthz, yz)
           if(j.lt.0) write(6,'(8f7.2)') dpe,dpz,dthe,dthz,
     >      dphie,dphiz
           dpe = dpz
           dthe = dthz
           dphie = dphiz
         endif
    
         okshms = 0
         if(abs(dpp-5.).lt.17 .and.
     >    abs(dthp).lt.0.100 .and. 
     >    abs(dphip).lt.0.030) then
          ith = int((dthp + 0.100) / 0.200 * 70)+1
          iphi = int((dphip + 0.030) / 0.060 * 30.)+1
          ipt = int((dpp + 12.) / 34. * 30.)+1
          accep(3,ipt,ith,iphi) = accep(3,ipt,ith,iphi) + 1
          okshms = okacc(2,ipt,ith,iphi)
          if(okshms.eq.1) accep(7,ipt,ith,iphi) = 
     >     accep(7,ipt,ith,iphi) + 1
         endif
c use same th and phi range for dpp<-12 as for -12
         if(dpp.lt.-12 .and.
     >    abs(dthp).lt.0.100 .and. 
     >    abs(dphip).lt.0.030) then
          ith = int((dthp + 0.100) / 0.200 * 70)+1
          iphi = int((dphip + 0.030) / 0.060 * 30.)+1
          ipt = 1
          okshms = okacc(2,ipt,ith,iphi)
         endif

         if(use_shms_recon) then
           fry = -0.1
   	   call mc_shms_recon (pdcx,pdcxp,pdcy,pdcyp,fry,
     >      dpzp, dphizp, dthzp, yzp)
           dpp = dpzp
           dthp = dthzp
           dphip = dphizp
         endif

c correct to make pion peak at 0 nsec (bin 10.5)
c wrong!         if(irun.le.4400 ) ctpi = ctpi + 0.15
         if(irun.le.3418 ) ctpi = ctpi + 0.5
         if(irun.gt.3418.and.irun.le.3428 ) ctpi = ctpi - 0.35
         if(irun.ge.3429.and.irun.lt.3550 ) ctpi = ctpi - 0.16
         if(irun.ge.3550 .and. irun.lt.4253) ctpi = ctpi -0.05
c         if(irun.ge.4253 .and. irun.lt.4400) ctpi = ctpi +0.12 
         if(irun.ge.4253 .and. irun.lt.4400) ctpi = ctpi +0.09
         if(irun.ge.4400 .and. irun.lt.4965) ctpi = ctpi - 0.60
         if(irun.ge.4965 .and. irun.lt.5033) ctpi = ctpi - 0.50
         if(irun.ge.5033 .and. irun.lt.5197) ctpi = ctpi - 0.35
         if(irun.ge.5197 .and. irun.lt.5304) ctpi = ctpi - 0.25
c         if(irun.ge.5304 .and. irun.lt.5360) ctpi = ctpi -0.10 
c         if(irun.ge.5360 .and. irun.lt.6156) ctpi = ctpi - 0.0 
c         if(irun.ge.6156 .and. irun.lt.7592 ) ctpi = ctpi- 0.8 
         if(irun.ge.5304 .and. irun.lt.5360) ctpi = ctpi - 0.05
         if(irun.ge.5360 .and. irun.lt.6156) ctpi = ctpi - 0.15
         if(irun.ge.6156 .and. irun.lt.7592 ) ctpi = ctpi- 1.1 
         if(irun.ge.7592 .and. irun.lt.7665 ) ctpi = ctpi- 0.25 
         if(irun.gt.7665) ctpi = ctpi- 0.00

c try making corr. a bit bigger to account for 2 m difference 
c between fp and center of hodo
c took this out
c         ctk = ctk * 1.05 + ctpi
c         ctp = ctp * 1.05 + ctpi
c         ctk = ctk * 1.00 + ctpi
c         ctp = ctp * 1.00 + ctpi
         v1 = ctk
         v2 = ctp
c try recalculating using ppi and an empircally determined
c distance of 21.0 m to make proton peak line up at 1.0 in RF
         ppi = abs(pp) * (1. + dpp/100.)
         ctk = ctpi + 22.2 * 3.00 * (sqrt(ampi**2 + ppi**2)/ppi -
     >    sqrt(amk**2 + ppi**2) / ppi)
         if(irun.le.4400) then
           ctp = ctpi + 22.2 * 3.00 * (sqrt(ampi**2 + ppi**2)/ppi -
     >    sqrt(amp**2 + ppi**2) / ppi)
         else
           ctp = ctpi + 21.0 * 3.00 * (sqrt(ampi**2 + ppi**2)/ppi -
     >    sqrt(amp**2 + ppi**2) / ppi) - 0.5
         endif
        
      if(j.lt.0) write(6,'(''ct'',7f7.3)') ctpi, ctk, ctp, 
     >   ctp-ctpi, v2, ctk - ctpi, v1


! histograms of p and ytarg by run
         if(dpp.gt.-25. .and. dpp.lt. 45.) then
          k = int((dpp+25.) / 70. * 14.)+1
          dpphistrun(k)=dpphistrun(k)+1
         endif
         dpphistrun(15)=dpphistrun(15)+1


! histograms of p, th, phi
         if(dpp.gt.-50. .and. dpp.lt. 50.) then
          k = int(dpp+50.)+1
          dpph(k)=dpph(k)+1
         endif
         if(dpe.gt.-20. .and. dpe.lt. 20.) then
          k = int((dpe+20.) * 2.5 )+1
          dpeh(k)=dpeh(k)+1
         endif
         if(dthp.gt.-0.05 .and. dthp.lt. 0.0499) then
          k = int(dthp*1000. + 50.)+1
          dthph(k)=dthph(k)+1
         endif
         if(dthe.gt.-0.05 .and. dthe.lt. 0.0499) then
          k = int(dthe*1000. + 50.)+1
          dtheh(k)=dtheh(k)+1
         endif
         if(dphip.gt.-0.05 .and. dphip.lt. 0.0499) then
          k = int(dphip*1000. + 50.)+1
          dphiph(k)=dphiph(k)+1
         endif
         if(dphie.gt.-0.10 .and. dphie.lt. 0.0999) then
          k = int(dphie*500. + 50.)+1
          dphieh(k)=dphieh(k)+1
         endif
! beta histograms (no cuts)
         k = min(20,max(1,int((hbeta-0.9)/0.01)))
         betah(1,k) = betah(1,k)+1
         k = min(19,max(1,int((pbeta-0.8)/0.4*20)))
         betah(2,k) = betah(2,k)+1
         betah(2,20) = betah(2,20)+1

! get kinematic vectors
! positive yptar makes theta smaller in HMS
        the = the0 - dthe
        ep = ep0 * (1. + dpe/100.)
c wrong
c        p_x(1) =  ep * sin(the) * cos(dphie)
c        p_y(1) = -ep * sin(the) * sin(dphie)
c        p_z(1) =  ep * cos(the) 

! positive yptar makes theta bigger in SHMS
        ppi = abs(pp) * (1. + dpp/100.)
        thpi = thp * pi/180. + dthp
c wrong
c        p_x(2) = -ppi * sin(thpi) * cos(dphip)
c        p_y(2) = -ppi * sin(thpi) * sin(dphip)
c        p_z(2) =  ppi * cos(thpi) 
! above is wrong: this is right:

	 call physics_angles(the0, phi0e, dthe, dphie,
     >     ep,p_x(1),p_y(1),p_z(1))

c  for test
c         dthp = dthp + 0.005

	 call physics_angles(thp_rad, phi0p, dthp, dphip, 
     >     ppi,p_x(2),p_y(2),p_z(2))

c for test. No this is wrong
c	 call physics_angles(the0, phi0e, dphie, dthe,
c     >     ep,p_x(1),p_y(1),p_z(1))
c	 call physics_angles(thp_rad, phi0p, dphip, dthp,  
c     >     ppi,p_x(2),p_y(2),p_z(2))

        Empi = e0 + amp - ep - sqrt(ampi**2 + ppi**2)
        Emk = e0 + amp - ep - sqrt(amk**2 + ppi**2)
        Emp = e0 + amp - ep - sqrt(amp**2 + ppi**2)

        w2=(e0 + amp - ep)**2 - p_x(1)**2 - p_y(1)**2 - (p_z(1)-e0)**2
        w=0.
        if(w2.gt.0.) w = sqrt(w2)

        mmpi2 = 
     >     (Empi)**2 - 
     >     (p_x(1) + p_x(2))**2 -
     >     (p_y(1) + p_y(2))**2 -
     >     (p_z(1) + p_z(2)- e0)**2

c        if(irun.eq.7777.and.mmpi2.lt.1.0) 
c     >   write(6,'(/''dbg1'',10f7.3)')
c     >   e0,ep,ppi,mmpi2,pp,dpp,dpe
        if(mmpi2.gt.0.8 .and. mmpi2 .lt. 1.0) then
         kk = min(20, max(1, 
     >    int( 20. * (p_x(1) + p_x(2) + 0.5)) + 1))
         pxdist(kk) = pxdist(kk)+1
         do kkk=1,7
          sum1 = ppi * 0.005 * (kkk-4)  
          kk = min(20, max(1, 
     >     int( 20. * (p_y(1) + p_y(2) + sum1 + 0.5)) + 1))
          pydist(kk,kkk) = pydist(kk,kkk)+1
         enddo
        endif
c look for radiated ep elastic events (proton in shms)
         if(ceraero.lt.2220.5 .and.
     >      abs(ctp).lt.2.5 .and.
     >      cere.gt.2. .and. she.gt.0.7) then
          pt2 = (p_x(1) + p_x(2))**2 +
     >          (p_y(1) + p_y(2))**2
          eprot = sqrt(amp**2 + ppi**2)
          if(epelas.eq.1.and.pt2.lt.0.10) then
           if(abs(p_x(1) + p_x(2)).lt.0.07) then
            kkk = int((p_x(1) + p_x(2)+0.07)/0.14*14)+1
            dpxyzh(1,kkk) = dpxyzh(1,kkk) + 1
            dpxyzh(1,15) = dpxyzh(1,15) + 1
           endif
           if(abs(p_y(1) + p_y(2)).lt.0.07) then
            kkk = int((p_y(1) + p_y(2)+0.07)/0.14*14)+1
            dpxyzh(2,kkk) = dpxyzh(2,kkk) + 1
            dpxyzh(2,15) = dpxyzh(2,15) + 1
           endif
           if(abs(p_z(1) + p_z(2) - e0).lt.0.20) then
            kkk = int((p_z(1) + p_z(2) - e0+0.20)/0.40*14)+1
            dpxyzh(3,kkk) = dpxyzh(3,kkk) + 1
            dpxyzh(3,15) = dpxyzh(3,15) + 1
           endif
          endif
          e0_e = abs(ep)/(1. - 2.*abs(ep)*sin(the/2.)**2/amp)
cx this is wrong! (cant use thpi!)
          e0_p  = amp * (Eprot - amp)  / (amp - Eprot +  ppi*cos(thpi))
          if(pt2.lt.0.001 .and. abs(e0_e - e0_p).lt.1.) then
c            write(6,'(6f7.3)') dpp,pt2, e0_e, e0_p, e0_e - e0_p
            k = min(14,max(1,int((dpp+25)/5.) + 1))
            kk = min(20,max(1,int((e0_e - e0_p + 1.)/0.1)+1))
            eprh(k,kk) = eprh(k,kk) + 1
            eprh(k,21) = eprh(k,21) + 1
           endif
         endif

! aero and sh histos
         xaero = pdcx + 231. * pdcxp
         yaero = pdcy + 231. * pdcyp

c fill in wider limits acceptnce array. No cuts for these
c events
         if(abs(dpe).lt.13 .and.
c     >    hgtry.gt.0. .and.
     >    abs(dthe).lt.0.100 .and. 
     >    abs(dphie).lt.0.045 .and. hexit.eq.1) then
          ith = int((dthe + 0.100) / 0.200 * 100)+1
          iphi = int((dphie + 0.045) / 0.090 * 100.)+1
          ipt = int((dpe + 13.) / 26. * 30.)+1
          accepw(1,ipt,ith,iphi) = accepw(1,ipt,ith,iphi) + 1
         endif
         if(abs(dpp-10.).lt.30 .and.
c     >    pgtry.gt.0. .and.
     >    abs(dthp).lt.0.100 .and. 
     >    abs(dphip).lt.0.045 .and. pexit.eq.1) then
          ith = int((dthp + 0.100) / 0.200 * 100)+1
          iphi = int((dphip + 0.045) / 0.090 * 100.)+1
          ipt = int((dpp + 20.) / 60. * 30.)+1
          accepw(3,ipt,ith,iphi) = accepw(3,ipt,ith,iphi) + 1
         endif

         call accminmax(dpe,dpp,
     >     dthhmsmin,dthshmsmin,dphihmsmin,dphishmsmin,
     >     dthhmsmax,dthshmsmax,dphihmsmax,dphishmsmax,
     >     settoanalyze)
c new way to get acceptance
         call newacc(dpe,dphie,dthe,okhms,
     >               dpp,dphip,dthp,okshms)
         call acccorr(dpe,dphie,dthe,
     >               dpp,dphip,dthp,wcorr)
         if(noacccorr) wcorr = 1.0

c get efficiency of cere and hg versus p, xptar, yptar
         if(dpe.gt.dphmslo .and. dpe.lt.dphmshi .and.
     >    dpp.gt.dpshmslo .and. dpp.lt.dpshmshi .and.
     >    abs(dthe).lt.dthhms .and.
     >    abs(dthp).lt.dthshms .and.
     >    abs(dphie).lt.dphihms .and.
     >    abs(dphip).lt.dphishms .and.
     >       (skipok .or. (
     >       okhms.eq.1 .and. okshms.eq.1)) .and.
     >       pexit.eq.1 .and. hexit.eq.1.and. 
     >       hcal.eq.1 .and. scal.eq.1 .and.
     >    abs(xaero).lt.xmaxaero .and. abs(yaero).lt.ymaxaero.and.
     >    ctpi.gt.-1.0 .and. ctpi.lt.1. .and.
     >    epelas.eq.0 .and. ceraero.gt.4.0 
     >    .and. shp.gt.0.02 .and. shp.lt.0.6 .and.
c high value for this study
     >    she.gt.0.90) then
c cere efficiency
          if (ppi .lt. 2.8 .or. cerhg .gt. 0.5) then
           ith = int((dthe + 0.070) / 0.140 *  20.)+1
           iphi = int((dphie + 0.030) / 0.060 * 20.)+1
           ipt = int((dpe + 12.)/26. * 30.)+1
           cereff(ipt,iphi,ith,1) = cereff(ipt,iphi,ith,1) + 1
           if(cere.gt.0.3) cereff(ipt,iphi,ith,2) = 
     >                     cereff(ipt,iphi,ith,2) + 1
           if(cere.gt.1.1) cereff(ipt,iphi,ith,3) = 
     >                     cereff(ipt,iphi,ith,3) + 1
C HMS cer histograms by momentum, with accidentals subtracted
           k = int((dpe+12.)/24.*12.)+1
           k = max(1,min(k,12))
           kk = max(1,min(15,int(cere/0.5)+1))
           if(she.gt.0.8 .and. shp.lt.0.7 .and. ceraero.gt.2.5) then
            if(ispireal.eq.1) then
             cereh(k,kk) = cereh(k,kk)+1
             cereh(k,16) = cereh(k,16)+1
            endif
            if(ispiacc.eq.1) then
             cereh(k,kk) = cereh(k,kk) - 0.25
             cereh(k,16) = cereh(k,16) - 0.25
            endif
           endif

          endif
c hg efficiency
          if(cere.gt.2. .and. ppi.gt.2.8 .and. pp.lt. 0) then
           ith = int((dthp + 0.050) / 0.100 * 20)+1
           iphi = int((dphip + 0.030)/ 0.060 * 20.)+1
           ipt = int((dpp +18.) / 53. * 30.)+1
           ith = min(30,max(1,ith))
           iphi = min(20,max(1,iphi))
           ipt = min(20,max(1,ipt))
           if(ppi.gt.3.0 .and. ppi.lt. 3.25) then
            hgeff(ipt,iphi,ith,1) = hgeff(ipt,iphi,ith,1) + 1
            if(cerhg.gt.0.5) hgeff(ipt,iphi,ith,2) = 
     >       hgeff(ipt,iphi,ith,2) + 1
           endif
           if(ppi.gt.3.25.and.ppi.le.3.7) then
            hgeff(ipt,iphi,ith,3) = hgeff(ipt,iphi,ith,3) + 1
            if(cerhg.gt.0.5) hgeff(ipt,iphi,ith,4) = 
     >       hgeff(ipt,iphi,ith,4) + 1
           endif
           if(ppi.gt.3.7) then
            hgeff(ipt,iphi,ith,5) = hgeff(ipt,iphi,ith,5) + 1
            if(cerhg.gt.0.5) hgeff(ipt,iphi,ith,6) = 
     >       hgeff(ipt,iphi,ith,6) + 1
           endif
          endif
         endif

c hut distributions HMS
c changedd to have x,y at SC2
         if(she.gt.0.5 .and. hcal.eq.1 .and. hexit.eq.1 .and.
     >    abs(pp)/(e0-abs(ep0)).lt.0.7) then
          iy = min(9,max(1,int((hdcy + 320.*hdcyp + 35.)/70. * 9)+1))
          ix = min(50,max(1,int((hdcx + 320.*hdcxp + 80.)/160. * 50)+1))
          idx = min(50,max(1,int((hdcxp + 0.100)/.200 * 50)+1))
          huth(ix,idx,iy,1) = huth(ix,idx,iy,1) + 1.
         endif
c hut distributions SHMS at fp.
         if(abs(pdcx).lt.50.0 .and. scal.eq.1 .and.pexit.eq.1 .and.
     >    abs(pp)/(e0-abs(ep0)).lt.0.7) then
          iy = min(9,max(1,int((pdcy + 0.*pdcyp + 50.)/100. * 9)+1))
          ix = min(50,max(1,int((pdcx + 0.*pdcxp + 50.)/100. * 50)+1))
          idx = min(50,max(1,int((pdcxp + 0.100)/.200 * 50)+1))
          huts(ix,idx,iy,1) = huts(ix,idx,iy,1) + 1.
         endif

c changed sh2h to be shp * p (ie total energy) to
c look for min. ionaization peak. Requie HG to see muons
c preferentailly
         if(she.gt.0.7 .and. ceraero.gt.2.5) then
           if(cerhg.gt.2.0) then 
            k = min(15,max(1,int(shp*ppi/ 0.05)+1))
            sh2h(k) = sh2h(k)+1 
            sh2h(16) = sh2h(16)+1
           endif
          endif

c main definition electrons
c Cuts on delta regions to be used and also electron PID
c main definition electrons
         if(dpe.gt.dphmslo .and. dpe.lt.dphmshi .and.
     >      dpp.gt.dpshmslo .and. dpp.lt.dpshmshi .and.
     >      dthe.lt.dthhmsmax .and.
     >      dthp.lt.dthshmsmax .and.
     >      dphie.lt.dphihmsmax .and.
     >      dphip.lt.dphishmsmax .and.
     >      dthe.gt.dthhmsmin .and.
     >      dthp.gt.dthshmsmin .and.
     >      dphie.gt.dphihmsmin .and.
     >      dphip.gt.dphishmsmin .and.
c added cut on W here. TOok out again
c     >       w.gt.1.8 .and.
c added weight cut
     >       wcorr.gt.0. .and.
c added ytar cut
     >       abs(pgtry).lt.7.0 .and.
     >       (skipok .or. (
     >       okhms.eq.1 .and. okshms.eq.1)) .and.
     >       hcal.eq.1 .and. scal. eq. 1 .and.
     >       pexit.eq.1 .and. hexit.eq.1.and. 
c add cuts at aerogel xy
     >      abs(xaero).lt.xmaxaero .and. abs(yaero).lt.ymaxaero.and.
c requiring pexti and hexit only lowers rate by 0.1%
c lower cer threshold for sp18
     >      (cere.gt.1.1 .or. 
c changed to no cut at all April 2022
c     >       irun.lt.4400) .and.
c but this increases e+ rate by more than factor of 10!
c put back again Feb. 2023. Typical electron rate
c goes down by about 1% for e- runs, which might in
c fact be from pi- misIDed as e-, to this is good
     >       (irun.lt.4400.and.cere.gt.0.3)) .and.
c lowered to 0.6: increase below for pion definition
     >       she.gt.0.60) then
c         write(6,'(i4,i6,f8.4)') irun,j,dthe

! Coin time pion histos at SHMS hodo planes
          ppi = abs(pp) * (1. + dpp/100.)
          if(ctpi.gt.-3.0 .and. ctpi.lt.1. .and.
     >      ceraero.gt.2.5 .and.
     >      (ppi.lt.hgpmin .or. cerhg.gt.2.0)) then
           k = max(1,min(10,int((ctpi + 3.0) / 0.4 ) + 1)) 
           xpad = pdcx + 56. * pdcxp
           ypad = pdcy + 56. * pdcyp
           if(abs(xpad).lt.60. .and.abs(ypad).lt.40.) then
            ix = int((xpad+60.)/120.*100.)+1
            iy = int((ypad+40.)/80.*3.)+1
            ctx(1,ix,iy,k) = ctx(1,ix,iy,k)+1
            ix = int((xpad+60.)/120.*3.)+1
            iy = int((ypad+40.)/80.*100.)+1
            cty(1,ix,iy,k) = cty(1,ix,iy,k)+1
           endif
           xpad = pdcx + 266. * pdcxp
           ypad = pdcy + 266. * pdcyp
           if(abs(xpad).lt.60. .and.abs(ypad).lt.40.) then
            ix = int((xpad+60.)/120.*100.)+1
            iy = int((ypad+40.)/80.*3.)+1
            ctx(2,ix,iy,k) = ctx(2,ix,iy,k)+1
            ix = int((xpad+60.)/120.*3.)+1
            iy = int((ypad+40.)/80.*100.)+1
            cty(2,ix,iy,k) = cty(2,ix,iy,k)+1
           endif
           xpad = hdcx + 90. * hdcxp
           ypad = hdcy + 90. * hdcyp
           if(abs(xpad).lt.60. .and.abs(ypad).lt.40.) then
            ix = int((xpad+60.)/120.*100.)+1
            iy = int((ypad+40.)/80.*3.)+1
            ctx(3,ix,iy,k) = ctx(3,ix,iy,k)+1
            ix = int((xpad+60.)/120.*3.)+1
            iy = int((ypad+40.)/80.*100.)+1
            cty(3,ix,iy,k) = cty(3,ix,iy,k)+1
           endif
           xpad = hdcx + 310. * hdcxp
           ypad = hdcy + 310. * hdcyp
           if(abs(xpad).lt.60. .and.abs(ypad).lt.40.) then
            ix = int((xpad+60.)/120.*100.)+1
            iy = int((ypad+40.)/80.*3.)+1
            ctx(4,ix,iy,k) = ctx(4,ix,iy,k)+1
            ix = int((xpad+60.)/120.*3.)+1
            iy = int((ypad+40.)/80.*100.)+1
            cty(4,ix,iy,k) = cty(4,ix,iy,k)+1
           endif
          endif ! end check ctpi for hodo histos

c get SHMS and  hodo time relative to rf. Sometimes need to correct
c for alternate bucket.
          hfptcr = hfpt - hrf + 401.
c run 5038 is first one where rf timing works
          if(irun.ge.5038.and.irun.le.5046) hfptcr = hfptcr- rff/2.
          if(irun.ge.5183.and.irun.le.5185) hfptcr = hfptcr- rff/2.
          if(irun.ge.5244.and.irun.le.5377) hfptcr = hfptcr- rff/2.
          if(irun.ge.5602.and.irun.le.5662) hfptcr = hfptcr- rff/2.
          if(irun.ge.5840.and.irun.le.5941) hfptcr = hfptcr- rff/2.
          if(irun.ge.6049.and.irun.le.6068) hfptcr = hfptcr- rff/2.
          if(irun.ge.6080.and.irun.le.6129) hfptcr = hfptcr- rff/2.
          if(irun.ge.6219.and.irun.le.6267) hfptcr = hfptcr- rff/2.
          if(irun.ge.6312.and.irun.le.6511) hfptcr = hfptcr- rff/2.
          if(irun.ge.6518.and.irun.le.6600) hfptcr = hfptcr- rff/2.
          if(irun.ge.7702.and.irun.le.7736) hfptcr = hfptcr- rff/2.
          if(irun.ge.7978.and.irun.le.7989) hfptcr = hfptcr- rff/2.
          if(irun.ge.8315) hfptcr = hfptcr- rff/2.

c          if(irun.ge.8315.and.irun.le.9999) hfptcr = hfptcr- rff/2.
c          if(irun.ge.7702.and.irun.le.7736) hfptcr = hfptcr- rff/2.
c          if(irun.ge.8050.and.irun.le.8180) hfptcr = hfptcr- rff/2.
          hfptc = hfptcr - rff*int(hfptcr/rff)
          hnrf = int(hfptcr/rff)
          pfptcr = pfpt - prf + 401.
c adjust for even/odd buckets
          if(irun.ge.5038.and.irun.le.5046) pfptcr = pfptcr- rff/2.
          if(irun.ge.5183.and.irun.le.5185) pfptcr = pfptcr- rff/2.
          if(irun.ge.5244.and.irun.le.5377) pfptcr = pfptcr- rff/2.
          if(irun.ge.5602.and.irun.le.5662) pfptcr = pfptcr- rff/2.
          if(irun.ge.5840.and.irun.le.5941) pfptcr = pfptcr- rff/2.
          if(irun.ge.6049.and.irun.le.6068) pfptcr = pfptcr- rff/2.
          if(irun.ge.6080.and.irun.le.6129) pfptcr = pfptcr- rff/2.
          if(irun.ge.6219.and.irun.le.6267) pfptcr = pfptcr- rff/2.
          if(irun.ge.6312.and.irun.le.6511) pfptcr = pfptcr- rff/2.
          if(irun.ge.6518.and.irun.le.6600) pfptcr = pfptcr- rff/2.
          if(irun.ge.7702.and.irun.le.7736) pfptcr = pfptcr- rff/2.
          if(irun.ge.7978.and.irun.le.7989) pfptcr = pfptcr- rff/2.
          if(irun.ge.8050.and.irun.le.8070) pfptcr = pfptcr- rff/2.
          if(irun.ge.8073.and.irun.le.8180) pfptcr = pfptcr- rff/2.
          if(irun.ge.8315.and.irun.le.9999) pfptcr = pfptcr- rff/2.

c overall adjustment
          pfptcr = pfptcr + 0.10

c doesn't seem to be needed
c          if(irun.lt.5360) pfptcr = pfptcr + 0.10

          if(irun.gt.7590) pfptcr = pfptcr- 1.0

c adjustment for lower beam energies
c 6 gev
          if(irun.gt.7870.and.irun.lt.7978) pfptcr = pfptcr - 0.48
c 8gev
          if(irun.ge.7978.and.irun.lt.7990) pfptcr = pfptcr - 0.285
          if(irun.ge.7990.and.irun.lt.9999) pfptcr = pfptcr - 0.285

c extra small shifts 
c          if(irun.gt.5030.and.irun.le.5938)
c     >     pfptcr = pfptcr + 0.04
c          if(irun.gt.5938.and.irun.le.6008)
c     >     pfptcr = pfptcr - 0.02
c          if(irun.gt.7888.and.irun.le.9999)
c     >     pfptcr = pfptcr + 0.04

c for electrons
          pfptcer = pfptcr 
          pfptce = pfptcer - rff*int(pfptcer/rff)

c modulo 4 nsec for pions
c correct for time-of-flight over 21 m m
          pfptcr = pfptcr - 21.0 * 3.0 *ampi**2/2./ppi**2
          pfptc = pfptcr - rff*int(pfptcr/rff)
          pnrf = int(pfptcr/rff)

c for kaons
          pfptcKr = pfptcer  - 21.0 * 3.0 *
     >     sqrt(amk**2 + ppi**2) / ppi - 0.5
          pfptck = pfptckr - rff*int(pfptckr/rff)
          if(pfptck.lt.0. .or. pfptck.gt.4.01) write(6,
     >     '(''error pfptck'',5f10.4)') pfptck,pfptcr,ctk,ctpi,rff
c for protons
c added -0.08 offset to make peak centered at 1.0
c took out 9/25 but changed 21.0 to 21.6
          pfptcpr = pfptcer  - 21.6 * 3.0 *
     >     sqrt(amp**2 + ppi**2) / ppi + 0.6
c small adjustment
          if(irun.le.5377) pfptcpr = pfptcpr + 0.1
          pfptcp = pfptcpr - rff*int(pfptcpr/rff)
          if(pfptcp.lt.0. .or. pfptcp.gt.4.01) write(6,
     >     '(''error pfptcp'',5f10.4)') pfptcp,pfptcr,ctp,ctpi,rff

          if(j.lt.0) write(6,'(''pfptc e pi k p'',4f7.2)') 
     >     pfptc,pfptce,pfptck,pfptcp

c         if((j/100)*100.eq.j) write(6,'(''rf'', 3i5,6f8.2)') 
c     >    hnrf, pnrf, hnrf - pnrf -10,
c     >    ctpi,hrf,hfpt,hfptcr,hfptc,pfptc

! Don't Apply target position correction (ignoring cos(thp) term)
c (it is already taken into account by using rf timing!)
c         pfptc  = pfptc  - hztar / 30. 

c cointime spectra for electrons/poistrons in SHMS
c use randoms only
           if(ctpi.gt.-30.0 .and. ctpi.lt.100. .and.
     >      abs(ctpi).gt.8. .and.
     >      she.gt.0.75 .and.
     >      cere.gt.1.0 .and.
     >      shp.gt.0.8 .and. 
     >      (cerng.gt.1 .or. irun.gt.4400) .and.
     >      cerhg.gt.1.0.and.
     >      ceraero.gt.4.0) then
c need this as ctpi already has tof correction for pions in it
            cte = ctpi + 60.*ampi**2/2./ppi**2
            kk = int((cte + 30.0) / 4.008)
            cte = cte + 30. - kk * 4.008
            kk = int(cte/0.1002)+1
            cntscte(kk,1) = cntscte(kk,1)+1
           endif

c RF spectra for electrons/poistrons in SHMS
c use randoms only
           if(ctpi.gt.-60.0 .and. ctpi.lt.100. .and.
     >      abs(ctpi).gt.8. .and.
     >      shp.gt.0.8 .and. 
     >      cerhg.gt.2.0.and.
     >      ceraero.gt.4.0) then
            kk = int(pfptce/0.1002) + 1
            cntscte(kk,2) = cntscte(kk,2)+1
           endif


! coin time pion in bins of p and four cerenkov combinations, for 
! runs with positive SHMS polairy
! Also, fp - rf time
          if(ctpi.gt.-2.0 .and. ctpi.lt.6. .and.
     >     shp .lt. 0.7 .and. ppi.gt. 1.8) then
           ipm=1
           if(pp.lt.0.) ipm=2
           if(ppi.lt. 3.8) then
            ip = int((ppi-1.8)*10)+1
            k = max(1,min(40,int((ctpi + 2.0) / 0.2 ) + 1)) 
            if(ceraero.gt.2.5 .and.cerhg.lt.1.5) 
     >       cthist(ip,1,k) = cthist(ip,1,k) + 1
            if(ceraero.gt.2.5 .and.cerhg.ge.1.5) 
     >       cthist(ip,2,k) = cthist(ip,2,k) + 1
            if(ceraero.le.2.5 .and.cerhg.lt.1.5) 
     >       cthist(ip,3,k) = cthist(ip,3,k) + 1
            if(ceraero.le.2.5 .and.cerhg.ge.1.5) 
     >       cthist(ip,4,k) = cthist(ip,4,k) + 1
            k = max(1,min(40,int((pfptc) / 0.1 ) + 1)) 
            if(ctpi.lt.2.and. irun.gt.5400) then
             if(ceraero.gt.2.5 .and.cerhg.lt.0.5) 
     >        ctrfhist(ip,2,k,ipm) = ctrfhist(ip,2,k,ipm) + 1
             if(ceraero.gt.2.5 .and.cerhg.ge.1.5) 
     >        ctrfhist(ip,3,k,ipm) = ctrfhist(ip,3,k,ipm) + 1
             if(ceraero.le.0.5 .and.cerhg.lt.0.5) 
     >        ctrfhist(ip,4,k,ipm) = ctrfhist(ip,4,k,ipm) + 1
             ctrfhist(ip,1,k,ipm) = ctrfhist(ip,1,k,ipm) + 1
            endif ! tighter ctpi cut
           endif ! check on pion momentum<3.8

           if(ceraero.gt.2.5 .and. hfptcr.gt.0. .and.
     >      hfptcr.lt.1000.) then
            k = int(hfptcr*5.)
            ctrf(k,2) = ctrf(k,2)+1
            k = max(1,min(20,int((hfptc) / 0.1 ) + 1)) 
            ctrfrun(k,2) = ctrfrun(k,2) + 1
            ctrfrun(21,2) = ctrfrun(21,2) + 1
            do kk=1,10
             k = max(1,min(20,int((hfptcc(kk)) / 0.1 ) + 1)) 
             ctrfrn(kk,k,2) = ctrfrn(kk,k,2) + 1
            enddo
           endif
           if(ceraero.gt.2.5 .and. pfptcr.gt.0. .and.
     >      pfptcr.lt.1000.) then
            k = int(pfptcr*5.)
            ctrf(k,1) = ctrf(k,1)+1
            k = max(1,min(20,int((pfptc) / 0.2 ) + 1)) 
            ctrfrun(k,1) = ctrfrun(k,1) + 1
            ctrfrun(21,1) = ctrfrun(21,1) + 1
            do kk=1,10
             k = max(1,min(20,int((pfptcc(kk)) / 0.1 ) + 1)) 
             ctrfrn(kk,k,1) = ctrfrn(kk,k,1) + 1
            enddo
c           if((j/100)*100.eq.j) write(6,
c     >      '(4f8.3)') ppi,ctpi,hgtry,pgtry
           endif
c kaon rf
           if(cerhg.lt.0.5 .and. pfptck.gt.0. .and.
     >      pfptck.lt.1000. .and.
     >      (ceraero.lt.0.5 .or. ppi.gt.2.6)) then
            k = max(1,min(20,int((pfptck) / 0.2 ) + 1)) 
            ctrfrun(k,3) = ctrfrun(k,3) + 1
            ctrfrun(21,3) = ctrfrun(21,3) + 1
           endif
c proton rf
           if(cerhg.lt.0.5 .and. pfptcp.gt.0. .and.
     >      pfptcp.lt.1000. .and. irun.ge.5038 .and.
     >      ceraero.lt.3.5) then
            k = max(1,min(20,int((pfptcp) / 0.2 ) + 1)) 
            ctrfrun(k,4) = ctrfrun(k,4) + 1
            ctrfrun(21,4) = ctrfrun(21,4) + 1
           endif

          endif

! ytarg histo
          zh = hztar
          zp = pztar
          call newz(dpp,pdcy,pdcyp,ztnew)
          ztnew = ztnew / sin(thp/57.3)
          zd = zh - zp
          zdnew = zh - ztnew 

          if(abs(ctpi).lt.2. .and. ceraero.gt.2.5) then
           kk = min(16,max(1,int(zh+9.)))
           if(abs(dpe).lt.8.) then
            yth(1,kk) = yth(1,kk)+1
           else
            yth(2,kk) = yth(2,kk)+1
           endif

           kk = min(16,max(1,int(zp+9.)))
           if(dpp.gt.-10.and.dpp.lt.20.) then
            yth(3,kk) = yth(3,kk)+1
           else
            yth(4,kk) = yth(4,kk)+1
           endif

           kk = min(16,max(1,int(zd+9.)))
           if(dpp.gt.-10.and.dpp.lt.20.) then
            yth(5,kk) = yth(5,kk)+1
           else
            yth(6,kk) = yth(6,kk)+1
           endif
          endif

! all events
          if(abs(ctpi).gt.0. .and. ceraero.gt.2.5) then
           k=7
           if(dpp.gt. 10.and.dpp.lt. 20.) k=8 
           if(dpp.gt.  0.and.dpp.lt. 10.) k=9  
           if(dpp.gt. -5.and.dpp.lt.  0.) k=10
           if(dpp.gt.-10.and.dpp.lt. -5.) k=11
           if(dpp.gt.-15.and.dpp.lt.-10.) k=12
           if(dpp.lt.-15.) k=13
           kk = min(16,max(1,int(zp+9.)))
           yth(k ,kk) = yth( k,kk)+1
          endif

! coin time histos in 1 nsec bins
c from this study, looks like optimum ceraero cut is 2.5
c         write(6,'(/i8,8f8.3)') j,ctpi,ceraero,shp
c also look at kaons
         if(ctpi.gt.-18.0 .and. ctpi.lt.28. .and.
     >     ctk.gt.-18. .and. ctk .lt.28. .and.
     >     shp .gt. 0.02 .and.
     >     shp .lt. 0.7) then
           k = max(1,min(50,int((ctpi + 18.) / 1. ) + 1)) 
           ctpihw(k,1) = ctpihw(k,1)+1
           if(ceraero.gt.1.) ctpihw(k,2) = ctpihw(k,2)+1
           if(ceraero.gt.2.) ctpihw(k,3) = ctpihw(k,3)+1
           if(ceraero.gt.3.) ctpihw(k,4) = ctpihw(k,4)+1
           if(ceraero.gt.4.) ctpihw(k,5) = ctpihw(k,5)+1
           k = max(1,min(50,int((ctk + 18.) / 1. ) + 1)) 
           ctpihw(k,6) = ctpihw(k,6)+1
           if(ceraero.lt.3.)  ctpihw(k,7) = ctpihw(k,7)+1
           if(ceraero.lt.2.)  ctpihw(k,8) = ctpihw(k,8)+1
           if(ceraero.lt.1.)  ctpihw(k,9) = ctpihw(k,9)+1
           if(ceraero.lt.0.1) ctpihw(k,10) = ctpihw(k,10)+1
         endif


! Get flags for real or accidental pions, kaons
! reals
         ispireal = 0
         ispreal = 0
         ispiacc = 0
         ispacc = 0
         ispiaccL = 0
         ispiaccH = 0
         iskreal = 0
         iskacc = 0

c spring18 and 19 have narrow ctpi cuts
c use narrower cut for kaons
         if(irun.lt.4400 .or. irun.gt.7590) then
c this is too tight: cuts about 5% of events
c           tcut = 0.75
c 9/4/20 changed from 0.9 to 1.2
c           tcut = 1.2
c 10/16/21 changed down to 0.9
c           tcut = 0.9
c 8/2022 changed again
           tcut = 1.0
           tcutk = 0.8
           if(irun.gt.7590) tcutk = 1.0
           if(abs(ctpi - 0.0).lt.tcut) ispireal = 1
           if(abs(ctk - 0.0).lt.tcutk) iskreal = 1
           if(abs(ctp - 0.0).lt.tcut) ispreal = 1
! accidentals. Avoid ctpi <10 region, has protons
           if(abs(ctpi  -8.0).lt.tcut) ispiacc = 1
           if(abs(ctpi -12.0).lt.tcut) ispiacc = 1
           if(abs(ctpi  +4.0).lt.tcut) ispiacc = 1
           if(abs(ctpi  +8.0).lt.tcut) ispiacc = 1
           if(abs(ctp  -8.0).lt.tcut) ispacc = 1
           if(abs(ctp -12.0).lt.tcut) ispacc = 1
           if(abs(ctp  +8.0).lt.tcut) ispacc = 1
           if(abs(ctp  +12.0).lt.tcut) ispacc = 1
           if(abs(ctpi  -8.0).lt.tcut) ispiaccL = 1
           if(abs(ctpi -12.0).lt.tcut) ispiaccL = 1
           if(abs(ctpi  +4.0).lt.tcut) ispiaccH = 1
           if(abs(ctpi  +8.0).lt.tcut) ispiaccH = 1
           if(abs(ctk   -8.0).lt.tcutk) iskacc = 1
           if(abs(ctk  -12.0).lt.tcutk) iskacc = 1
           if(abs(ctk   +4.0).lt.tcutk) iskacc = 1
           if(abs(ctk   +8.0).lt.tcutk) iskacc = 1
         else
c Fall18 runs
           tcut=2.2
c           if(settoanalyze.eq.2) tcut=2.0
           if(abs(ctpi - 0.0).lt.tcut) ispireal = 1
           if(abs(ctk - 0.0).lt.tcut) iskreal = 1
           if(abs(ctp - 0.0).lt.tcut) ispreal = 1
! accidentals
           if(abs(ctpi - 8.0).lt.tcut) ispiacc = 1
           if(abs(ctpi -16.0).lt.tcut) ispiacc = 1
           if(abs(ctpi + 8.0).lt.tcut) ispiacc = 1
           if(abs(ctpi +16.0).lt.tcut) ispiacc = 1
           if(abs(ctpi - 8.0).lt.tcut) ispiaccL = 1
           if(abs(ctpi -16.0).lt.tcut) ispiaccL = 1
           if(abs(ctpi + 8.0).lt.tcut) ispiaccH = 1
           if(abs(ctpi +16.0).lt.tcut) ispiaccH = 1
           if(abs(ctk  -24.0).lt.tcut) iskacc = 1
           if(abs(ctk  -16.0).lt.tcut) iskacc = 1
           if(abs(ctk  + 8.0).lt.tcut) iskacc = 1
           if(abs(ctk  +16.0).lt.tcut) iskacc = 1
           if(abs(ctp  -8.0).lt.tcut) ispacc = 1
           if(abs(ctp -16.0).lt.tcut) ispacc = 1
           if(abs(ctp  +8.0).lt.tcut) ispacc = 1
           if(abs(ctp  +16.0).lt.tcut) ispacc = 1
          endif

c is this very likely an electron in SHMS?
c no longer used, as lets in electrons above 3 GeV
          iselec = 1
          if(shp.lt.0.80) iselec = 0
          if(cerng .lt. 1 .and. irun.lt.4400) iselec = 0 
          if(cerhg .lt. 1) iselec = 0
          
! Get pion pt and phicm
         nu = e0 - ep
         q2 = 2. * e0 * ep * (1. - p_z(1)/ep)
         x = q2 / 2. / amp / nu
         epv(1)=p_x(1)
         epv(2)=p_y(1)
         epv(3)=p_z(1)
         epv(4)=ep
         p1vp(1)=p_x(2)
         p1vp(2)=p_y(2)
         p1vp(3)=p_z(2)

         p1vp(4)= sqrt(ppi**2 + ampi**2)
         zpi = p1vp(4) / nu

! test
c        call getphi(e0,epv,p1vp,phicm)
c        write(6,'(/8f7.4)') 
c    >    p_x(1), p1vp(1), p_x(1) + p1vp(1),
c    >    p_y(1), p1vp(2), p_y(1) + p1vp(2),phicm
c
c        p1vp(2) = p_y(2) + ppi * 0.020
c        call getphi(e0,epv,p1vp,phicm)
c        write(6,'(8f7.4)') 
c    >    p_x(1), p1vp(1), p_x(1) + p1vp(1),
c    >    p_y(1), p1vp(2), p_y(1) + p1vp(2),phicm
c
c        p1vp(1) = p_x(2) + ppi * 0.020
c        call getphi(e0,epv,p1vp,phicm)
c        write(6,'(8f7.4)') 
c    >    p_x(1), p1vp(1), p_x(1) + p1vp(1),
c    >    p_y(1), p1vp(2), p_y(1) + p1vp(2),phicm

c        p1vp(1)=p_x(2)
c        p1vp(2)=p_y(2)
c end test

         call getphi(e0,epv,p1vp,phicm)
         call getcos(e0,epv,p1vp,ampi,cthcm,pt)
          t = -1.0 * (
     >     (p1vp(3) + epv(3) - e0)**2 - 
     >     (p1vp(4) - nu)**2 -
     >     (p1vp(1) + epv(1))**2 -
     >     (p1vp(2) + epv(2))**2) 

c for kaons
         p1vp(4)= sqrt(ppi**2 + amk**2)
         zk = p1vp(4) / nu
         call getphi(e0,epv,p1vp,phicmk)
         call getcos(e0,epv,p1vp,amk,cthcmk,ptk)

c for protons
         p1vp(4)= sqrt(ppi**2 + amp**2)
         zp = p1vp(4) / nu
c changed to use p, not E
         zp = ppi / nu
         call getphi(e0,epv,p1vp,phicmp)
         call getcos(e0,epv,p1vp,amp,cthcmp,ptp)
c pt and phicm same for pi and p, cthcm sligthly differ
         if(abs(ppi-3.0).lt.0.001) then
            write(6,'(''cos,pt,phi'',6f7.3)') cthcm,cthcmp,
     >           pt,ptp,phicm,phicmp
         endif
         
        w2=(e0 + amp - ep)**2 - p_x(1)**2 - p_y(1)**2 - (p_z(1)-e0)**2
        w=0.
        if(w2.gt.0.) w = sqrt(w2)

        call gethgcut(irun,pdcx,pdcxp,pdcy,
     >   pdcyp,xycer,ppi,heff,hgpmin)

! RF timing for 3 aero cuts versus ppi
          fact = 0.
          if(ctpi.gt.-2.0 .and. ctpi.lt.2.0) fact = 1.0
          if(ctpi.gt.-18.0 .and. ctpi.lt.-2.0) fact = -0.25

          if(fact .ne.0. .and. shp .lt. 0.7) then
           if(irun.gt.5100 .and. pp.gt.0.0.and. ppi.gt.2.2
     >       .and. ppi.lt.3.7 .and. pfptc.gt.0. .and.
     >      pfptc.lt.4.) then
            k = int(pfptc/4.*16) + 1
            kk = int((ppi-2.2)/0.15) + 1
c            if(kk.eq.10.and.k.eq.13) write(6,'(''rf'',8f7.2)')
c     >       ctpi,fact,pfptc,ppi,ceraero,cerhg
            rfhp(kk,k,1) = rfhp(kk,k,1) + fact
            rfhp(kk,21,1) = rfhp(kk,21,1) + fact
            if(ceraero.gt.2.5) then
             rfhp(kk,k,2) = rfhp(kk,k,2) + fact
             rfhp(kk,21,2) = rfhp(kk,21,2) + fact
            endif
            if(ceraero.gt.4.0) then
             rfhp(kk,k,3) = rfhp(kk,k,3) + fact
             rfhp(kk,21,3) = rfhp(kk,21,3) + fact
            endif
            if(cerhg.gt.0.5.and.heff.gt.0.) then
             rfhp(kk,k,4) = rfhp(kk,k,4) + fact
             rfhp(kk,21,4) = rfhp(kk,21,4) + fact
             if(ceraero.gt.2.5) then
              rfhp(kk,k,5) = rfhp(kk,k,5) + fact
              rfhp(kk,21,5) = rfhp(kk,21,5) + fact
             endif
             if(ceraero.gt.4.0) then
              rfhp(kk,k,6) = rfhp(kk,k,6) + fact
              rfhp(kk,21,6) = rfhp(kk,21,6) + fact
             endif
            endif
           endif
          endif

! Kaon RF timing versus ppi
          fact = 0.
          if(ctk.gt.-2.0 .and. ctk.lt.2.0) fact = 1.0
          if(ctk.gt.-18.0 .and. ctk.lt.-2.0) fact = -0.25

          if(fact .ne.0. .and. shp .lt. 0.7) then
           if(irun.gt.5100 .and. pp.gt.0.0.and. ppi.gt.2.2
     >       .and. ppi.lt.3.7 .and. pfptck.gt.0. .and.
     >      pfptck.lt.4.0 .and. heff.gt.0.0 
     >      .and. cerhg.lt.0.5) then
            k = int(pfptck/4.*16) + 1
            kk = int((ppi-2.2)/0.15) + 1
c            if(kk.eq.10.and.k.eq.13) write(6,'(''rf'',8f7.2)')
c     >       ctpi,fact,pfptc,ppi,ceraero,cerhg
c            if(ppi.gt.3.3) write(6,'(''rf ppi'',i3,f7.3)') kk,ppi
            rfhp(kk,k,7) = rfhp(kk,k,7) + fact
            rfhp(kk,21,7) = rfhp(kk,21,7) + fact
            if(ceraero.lt.1.0) then
             rfhp(kk,k,8) = rfhp(kk,k,8) + fact
             rfhp(kk,21,8) = rfhp(kk,21,8) + fact
            endif
            if(ceraero.lt.2.5) then
             rfhp(kk,k,9) = rfhp(kk,k,9) + fact
             rfhp(kk,21,9) = rfhp(kk,21,9) + fact
            endif
           endif
          endif

! proton RF timing versus ppi
          fact = 0.
          if(ctp.gt.-2.0 .and. ctp.lt.2.0) fact = 1.0
          if(ctp.gt.-18.0 .and. ctp.lt.-2.0) fact = -0.25

          if(fact .ne.0. .and. shp .lt. 0.7) then
           if(irun.gt.5100 .and. pp.gt.0.0.and. ppi.gt.2.2
     >       .and. ppi.lt.3.7 .and. pfptcp.gt.0. .and.
     >      pfptcp.lt.4.0
     >      .and. cerhg.lt.0.5) then
            k = int(pfptcp/4.*16) + 1
            kk = int((ppi-2.2)/0.15) + 1
c            if(kk.eq.10.and.k.eq.13) write(6,'(''rf'',8f7.2)')
c     >       ctpi,fact,pfptc,ppi,ceraero,cerhg
c            if(ppi.gt.3.3) write(6,'(''rf ppi'',i3,f7.3)') kk,ppi
            rfhp(kk,k,10) = rfhp(kk,k,10) + fact
            rfhp(kk,21,10) = rfhp(kk,21,10) + fact
            if(ceraero.lt.1.0) then
             rfhp(kk,k,11) = rfhp(kk,k,11) + fact
             rfhp(kk,21,11) = rfhp(kk,21,11) + fact
            endif
            if(ceraero.lt.2.5) then
             rfhp(kk,k,12) = rfhp(kk,k,12) + fact
             rfhp(kk,21,12) = rfhp(kk,21,12) + fact
            endif
           endif
          endif

c aerogel time hitograms
         if(ceraero.gt.0.0 .and. aerot.ne.0)  then
          icc=int((aerot+50.)/5)+1
          icc=min(15,max(1,icc))
          kk = int(ceraero)+1
          kk = min(20,max(1,kk))
          if(abs(ctp).lt.0.5) then
           aeroth(kk,icc) = aeroth(kk,icc)+1
           aeroth(kk,16) = aeroth(kk,16)+1
          endif
          if(abs(ctpi).lt.0.5) then
           aeroth(20+kk,icc) = aeroth(20+kk,icc)+1
           aeroth(20+kk,16) = aeroth(20+kk,16)+1
          endif
         endif

c she spectrum for good pions, still for electrons
c with she>0.6
         if(ceraero.gt.2.5 
     >    .and. (ppi .lt. hgpmin .or. cerhg .gt. 0.5)
     >    .and. she.gt.0.6 .and. she.lt.1.4
     >    .and. shp.gt.0.02 .and. shp.lt.0.7) then
          kk = int((she-0.6)/0.8 * 20)+1
          iz = min(20,int(zpi*20.)+1)
          if(ispireal.eq.1) cntsshe(iz,kk,1) = cntsshe(iz,kk,1)+1
          if(ispiacc.eq.1)  cntsshe(iz,kk,2) = cntsshe(iz,kk,2)+1
c she histograms
          kk = max(1,min(15,int((she-0.6)/0.8*16.)+1))
          if(ispireal.eq.1) then
           sheh(kk,1) = sheh(kk,1) + 1
           sheh(16,1) = sheh(16,1) + 1
          endif
          if(ispiacc.eq.1) then
           sheh(kk,2) = sheh(kk,2) + 1
           sheh(16,2) = sheh(16,2) + 1
          endif
          kk = max(1,min(50,int((she-0.6)/0.7*35.)+1))
          if(ispireal.eq.1) then
           sheht(kk,1) = sheht(kk,1) + 1
          endif
          if(ispiacc.eq.1) then
           sheht(kk,2) = sheht(kk,2) + 1
          endif
         endif

c histogram shp and prp
          if(ceraero.gt.2.5 .and. she.gt.0.75) then
           k = min(15,max(1,int(shp/0.1)+1))
           if(ispireal.eq.1) then
            shh(k,1) = shh(k,1)+1
            shh(16,1) = shh(16,1)+1
            shh(k,4) = shh(k,4)+1
            shh(16,4) = shh(16,4)+1
            if(cerng.gt.2.) then
             shh(k,2) = shh(k,2)+1
             shh(16,2) = shh(16,2)+1
            endif
           endif
           if(ispiacc.eq.1) then
            shh(k,3) = shh(k,3)+1
            shh(16,3) = shh(16,3)+1
            shh(k,4) = shh(k,4) - 0.25
            shh(16,4) = shh(16,4) - 0.25
           endif
c           if(cerhg.gt.4.) then
c            sh2h(k) = sh2h(k)+1 
c            sh2h(16) = sh2h(16)+1
c           endif
           k = min(15,max(1,int(prp/0.01)+1))
           if(shp.lt.0.6.and.abs(ctpi).lt.2.0) then
            prh(k,1) = prh(k,1)+1
            prh(16,1) = prh(16,1)+1
            if(shp.gt.0.05) then
             prh(k,2) = prh(k,2)+1
             prh(16,2) = prh(16,2)+1
            endif
           endif
          endif ! aerogel check

c hg specrum for this run
         if(ctpi.gt.-0.5 .and. ctpi.lt.0.5 .and.
     >     she.gt.0.75 .and.ceraero.gt.4.0.and. 
     >     ppi .gt. 3.0 .and.  xycer.gt.1.5 .and.  
     >     (irun.lt.5038 .or. abs(pfptc-0.75).lt.0.25) .and.
     >    shp.lt.0.8 .and. shp.gt.0.1) then
          kk = max(1,min(16,int(cerhg)+1))
          hghrun(kk) = hghrun(kk) + 1
          hghrun(17) = hghrun(17) + 1
         endif
c hg specrum for all runs in bins of ppi
         if(ctpi.gt.-0.5 .and. ctpi.lt.0.5 .and.
     >     she.gt.0.75 .and.ceraero.gt.4.0.and. 
     >     ppi .gt. 2.6 .and. ppi.lt.3.35 .and. 
     >      xycer.gt.1.5 .and.  
     >     (irun.lt.5038 .or. abs(pfptc-0.75).lt.0.25) .and.
     >    shp.lt.0.8 .and. shp.gt.0.1) then
          kk = max(1,min(16,int(cerhg)+1))
          k = max(1,min(15,int((ppi-2.6)/0.05)+1))
          hghtot(k,kk) = hghtot(k,kk) + 1
          hghtot(k,17) = hghtot(k,17) + 1
         endif
c histogram of sh (unnormlized) to look at min ion peak
         if(ceraero.gt.2.5 
     >    .and. shp.lt.0.7) then
          kk = min(15,max(1,int(shp * ppi/0.05)+1))
          shmuonh(kk) = shmuonh(kk)+1
          shmuonh(16) = shmuonh(16)+1
         endif

c aerogel histograms
          if(prp.gt.0.02 .and. abs(ctp).lt.1 .and.
     >      cerhg.lt.1.0 .and.
     >      (irun.lt.5038 .or. abs(pfptcp-1.00).lt.0.4)) then
           k = min(15,max(1,int(ceraero/1.)+1))
           aerohp(k) = aerohp(k)+1
           aerohp(16) = aerohp(16)+1
           if(j.lt.1) write(6,'("aero p",5f7.2)')
     >       ceraero,aerot,aeront
          endif
          if(prp.gt.0.02 .and. (
     >      abs(ctp-12.).lt.1.0 .or. abs(ctp-16.).lt.1 .or.
     >      abs(ctp+12.).lt.1.  .or. abs(ctp+16.).lt.1).and.
     >      (irun.lt.5038 .or. abs(pfptcp-1.00).lt.0.4)) then
           k = min(15,max(1,int(ceraero/1.)+1))
           aerohp(k) = aerohp(k) - 0.25
           aerohp(16) = aerohp(16) -0.25
          endif
          if(prp.gt.0.02 .and. abs(ctpi).lt.1 .and.
     >      (irun.lt.5038 .or. abs(pfptc-1.00).lt.0.5)) then
           k = min(15,max(1,int(ceraero/1.)+1))
           aeroh(k) = aeroh(k)+1
           aeroh(16) = aeroh(16)+1
           if(j.gt.1000.and.j.lt.1000) 
     >       write(6,'("aero pi",5f7.2)')
     >       ceraero,aerot,aeront
           k = min(20,max(1,int((xaero+50.)/100.*20.)+1))
           xyaeroh(1,k) = xyaeroh(1,k)+1
           xyaeroh(1,21) = xyaeroh(1,21)+1
           if(ceraero.gt.2.5) then
            xyaeroh(2,k) = xyaeroh(2,k)+1
            xyaeroh(2,21) = xyaeroh(2,21)+1
           endif
           k = min(20,max(1,int((yaero+50.)/100.*20.)+1))
           xyaeroh(3,k) = xyaeroh(3,k)+1
           xyaeroh(3,21) = xyaeroh(3,21)+1
           if(ceraero.gt.2.5) then
            xyaeroh(4,k) = xyaeroh(4,k)+1
            xyaeroh(4,21) = xyaeroh(4,21)+1
           endif
          endif
          if(prp.gt.0.02 .and.
     >      (irun.lt.5038 .or. abs(pfptc-1.00).lt.0.5) .and.
     >      (abs(ctpi+4.).lt.1.0 .or. abs(ctpi+8.).lt.1 .or.
     >       abs(ctpi-8.).lt.1.  .or. abs(ctpi-12.).lt.1)) then
           k = min(15,max(1,int(ceraero/1.)+1))
           aeroh(k) = aeroh(k) - 0.25
           aeroh(16) = aeroh(16) -0.25
          endif

c This is the main definition of good pions
c aerogel efficiency is about 99% for 2.5, and 97% for 3.5
c TODO change for aerotray=1??
         if(ctpi.gt.-30.0 .and. ctpi.lt.30. .and.
     >     she.gt.0.75 .and.
     >     ((epelas.eq.0 .and. ceraero.gt.2.5 
c changed from 1.0 to 0.5 for xycer
     >    .and. (ppi .lt. hgpmin .or. 
c change cut to 0.5 to match efficiency calculation
     >      (xycer.gt.0.5 .and. cerhg.gt.0.5 ) )
c     >    .or. mmpi2.lt.1.08)
c 6/28/22 added shp*ppi cut in to get rid of muons
c     >    .and. shp*ppi .gt. 0.15
c changed from shp>0.02 to shp<0.8
     >         .and. shp.lt.0.8).or. 
c     >         .and. shp.lt.1.3).or. 
     >      (epelas.eq.1 .and.ceraero.lt.33333.0))
     >     ) then

c ct spectrum good pions
          ict = int((ctpi+30.)/0.1)+1
          if(ceraero.gt. 4.0 .and.
     >      mmpi2.gt.mmpi2cut.and.w.gt.wcut) then
             cth(ict) = cth(ict)+1
          endif
c     shp spectrum good pions
          ict = max(1,int(shp/0.01)+1)
c          write(6,'(f10.3,i5)') shp,ict
          if(ispireal.eq.1) shht(ict,1) = shht(ict,1) + 1
          if(ispireal.eq.1) shht(ict,2) = shht(ict,2) + 1
          if(ispiacc.eq.1) shht(ict,2) = shht(ict,2)  -0.25
          
c     x y histos at aerogel
          j1 = min(20,max(1,int((xaero+100.)/200.*20)+1))
          xaeroh(j1) = xaeroh(j1)+1
          j1 = min(20,max(1,int((yaero+ 50.)/100.*20)+1))
          yaeroh(j1) = yaeroh(j1)+1

c cointime / rf in bins of z the 3 defs
          iz = min(20,int(zpi*20.)+1)
          if(mmpi2.gt.0.68 .and. mmpi2.lt.1.08) iz=1
          if(mmpi2.gt.1.25 .and. mmpi2.lt.1.65) iz=2

          if(irun. le.5038) then
           if(abs(ctpi).lt.2.0) then
            kk = int((ctpi+2.)/0.1)+1
            cntsct(iz,kk,1) = cntsct(iz,kk,1) + 1 
            if(ceraero.gt.4.0) then
             cntsct(iz,kk,2) = cntsct(iz,kk,2) + 1 
            endif
           endif
           if(abs(ctpi + 8.).lt.2.0) then
            kk = int((ctpi+10.)/0.1)+1
            cntsct(iz,kk,3) = cntsct(iz,kk,3) + 1 
            if(ceraero.gt.4.0) then
             cntsct(iz,kk,4) = cntsct(iz,kk,4) + 1 
            endif
           endif
          else
           kk = min(40,int(pfptc*10.)+1)
           if(ispireal.eq.1) then
            cntsct(iz,kk,1) = cntsct(iz,kk,1) + 1 
c histogram of rf time vrs xfp, yfp for pp<0
            jj = max(1,min(16,int((pdcx+40.)/5.)+1))
            rfxy(jj,kk,1) = rfxy(jj,kk,1) + 1 
            rfxy(jj,41,1) = rfxy(jj,41,1) + 1 
            jj = max(1,min(16,int((pdcy+40.)/5.)+1))
            rfxy(jj,kk,2) = rfxy(jj,kk,2) + 1 
            rfxy(jj,41,2) = rfxy(jj,41,2) + 1 
           endif
           if(ispiacc.eq.1) then
            cntsct(iz,kk,2) = cntsct(iz,kk,2) + 1 
           endif
           if(ceraero.gt.4.0) then
            if(ispireal.eq.1) then
             cntsct(iz,kk,3) = cntsct(iz,kk,3) + 1 
            endif
            if(ispiacc.eq.1) then
             cntsct(iz,kk,4) = cntsct(iz,kk,4) + 1 
            endif
           endif
          endif

c simple counters
          if(epelas.eq.1) then
           ispireal = ispreal
           ispiacc = ispacc
          endif
          if(epelas.eq.0 .or.w.lt.1.1) then
           if(ispireal.eq.1) pir = pir + 1
           if(ispiacc.eq.1) piacc = piacc + 1
           if(ispiaccL.eq.1) piaccL = piaccL + 1
           if(ispiaccH.eq.1) piaccH = piaccH + 1
           im = max(1,min(20,int(mmpi2/0.5)+1))
           if(ispireal.eq.1) pirm(im) = pirm(im) + 1
           if(ispiacc.eq.1) piaccm(im) = piaccm(im) + 1
           im = min(20,int(zpi/0.05)+1)
           if(ispireal.eq.1) pirz(im) = pirz(im) + 1
           if(ispiacc.eq.1) piaccz(im) = piaccz(im) + 1
           immm = max(1,min(20,int(mmpi2/0.1)+1))
           if(mmpi2.gt.0.7 .and. mmpi2.lt.1. .and.
     >      it.eq.1 .and. pp.gt.0) then
            im = max(1,min(20,int((mmpi2-0.7)/0.3*20)+1))
            if(abs(hztar).lt.2.8) then
             if(ispireal.eq.1) pirmz(im,1) = pirmz(im,1) + 1
             if(ispiacc.eq.1) piaccmz(im,1) = piaccmz(im,1) + 1
            endif
            if(abs(hztar).gt.4.8) then
             if(ispireal.eq.1) pirmz(im,2) = pirmz(im,2) + 1
             if(ispiacc.eq.1) piaccmz(im,2) = piaccmz(im,2) + 1
            endif
           endif
c counters versus kinematic
           k = max(1,min(20,int((dpe+12.)/24. * 20.)+1))
           if(ispireal.eq.1) pirk(1,k) = pirk(1,k) + 1
           if(ispiacc.eq.1) piacck(1,k) = piacck(1,k) + 1
           if(ispireal.eq.1) pirkt(1,k) = pirkt(1,k) + 1
           if(ispiacc.eq.1) piacckt(1,k) = piacckt(1,k) + 1

           k = max(1,min(20,int((dthe*1000.+70.)/140.*20.)+1))
           if(ispireal.eq.1) pirk(2,k) = pirk(2,k) + 1
           if(ispiacc.eq.1) piacck(2,k) = piacck(2,k) + 1
           if(ispireal.eq.1) pirkt(2,k) = pirkt(2,k) + 1
           if(ispiacc.eq.1) piacckt(2,k) = piacckt(2,k) + 1

           k = max(1,min(20,int((dphie*1000.+30.)/ 60.*20.)+1))
           if(ispireal.eq.1) pirk(3,k) = pirk(3,k) + 1
           if(ispiacc.eq.1) piacck(3,k) = piacck(3,k) + 1
           if(ispireal.eq.1) pirkt(3,k) = pirkt(3,k) + 1
           if(ispiacc.eq.1) piacckt(3,k) = piacckt(3,k) + 1
 
           k = max(1,min(20,int((dpp+18.)/53. * 20.)+1))
           if(ispireal.eq.1) pirk(4,k) = pirk(4,k) + 1
           if(ispiacc.eq.1) piacck(4,k) = piacck(4,k) + 1
           if(ispireal.eq.1) pirkt(4,k) = pirkt(4,k) + 1
           if(ispiacc.eq.1) piacckt(4,k) = piacckt(4,k) + 1
 
           k = max(1,min(20,int((dthp*1000.+50.)/100.*20.)+1))
           if(ispireal.eq.1) pirk(5,k) = pirk(5,k) + 1
           if(ispiacc.eq.1) piacck(5,k) = piacck(5,k) + 1
           if(ispireal.eq.1) pirkt(5,k) = pirkt(5,k) + 1
           if(ispiacc.eq.1) piacckt(5,k) = piacckt(5,k) + 1
 
           k = max(1,min(20,int((dphip*1000.+ 30.)/ 60.*20.)+1))
           if(ispireal.eq.1) pirk(6,k) = pirk(6,k) + 1
           if(ispiacc.eq.1) piacck(6,k) = piacck(6,k) + 1
           if(ispireal.eq.1) pirkt(6,k) = pirkt(6,k) + 1
           if(ispiacc.eq.1) piacckt(6,k) = piacckt(6,k) + 1
          endif ! test on epelas or w<1.1
          
c big array
          pt2 = pt**2
          irr = 0
          if(ispireal.eq.1) irr=1
          if(ispiacc.eq.1) irr=2
          if(dphie.gt.0.) iq2bin=1
          if(dphie.le.0.) iq2bin=2 
c just using one q2bin now
c           iq2bin=1

c main cuts for storing counts (must be real or acc)
          if(irr.gt.0 .and. zpi.lt.1.2
     >     .and.sqrt(pt2).lt.1.00) then
c versus dp 
           if(mmpi2.gt.2.5) then
            idp = int((dpe + 12.) / 24.* 100.)+1
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdp(1,idp,irr) = cntsdp(1,idp,irr) + 1 
            endif
            idp = int((dpp + 25.) / 65.* 100.)+1
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdp(2,idp,irr) = cntsdp(2,idp,irr) + 1 
            endif
           endif
           iz = min(20,int(zpi*20.)+1)
           izm = 0
           mmpi = sqrt(mmpi2)
           if(mmpi.gt.1.05 .and. mmpi.lt.1.6999) 
     >       izm = int((mmpi-1.05)/0.65*20.)+1 
           if(izm.gt.20) write(6,'(''ERROR IZM'',i3,2f10.4)') 
     >      izm,mmpi,mmpi2
           iqm = 1
c special code: use iz=1 for exclusive peak, delta
           izxtra=0
           if(mmpi2.gt.0.68 .and. mmpi2.lt.1.08) izxtra=1
           if(mmpi2.gt.1.25 .and. mmpi2.lt.1.65) izxtra=2
           izz = min(50,int(zpi*50.)+1)
           iphi = max(1,min(15,int(phicm/6.29*15 ) + 1)) 
c          if(iz.eq.10) write(6,'(6f8.3)') ppi,nu,p1vp(4),zpi
c           ipt = int(pt2 / 0.5 * 12) + 1
           ipt = int(sqrt(pt2) / 1.00 * 16.) + 1
           mmpi = sqrt(max(0.,mmpi2))
           im = max(1,min(50,int((mmpi-0.8)/0.02)+1))
           phih(iphi) = phih(iphi)+1
           phih(20) = phih(20)+1
           iptm = (ipt + 1) / 2
           iphim = (iphi + 1) / 2
c pions. Inelastic only
           if(mmpi2.gt.mmpi2cut.and.w.gt.wcut) then
            cnts(iq2bin,ipt,iphi,iz,irr) = 
     >        cnts(iq2bin,ipt,iphi,iz,irr) + 1
            if(ihel.ge.1 .and. ihel.le.3) then
             cnts(iq2bin,ipt,iphi,iz,irr + 10*ihel) = 
     >         cnts(iq2bin,ipt,iphi,iz,irr + 10*ihel) + 1
            else
             write(6,'(''ERRROR ihel='',i5)') ihel
            endif
           else
c            write(6,'(''iz,mmpi2'',i3,f8.3)') iz,mmpi2
           endif
            J1=int(24.*(dpe-  dphmslo)/(  dphmshi  -dphmslo))+1
            J2=int(20.*(dphie-dphihmsmin)/(dphihmsmax-dphihmsmin))+1
            J3=int(20.*(dthe -dthhmsmin)/( dthhmsmax -dthhmsmin))+1
            cntsacc(1,j1,j2,j3,irr) = 
     >        cntsacc(1,j1,j2,j3,irr) + 1
            J1=int(24.*(dpp-    dpshmslo)/(  dpshmshi  -dpshmslo))+1
            J2=int(20.*(dphip-dphishmsmin)/(dphishmsmax-dphishmsmin))+1
            J3=int(20.*(dthp - dthshmsmin)/( dthshmsmax -dthshmsmin))+1
            cntsacc(2,j1,j2,j3,irr) = 
     >        cntsacc(2,j1,j2,j3,irr) + 1
            if(izm.ne.0) then
              cntsm(iqm,iptm,iphim,izm,irr) = 
     >        cntsm(iqm,iptm,iphim,izm,irr) + 1
              cntsm(iqm,iptm,iphim,izm,irr  + 10*ihel) = 
     >        cntsm(iqm,iptm,iphim,izm,irr + 10*ihel) + 1
            endif
            sumcnts(1,irr) = sumcnts(1,irr) + 1
            if(izxtra.gt.0) then
             cnts(iq2bin,ipt,iphi,izxtra,irr) = 
     >         cnts(iq2bin,ipt,iphi,izxtra,irr) + 1
             cnts(iq2bin,ipt,iphi,izxtra,irr + 10*ihel) = 
     >         cnts(iq2bin,ipt,iphi,izxtra,irr + 10*ihel) + 1
            endif
            if(izxtra.eq.1) 
     >       sumcnts(2,irr) = sumcnts(2,irr) + 1

            sumcnt(ihel,irr) = sumcnt(ihel,irr) + 1
            sumcntsf(ihel,irr) = sumcntsf(ihel,irr) + 
     >        sin(phicm)
            if(mmpi2.lt.1.08) then
             sumcntex(ihel,irr) = sumcntex(ihel,irr) + 1
             sumcntexsf(ihel,irr) = sumcntexsf(ihel,irr) + 
     >        sin(phicm)
             endif
            cntsmmpi(im,irr) = cntsmmpi(im,irr) + 1
ccc            write(666,'(i4,10f7.2)') irun,ppi,ep,mmpi
        if(irun.eq.7777.and.im.eq.1.and.irr.eq.1) 
     >   write(6,'(''dbg2'',i2,10f7.3)')
     >   cntsmmpi(1,1),
     >   ep,ppi,mmpi2,dpe,dpp,dphie,dthe,
     >   dphip,dthp,pt2
            cntsz(izz,irr) = cntsz(izz,irr) + 1
            if(cere.lt.-1000.) write(6,'(''cer'',4f8.3)')
     >       cere,dpe,dphie,dthe
c version with tighter cuts
           if(ceraero.gt. 4.0) then
            if(mmpi2.gt.mmpi2cut.and.w.gt.wcut) then
             cnts(iq2bin,ipt,iphi,iz,irr+2) = 
     >        cnts(iq2bin,ipt,iphi,iz,irr+2) + 1
             cnts(iq2bin,ipt,iphi,iz,irr+2 + 10*ihel) = 
     >        cnts(iq2bin,ipt,iphi,iz,irr+2 + 10*ihel) + 1
            endif
            if(izm.ne.0) then
              cntsm(iqm,iptm,iphim,izm,irr+2) = 
     >         cntsm(iqm,iptm,iphim,izm,irr+2) + 1
              cntsm(iqm,iptm,iphim,izm,irr+2 + 10*ihel) = 
     >         cntsm(iqm,iptm,iphim,izm,irr+2 + 10*ihel) + 1
             endif
             if(izxtra.gt.0) then
              cnts(iq2bin,ipt,iphi,izxtra,irr+2) = 
     >          cnts(iq2bin,ipt,iphi,izxtra,irr+2) + 1
              cnts(iq2bin,ipt,iphi,izxtra,irr+2+10*ihel) = 
     >          cnts(iq2bin,ipt,iphi,izxtra,irr+2+10*ihel) + 1
             endif
             cntsmmpi(im,irr+2) = cntsmmpi(im,irr+2) + 1
             cntsz(izz,irr+2) = cntsz(izz,irr+2) + 1
             if(mmpi2.gt.0.68 .and. mmpi2.lt.1.08 .and.
     >        dpp.gt.-20.0 .and. dpp.lt.40.0 .and. it.eq.1
     >        .and. pp.gt.0.) then
              idlt = int((dpp+20.))+1
              imm = int((mmpi2 - 0.68)/(1.08-0.68)*100)+1
              mmpi2h(idlt,imm,irr) = mmpi2h(idlt,imm,irr)  + 1
              mmpi2h(idlt,101,irr) = mmpi2h(idlt,101,irr)  + 1
              mmpi2h(61,imm,irr) = mmpi2h(61,imm,irr)  + 1
              mmpi2h(61,101,irr) = mmpi2h(61,101,irr)  + 1
             endif
c require good rf time also except when doesnt exist
c this assumes peak has been set a 1 nsec. 
             if((irun.lt.5038 .or. abs(pfptc-1.00).lt.0.5)) then
              if(mmpi2.gt.mmpi2cut.and.w.gt.wcut) then
               cnts(iq2bin,ipt,iphi,iz,irr+4) = 
     >          cnts(iq2bin,ipt,iphi,iz,irr+4) + 1
               cnts(iq2bin,ipt,iphi,iz,irr+4 +10*ihel) = 
     >          cnts(iq2bin,ipt,iphi,iz,irr+4 +10*ihel) + 1
              endif
              if(izm.ne.0) then
               cntsm(iqm,iptm,iphim,izm,irr+4) = 
     >          cntsm(iqm,iptm,iphim,izm,irr+4) + 1
               cntsm(iqm,iptm,iphim,izm,irr+4 +10*ihel) = 
     >          cntsm(iqm,iptm,iphim,izm,irr+4 +10*ihel) + 1
              endif
              if(izxtra.gt.0) then
               cnts(iq2bin,ipt,iphi,izxtra,irr+4) = 
     >           cnts(iq2bin,ipt,iphi,izxtra,irr+4) + 1
               cnts(iq2bin,ipt,iphi,izxtra,irr+4 +10*ihel) = 
     >           cnts(iq2bin,ipt,iphi,izxtra,irr+4 +10*ihel) + 1
              endif
              cntsmmpi(im,irr+4) = cntsmmpi(im,irr+4) + 1
              cntsz(izz,irr+4) = cntsz(izz,irr+4) + 1
c summed over all runs ytarg verus dpp
         if(pgtry.gt.-2000. .and. pgtry.lt. 2000.
     >    .and. dpp.gt.-16. .and. dpp.lt.28.) then
          k = int((pgtry+10.) / 20. * 14.)+1
          k = min(14,max(1,k))
          kk = int((dpp + 16.)) + 1
          ythist(kk,k,1)=ythist(kk,k,1)+1
          ythist(kk,15,1)=ythist(kk,15,1)+1
         endif
         if(pgtry.gt.-2000. .and. pgtry.lt. 200.) then
          k = int((pgtry+10.) / 20. * 14.)+1
          k = min(14,max(1,k))
          ythistrun(k)=ythistrun(k)+1
         endif
         ythistrun(15)=ythistrun(15)+1
         
             endif
            else
c             write(6,'(i6,3i3)') iselec,pexit,hexit
            endif
          endif
c exclusive pion  counts
          if(irr.gt.0 .and. mmpi2.gt.0.76 .and.mmpi2.lt.1.0 .and.
     >      iselec .eq. 0 .and. 
c     >      (ppi .lt. 2.8 .or. cerhg .gt. 0.5)
c     >    .and. (ppi .lt. 2.8 .or. xycer.gt.1.0  )
     >     sqrt(pt2).lt.0.3) then
           iphi = max(1,min(15,int(phicm/6.29*7 ) + 1)) 
           ipt = int(sqrt(pt2) / 0.3 * 4.) + 1
           im = max(1,min(8,int((mmpi2-0.76)/0.24*8.)+1))
           cntse(1,ipt,iphi,irr) = 
     >       cntse(1,ipt,iphi,irr) + 1 
           cntseh(1,ipt,iphi,im,irr) = 
     >        cntseh(1,ipt,iphi,im,irr) + 1
          endif
c exclusive pion  counts versus W
          if(irr.gt.0 .and. mmpi2.gt.0.76 .and.mmpi2.lt.1.0 .and.
     >      iselec .eq. 0 .and. 
     >     w.gt.1.6 .and. w.lt.3.2) then
           iw = int((w-1.6)/1.6 * 20.)+1
           cntsew(iw,irr) = cntsew(iw,irr) + 1 
          endif

c histogram of cointime
          if(ctpi.gt.-10.0 .and. ctpi.lt.30.0
     >       .and. ceraero.gt.2.5) then
            k = max(1,min(40,int((ctpi + 10.) / 1. ) + 1)) 
            ctpih(k) = ctpih(k)+1
          endif

         endif ! end main definition good pions

c This is the main definition of good kaons
c changed again Dec. 2021
         if(ctk.gt.-30.0 .and. ctk .lt.30. .and.
     >     she.gt.0.75 .and.
     >     (ceraero.lt.3.5 .or. ppi.gt.hgpmin) .and.
     >     iselec .eq. 0 .and. 
c changed to 1.0 from 0.1
     >     cerhg .lt. 1.0 .and. 
c this is to remove region where pions are inefficient
c and so could be mistaken for a koan
     >     heff.gt.0.9 .and.
     >     shp.lt.0.80) then

c cointime / rf in bins of z 
c          iz = min(20,int(zk*20.)+1)
          iz = min(20,int(zpi*20.)+1)
          if(irun.le.5038) then
           if(abs(ctk).lt.2.0) then
            kk = int((ctk+2.)/0.1)+1
            cntsctk(iz,kk,1) = cntsctk(iz,kk,1) + 1 
           endif
           if(abs(ctk + 8.).lt.2.0) then
            kk = int((ctk+10.)/0.1)+1
            cntsctk(iz,kk,2) = cntsctk(iz,kk,2) + 1 
           endif
          else
c           write(6,'(''rf k'',f8.3)') pfptck
           if(pfptck.gt.0.) then
            kk = min(40,int(pfptck*10.)+1)
            if(iskreal.eq.1) then
             cntsctk(iz,kk,1) = cntsctk(iz,kk,1) + 1 
            endif
            if(iskacc.eq.1) then
             cntsctk(iz,kk,2) = cntsctk(iz,kk,2) + 1 
            endif
           endif
          endif

c big array
c         pt2 = ptk**2
c use pion pt
         pt2 = pt**2
         irr = 0
         if(iskreal.eq.1) irr=7
         if(iskacc.eq.1) irr=8
         if(dphie.gt.0.) iq2bin=1
         if(dphie.le.0.) iq2bin=2
c just one bin
c         iq2bin=1

c add cut on rf time here after histos are made
c note: cuts changed from 0.5 to 1.5 to
c                         0.7 to 1.7
c to reduce amount of pions leaking in: see cntsct1234.txt
c to get actual contamination
c efficiency is about 85% to 90%. 
         if(irun.ge.5038 .and. 
c     >     abs(pfptck - 1.00).gt.0.5) irr=0
     >     abs(pfptck - 1.20).gt.0.5) irr=0

c         if(irr.gt.0 .and. zk.lt.1.0 .and.sqrt(pt2).lt.1.00) then
         if(irr.gt.0 .and. zpi.lt.1.0 .and.sqrt(pt2).lt.1.00) then
           Emk = e0 + amp - ep - sqrt(amk**2 + ppi**2)
           mmk2 = 
     >      (Emk)**2 - 
     >      (p_x(1) + p_x(2))**2 -
     >      (p_y(1) + p_y(2))**2 -
     >      (p_z(1) + p_z(2)- e0)**2
          mmk = sqrt(max(0.,mmk2))
          im = max(1,min(50,int((mmk-0.8)/0.02)+1))
c          iz = int(zk*20.)+1
c          izz = int(zk*50.)+1
c          iphi = max(1,min(15,int(phicmk/6.29*15 ) + 1)) 
c changed to use zpi and phicm  for kaons to match SIMC
          iz = int(zpi*20.)+1
          izz = int(zpi*50.)+1
c          iphi = max(1,min(15,int(phicmk/6.29*15 ) + 1)) 
          iphi = max(1,min(15,int(phicm/6.29*15 ) + 1)) 
c          ipt = int(pt2 / 0.5 * 12) + 1
          ipt = int(sqrt(pt2) / 1.00 * 16.) + 1
c kaons in irr=7,8
           if(mmpi2.gt.mmpi2cut.and.w.gt.wcut) then
            cnts(iq2bin,ipt,iphi,iz,irr) = 
     >       cnts(iq2bin,ipt,iphi,iz,irr) + 1
            cnts(iq2bin,ipt,iphi,iz,irr + 10*ihel) = 
     >       cnts(iq2bin,ipt,iphi,iz,irr + 10*ihel) + 1
           endif
           cntsmmpi(im,irr) = cntsmmpi(im,irr) + 1
        if(irun.eq.7777.and.im.eq.1.and.irr.eq.1) 
     >   write(6,'(''dbg3'',3i5,10f7.3)') irr,im,
     >   cntsmmpi(1,1),
     >   e0,ep,ppi,mmpi2,pp,dpp
           cntsz(izz,irr) = cntsz(izz,irr) + 1
           if(iskreal.eq.1) pir4 = pir4 + 1
           if(iskacc.eq.1) piacc4 = piacc4 + 1
          endif
         endif ! end main definition good kaons

c HG specgrum for protons with accidental subtraction
         if(ctp.gt.-30.0 .and. ctp .lt.30. .and.
     >    she.gt.0.75 .and.
     >    ceraero.lt.3.5 .and.
     >    iselec .eq. 0 .and. 
     >    abs(pfptcp - 1.00).lt.0.3 .and.
     >    shp.lt.0.80) then
          kk = max(1,min(16,int(cerhg)+1))
          if(ispreal.eq.1) then
           hghrunp(kk) = hghrunp(kk) + 1
           hghrunp(17) = hghrunp(17) + 1
          endif
          if(ispacc.eq.1) then
           hghrunp(kk) = hghrunp(kk) - 0.25
           hghrunp(17) = hghrunp(17) - 0.25
          endif
         endif
c  proton ct for all particles
         if(pp.gt. 0. .and.
     >        abs(ctp).lt.6.) then
            ippi = min(15,max(1,int((ppi-1.8)/0.4)+1))
            ict = int((ctp + 6.0)/0.2) + 1
            if(irun.le.4400) then
            cntsctppi(ippi,ict,1) = cntsctppi(ippi,ict,1) + 1
            else
            cntsctppi(ippi,ict,3) = cntsctppi(ippi,ict,3) + 1
            endif
         endif
! proton rf time all events
         if(pp.gt. 0. .and. pfptcp.gt.0. .and.
     >        abs(ctp).lt.6.) then
           ippi = min(15,max(1,int((ppi-1.8)/0.4)+1))
           ict = min(40,int(pfptcp*10.)+1)
           cntsrfppi(ippi,ict,1) = cntsrfppi(ippi,ict,1) + 1
         endif
c This is the main definition of good protons
         if(ctp.gt.-30.0 .and. ctp .lt.30. .and.
     >     she.gt.0.75 .and.
c changed to 3.5 to get >95% efficiency
     >     ceraero.lt.3.5 .and.
c     >     iselec .eq. 0 .and. 
c changed from 0.5 to 1.0 to get >98% efficiency
     >     cerhg .lt. 1.0 .and.
     >     shp.lt.0.80) then

c proton ct for protons
         if(ppi.gt. 0. .and.
     >        abs(ctp).lt.6.) then
            ict = int((ctp + 6.0)/0.2) + 1
            ippi = min(15,max(1,int((ppi-1.8)/0.4)+1))
            if(irun.le.4400) then
             cntsctppi(ippi,ict,2) = cntsctppi(ippi,ict,2) + 1
            else
             cntsctppi(ippi,ict,4) = cntsctppi(ippi,ict,4) + 1
            endif
         endif
         if(ppi.gt. 0. .and. abs(ctp).lt.6.) then
            ict = int((ctp + 6.0)/0.5) + 1
            ctphff(ict) = ctphff(ict) + 1
            ctphff(41) = ctphff(41) + 1
         endif
! proton rf time with proton ID
         if(pp.gt. 0. .and. pfptcp.gt.0. .and.
     >        abs(ctp).lt.3.) then
           ippi = min(15,max(1,int((ppi-1.8)/0.4)+1))
           ict = min(40,int(pfptcp*10.)+1)
           cntsrfppi(ippi,ict,2) = cntsrfppi(ippi,ict,2) + 1
         endif

c big array
c         pt2 = ptp**2
c use pion pt
         pt2 = pt**2
         irr = 0
         if(ispreal.eq.1) irr=9
         if(ispacc.eq.1) irr=10
         if(dphie.gt.0.) iq2bin=1
         if(dphie.le.0.) iq2bin=2

c cointime / rf in bins of z 
c          iz = min(20,int(zp*20.)+1)
          iz = min(20,int(zpi*20.)+1)
          if(irun.le.5038) then
           if(abs(ctp).lt.2.0) then
            kk = int((ctp+2.)/0.1)+1
            cntsctp(iz,kk,1) = cntsctp(iz,kk,1) + 1 
           endif
           if(abs(ctp + 8.).lt.2.0) then
            kk = int((ctp+10.)/0.1)+1
            cntsctp(iz,kk,2) = cntsctp(iz,kk,2) + 1 
           endif
          else
c           if(ispreal.eq.1) write(6,'(''ct p'',8f7.2)') 
c     >       ctpi,ctp,pfptcp,pfptc
           if(pfptcp.gt.0.) then
            kk = min(40,int(pfptcp*10.)+1)
            if(ispreal.eq.1) then
             cntsctp(iz,kk,1) = cntsctp(iz,kk,1) + 1 
            endif
            if(ispacc.eq.1) then
             cntsctp(iz,kk,2) = cntsctp(iz,kk,2) + 1 
            endif
           endif
          endif

c add cut on rf time here after histos are made
         if(irun.ge.5038 .and. 
     >     abs(pfptcp - 1.00).gt.0.6) irr=0

c         if(irr.gt.0 .and. zp.lt.1.0 .and.sqrt(pt2).lt.1.00) then
         if(irr.gt.0 .and. zpi.lt.1.0 .and.sqrt(pt2).lt.1.00) then
           Emp = e0 + amp - ep - sqrt(amp**2 + ppi**2)
           mmp2 = 
     >      (Emp)**2 - 
     >      (p_x(1) + p_x(2))**2 -
     >      (p_y(1) + p_y(2))**2 -
     >      (p_z(1) + p_z(2)- e0)**2
           mmp = sqrt(max(0.,mmp2))
           im = max(1,min(50,int((mmp)/0.04)+1))
c only do this when have mathching SIMC for protons
c           iz = int(zp*20.)+1
c           izz = int(zp*50.)+1
c           iphi = max(1,min(15,int(phicmp/6.29*15 ) + 1)) 
c           ipt = int(sqrt(pt2) / 1.00 * 16.) + 1
           iz = min(20,int(zpi*20.)+1)
           izz = min(50,int(zpi*50.)+1)
           iphi = max(1,min(15,int(phicm/6.29*15 ) + 1)) 
           ipt = int(sqrt(pt2) / 1.00 * 16.) + 1
c proton in irr=9,10
c          write(6,'(''adding p '',5i3,8f7.3)') iq2bin,ipt,iphi,iz,irr,
c     >      dpp,mmp,pt,ptk,ptp,zpi,zk,zp
c no cut on mmp (so includes big phi and omega peaks)
           if(w.gt.wcut) then
            cnts(iq2bin,ipt,iphi,iz,irr) = 
     >       cnts(iq2bin,ipt,iphi,iz,irr) + 1
            cnts(iq2bin,ipt,iphi,iz,irr + 10*ihel) = 
     >       cnts(iq2bin,ipt,iphi,iz,irr + 10*ihel) + 1
           endif
           if(mmp.lt.1.1)
     >      cntsmmpi(im,irr) = cntsmmpi(im,irr) + 1
        if(irun.eq.7777.and.im.eq.1.and.irr.eq.1) 
     >   write(6,'(''dbg4'',3i5,10f7.3)') irr,im,
     >   cntsmmpi(1,1),
     >   e0,ep,ppi,mmpi2,pp,dpp
           cntsz(izz,irr) = cntsz(izz,irr) + 1
           if(ispreal.eq.1) pir5 = pir5 + 1
           if(ispacc.eq.1) piacc5 = piacc5 + 1
c mm in omega region
           if(mmp.gt.0.5 .and. mmp.lt.1.2 .and.
     >      dpp.gt.-20.0 .and. dpp.lt.40.0 .and. it.eq.1
     >        .and. pp.gt.0.) then
            idlt = int((dpp+20.))+1
            imm = int((mmp - 0.5)/(1.20-0.5)*100)+1
            mmpfh(idlt,imm,irr-8) = mmpfh(idlt,imm,irr-8)  + 1
            mmpfh(idlt,101,irr-8) = mmpfh(idlt,101,irr-8)  + 1
            mmpfh(61,imm,irr-8) = mmpfh(61,imm,irr-8)  + 1
            mmpfh(61,101,irr-8) = mmpfh(61,101,irr-8)  + 1
c           write(6,'(''p '',5i3,8f7.3)') iq2bin,ipt,iphi,iz,irr,
c     >       dpp,mmp,pt,ptk,ptp,zpi,zk,zp
           endif
c mm in j/psi region
           if(mmp.gt.2.8 .and. mmp.lt.3.2 .and. it.eq.1
     >        .and. pp.gt.0.) then
            imm = int((mmp - 2.8)/(3.30-2.8)*100)+1
            mmpfhj(imm,irr-8) = mmpfhj(imm,irr-8)  + 1
            mmpfhj(101,irr-8) = mmpfhj(101,irr-8)  + 1
           endif
          endif
         endif ! end main definition good protons

! cointime for pions
         if(ctpi.gt.-4.0 .and. ctpi.lt.4. .and.
     >      shp .lt. 0.7) then
            k = max(1,min(40,int((ctpi + 4.0) / 0.2 ) + 1)) 
            ctpihfa(k) = ctpihfa(k)+1
! with pion PID
            if(ceraero.gt.4.0 .and.
     >        iselec .eq. 0 .and. 
     >       she.gt.0.75 .and.
     >       (ppi .lt. hgpmin .or. cerhg.gt.2.0) .and.  
     >       shp.lt.0.80) then
             ctpihf(k) = ctpihf(k)+1
            endif
         endif
         if(ctk.gt.-4.0 .and. ctk.lt.4. .and.
     >     shp .lt. 0.7.and.ceraero.eq.0.) then
           k = max(1,min(40,int((ctk + 4.0) / 0.2 ) + 1)) 
           ctkhf(k) = ctkhf(k)+1
         endif
         if(ctp.gt.-4.0 .and. ctp.lt.4. .and.
     >     shp .lt. 0.7.and.ceraero.eq.0.) then
           k = max(1,min(40,int((ctp + 4.0) / 0.2 ) + 1)) 
           ctphf(k) = ctphf(k)+1
         endif
         if(ctk.gt.-10.and.ctk.lt.30.0 .and. 
     >     ceraero.lt.0.5 .and.
     >     shp .lt. 0.7.and.abs(pp).lt.3.0) then
           k = max(1,min(40,int((ctk + 9.5) / 1. ) + 1)) 
           ctkh(k) = ctkh(k)+1
         endif
         if(ctp.gt.-10.and.ctp.lt.30.0 .and. 
     >     ceraero.lt.0.5 .and. cerhg.lt.0.5 .and.
     >     shp .lt. 0.7.and.pp.gt.0.      ) then
           k = max(1,min(40,int((ctp + 9.5) / 1. ) + 1)) 
           ctph(k) = ctph(k)+1
         endif
c         if(ctk.gt.-2.and.ctk.lt.6.0 .and. 
c     >     ceraero.lt.0.5 .and.
c     >     shp .lt. 0.7.and.abs(pp).lt.3.0) then
c           k = max(1,min(40,int((ctk + 2.0) / 0.2 ) + 1)) 
c           ctkhf(k) = ctkhf(k)+1
c         endif
         if(ctpi.gt.-10.0 .and. ctpi.lt.30.0 .and.
     >     ceraero.gt.2.5 .and.
     >     shp .gt. 0.8.and.cerhg.gt.1.0.and.
     >     (cerng.gt.1.0.or.irun.gt.4400)) then
           k = max(1,min(40,int((ctpi + 9.5) / 1. ) + 1)) 
           cteh(k) = cteh(k)+1
         endif
        endif ! cuts on dpp, dpe


        if(ceraero.gt.2.5 .and. shp .lt. 0.7 .and.
     >     dpe.gt.-12.0 .and. dpe.lt.12. .and.
     >     she.gt.0.7 .and. cere.gt.0.5 .and.
     >     mmpi2.gt.0.85**2 .and. mmpi2.lt.1.05**2 .and.
     >     dpp.gt.-20.0 .and. dpp.lt.50.) then
         k = max(1,min(20,int((sqrt(mmpi2)-0.85)/0.010 ) + 1)) 
         kk = max(1,min(12,int((dpp + 20.)/5.) + 1))
         if(abs(ctpi).lt.2.0) then
           mmpih(k,kk) = mmpih(k,kk)+1
         endif
         if(abs(ctpi).lt.2.0 .and. it.eq.1 .and. pp.gt.0.0
     >    .and. dpp.gt.-12.0 .and. dpp.lt. 22) 
     >      mmpihs(k) = mmpihs(k)+1
         if(abs(ctpi).gt.2.0 .and. it.eq.1 .and. pp.gt.0.0
     >    .and. dpp.gt.-12.0 .and. dpp.lt. 22) 
     >      mmpihsa(k) = mmpihsa(k)+1
         if(abs(ctpi).lt.2.0 .and. it.eq.1 .and. pp.gt.0.0
     >    .and. dpp.gt.-20.0 .and. dpp.lt. 20) then
          kk=int((dpp+20.))+1
          mmpihd(2,kk,k) = mmpihd(2,kk,k)+1
         endif
         if(abs(ctpi).lt.2.0 .and. it.eq.1 .and. pp.gt.0.0
     >    .and. dpe.gt.-12.0 .and. dpe.lt. 12) then
          kk=int((dpe+12.))+1
          mmpihd(1,kk,k) = mmpihd(1,kk,k)+1
         endif
        endif

        w2=(e0 + amp - ep)**2 - p_x(1)**2 - p_y(1)**2 - (p_z(1)-e0)**2
        w=0.
        if(w2.gt.0.) w = sqrt(w2)

        mmk2 = 
     >     (Emk)**2 - 
     >     (p_x(1) + p_x(2))**2 -
     >     (p_y(1) + p_y(2))**2 -
     >     (p_z(1) + p_z(2)- e0)**2

        mmp2 = 
     >     (Emp)**2 - 
     >     (p_x(1) + p_x(2))**2 -
     >     (p_y(1) + p_y(2))**2 -
     >     (p_z(1) + p_z(2)- e0)**2
        if(ceraero.lt.2000.5 .and. shp .lt. 0.7 .and.
     >     cerhg .lt. 0.5 .and.
     >     dpe.gt.-12.0 .and. dpe.lt.12. .and.
     >     she.gt.0.7 .and. cere.gt.1.5 .and.
c     >     mmp2.gt.0.7**2.and.mmp2.lt.1.1**2 .and.
c     >     mmp2.gt.0.0**2.and.
     >     dpp.gt.-25.0 .and. dpp.lt.45.) then
c           k = max(1,min(20,int((sqrt(mmp2)-0.7)/0.02 ) + 1)) 
         k = max(1,min(20,int((sqrt(mmp2)-0.0)/0.1 ) + 1)) 
         kk = max(1,min(14,int((dpp+25.)/5. ) + 1)) 
         if(abs(ctp).lt.2.5) mmph(k,kk) = mmph(k,kk)+1
         if(abs(ctp).lt.2.5 .and. it.eq.1 .and. pp.gt.0.0
     >    .and.dpp.gt.-12.0 .and. dpp.lt. 22.) 
     >    mmphs(k) = mmphs(k)+1
         k = max(1,min(400,int((sqrt(mmp2))/0.005 ) + 1)) 
         if(abs(ctp).lt.2.5) mmphf(k) = mmphf(k)+1
         if(abs(ctp).lt.2.5 .and. it.eq.1.and. pp.gt.0.0
     >    .and. dpp.gt.-12.0 .and. dpp.lt. 22.)
     >    mmphfs(k) = mmphfs(k)+1
c         write(6,'(''w'',3f8.3)') w,mmp2,ctp
         if(abs(w-1.5).lt.0.1 .and. it.eq.1 .and. pp.gt. 0.) then
          if(abs(ctp).lt.2.0) mmpheta(k) = mmpheta(k)+1
         endif
         if(j.lt.0) write(6,'(i5,9f6.2)') j,
     >      (e0 + amp - eprot - ep),
     >      (e0 - p_z(1) - p_z(2)),
     >      (p_x(1) + p_x(2)),
     >      (p_y(1) + p_y(2)),pt2,w,mmp2,ctp,ppi
        endif

! e,e mass
        mee = sqrt(
     >     (ep + ppi)**2 - 
     >     (p_x(1) + p_x(2))**2 -
     >     (p_y(1) + p_y(2))**2 -
     >     (p_z(1) + p_z(2))**2)
        pt = sqrt(
     >     (p_x(1) + p_x(2))**2 +
     >     (p_y(1) + p_y(2))**2 )
        ipt = min(5,int(pt*10)+1)
        if(ceraero.gt.3.5 .and. shp .gt. 0.85 .and.
     >     cerhg .gt. 3.0 .and.
     >     (cerng .gt. 3.0 .or. irun.gt. 4400) .and.
     >     she.gt.0.8 .and. cere.gt.1.5) then
c     >     mee.gt.3.00.and.mee.lt.3.20) then
c        write(6,'(''mee'',4f8.3)') mee,ceraero,shp,ctpi
c         write(49,'(10f7.3)') mee,shp,p_x(1),p_y(1),p_z(1),
c     >    p_x(2),p_y(2),p_z(2),pp,ctpi
         k = max(1,min(320,int((mee-0.)/0.010 ) + 1)) 
         jj=0
         if(abs(ctpi).lt.2.0) jj=1
         if(ctpi.gt.6.0 .and. ctpi.lt.22) jj=2
         if(jj.gt.0) then
          meeh(k,jj) = meeh(k,jj)+1
          if(irun.lt.9990) then
           if(pp.lt.0.) then
            meeht(k,1,jj,ipt) = meeht(k,1,jj,ipt)+1.
           else
            meeht(k,2,jj,ipt) = meeht(k,2,jj,ipt)+1.
c            if(mee.gt.3.0 .and. jj.eq.1) 
c     >         write(6,'(''mee'',2f8.3)') mee,pt
           endif
          endif
         endif
        endif

! particle ID plots
 
! noble gas. Only use in Spring18. Threshold
c for pions about 4.7 gev (1 atm CO2)
        if(ceraero.gt.2.5 .and. shp .gt. 0.7 .and.
     >     cerhg.gt.1.0) then
         kk = max(1,min(15,int(cerng/2.)+1))
         ngh(kk) = ngh(kk) + 1
         ngh(16) = ngh(16) + 1
        endif

! hg spectra versus delta. 
        if(ceraero.gt.2.5 .and. shp .lt. 0.8 .and.
     >     dpe.gt.-10.0 .and. dpe.lt.10. .and.
     >     abs(ctpi).lt.1.0 .and.
     >     dpp.gt.-5.0 .and. dpp.lt.5.0 .and.
     >     ppi.gt.3.3) then
           k =  int((dpp + 5.)*3.)+1
           kk = min(50,int(cerhg)+1)
         if(k.gt.0.and.k.lt.31.and.kk.gt.0.and.kk.lt.51) then
          hgh(k,kk) = hgh(k,kk) + 1
         endif
        endif

! hg spectra versus ppi 
        call gethgcut(irun,pdcx,pdcxp,pdcy,
     >     pdcyp,xycer,ppi,heff,hgpmin)
        xcer = pdcx + 90. * pdcxp
        ycer = pdcy + 90. * pdcyp
        kkk=1
        if(irun.gt.4400) kkk=2
        if(irun.gt.7000) kkk=3
c electrons in 2nd set
        if(shp .gt. 0.7 ) kkk = kkk + 3
        if(ceraero.gt.4.0 .and. 
     >     dpe.gt.-10.0 .and. dpe.lt.10. .and.
     >     abs(ctpi).lt.1.0 .and.
     >     xycer .gt. 1.0 .and.
     >     shp .gt. 0.1 .and.
     >     she.gt.0.7 .and. cere.gt.1.0 .and.
     >     dpp.gt.-16.0 .and. dpp.lt.22.0 .and.
     >     (irun.lt.5038 .or. abs(pfptc-0.75).lt.0.25).and.
     >     ppi.gt.2.0) then
         k =  int((ppi - 2.0)/0.1)+1
         kk = min(19,max(1,int(max(0.,cerhg+1.) * 1.0)+1))
         if(k.gt.0.and.k.lt.31.and.kk.gt.0.and.kk.lt.20) then
          hghp(k,kk,kkk) = hghp(k,kk,kkk) + 1
          hghp(k,20,kkk) = hghp(k,20,kkk) + 1
         endif
        endif
! hg spectra versus x at mirror
         if(ceraero.gt.4.0 .and. 
     >     shp .gt. 0.1 .and.
     >     dpe.gt.-10.0 .and. dpe.lt.10. .and. 
     >     she.gt.0.7 .and. cere.gt.1.0 .and.
     >     abs(ctpi).lt.1.0 .and.
c     >    xycer.gt.1.0 .and.
     >     dpp.gt.-16.0 .and. dpp.lt.22.0 .and.
     >     (irun.lt.5038 .or. abs(pfptc-0.75).lt.0.25).and.
     >     ppi.gt.3.0) then
          k =  int((xcer + 10.) / 1.)+1
          jj = int((ycer + 25.)/ 10.) + 1
c          if(cerhg.lt.0.) write(6,'(''err hg='',f8.3)') cerhg
          kk = min(19,max(1,int(cerhg * 1.0)+1))
          if(abs(xcer).lt.10.0 .and. abs(ycer).lt.30.) then
           hghxy(k,jj,kk,kkk) = hghxy(k,jj,kk,kkk) + 1
           hghxy(k,jj,20,kkk) = hghxy(k,jj,20,kkk) + 1
          endif
         endif
! hg spectra versus radius, P, case
         if(ceraero.gt.4.0 .and. 
     >     shp .gt. 0.1 .and.
     >     dpe.gt.-10.0 .and. dpe.lt.10. .and. 
     >     she.gt.0.7 .and. cere.gt.1.0 .and.
     >     abs(ctpi).lt.1.0 .and.
     >     dpp.gt.-16.0 .and. dpp.lt.22.0 .and.
     >     (irun.lt.5038 .or. abs(pfptc-0.75).lt.0.25).and.
     >     ppi.gt.3.0) then
          k =  max(1,min(10,int(xycer / 0.5)+1))
          jj = max(1,min(20,int((ppi-3.0)/0.1)+1))
c          if(cerhg.lt.0.) write(6,'(''err hg='',f8.3)') cerhg
          kk = min(19,max(1,int(cerhg * 1.0)+1))
          if(abs(xcer).lt.10.0 .and. abs(ycer).lt.30.) then
           hghr(k,jj,kk,kkk) = hghr(k,jj,kk,kkk) + 1
           hghr(k,jj,20,kkk) = hghr(k,jj,20,kkk) + 1
          endif
         endif
        enddo ! LOOP OVER events
 10     continue
        write(177,'(''irun='',i4)') irun
        do kk=1,3
         write(177,'(i5,14i4)') dpxyzh(kk,15),
     >    (int( float(dpxyzh(kk,kkk)) * 1000. /
     >          float(dpxyzh(kk,15))),kkk=1,14)
        enddo

! Read in Hodo and track efficiencies
! these override anything done above
        write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/Skimfiles/Skimeff'',
     >     i4,''.txt'')') irun
        if(useHB) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/Skimfiles/SkimeffHB'',
     >     i4,''.txt'')') irun
        open(unit=9,file=fname)
        read(9,*) i1,i2,heffh
        read(9,*) i1,i2,heffp
c took this out
c        corr = heffh * heffp

c corr now takes into account low trig eff for sp18
c old way
c        corr = 1.0
c        if(irun.lt.4400) corr = 0.95
C detector efficiency corection for set 1
c note HMS cerenkov and SHMS Heavy Gas done in SIMC so not here
! for cut e/p>0.75
        eff_she = 0.995 ! most runs
        if(irun.ge.7891.and.irun.le.7938) eff_she=0.965 ! P=0.88
        if(irun.ge.8187.and.irun.le.8999) eff_she=0.980 ! P=0.95
! for cut of 2.5 
        eff_aero = 0.975
        if(irun.gt.4400) eff_aero = 0.985
! for timing cuts of 1.0 or 2.2 nsec
        eff_ct =  0.99

! for cut of e/p<0.8
        eff_shp = 0.93 ! might be P dependant but not sure
        if(irun.gt.4400) eff_shp = 0.975 ! P=4 GeV
        if(irun.ge.4892) eff_shp = 0.960 ! P=5
        if(irun.ge.5013) eff_shp = 0.950 ! P=6 
        if(irun.ge.5370) eff_shp = 0.955
        if(irun.gt.7000) eff_shp = 0.945
        if(irun.gt.7891) eff_shp = 0.930
        if(irun.gt.8039) eff_shp = 0.920

        corr = eff_she * eff_aero * eff_ct * eff_shp
! extra inefficiency from fit at 0 rate
        if(irun.lt.4400) corr = corr * 0.970

c i4/i5 is fraction of events passing ptdcmult>4 cut
c implemented 4/30/2020 in PeterB.C
        read(9,*) i1,i2,sum1,i3,i4,sum2,i4,i5
        corr3 = float(i4)/float(i5)

        read(9,*) i1,i2,i3,i4,i5
c        tefe = float(i5) / float(i2)
c changed to use i3
        tefe = float(i3) / float(i2)
        tefesv(irun,1) =  float(i3) / float(i2)
        tefesv(irun,2) =  float(i4) / float(i2)
        tefesv(irun,3) =  float(i5) / float(i2)
        read(9,*) i1,i2,i3,i4,i5
c        tefp = float(i5) / float(i2)
c changed to use i3
        tefp = float(i3) / float(i2)
        tefpsv(irun,1) =  float(i3) / float(i2)
        tefpsv(irun,2) =  float(i4) / float(i2)
        tefpsv(irun,3) =  float(i5) / float(i2)
        read(9,*) i1,i2,hgdsceff
        if(i2.eq.0) hgdsceff=1.0
        read(9,*) i1,i2,pgdsceff
c these are really just 3/4 or 4/4 eff (depending on
c ptracking parameter at bottom. 
c        corr = hgdsceff * pgdsceff

c pass over five lines
        read(9,*) sum1
        sum1 = 0.
        sum2 = 0.
        sum3 = 0.
        sum4 = 0.
c get new way of doing tefp and timecorr
        do kk=1,100
         read(9,*) i1,i2,i3,r1,r2,r3,r4
         if(kk.gt.20.and.kk.lt.80.and.r4.lt.0.1.and.
     >    r4.gt.0.) then
          sum1 = sum1 + r3/r4**2
          sum2 = sum2 + 1./r4**2
c          write(6,'(3i5,4f7.3)') i1,i2,i3,r1,r2,r3,r4
         endif
         if(kk.ge.60.and.kk.lt.76) sum3 = sum3 + i1
         if(kk.ge.76.and.kk.lt.92) sum4 = sum4 + i1
        enddo
        if(sum2.gt.0.) then
c this doesn't change anything much
c         write(6,'(''new trk eff p'',2f7.3)') tefp,sum1/sum2
c         tefp = sum1 / sum2
c this doesn't work
c         write(6,'(''new timecorr '',2f7.3)') timecorr,sum3/sum4
c         timecorr = sum3 / sum4
        endif

! Read in SIMC file. Normfac is in simc/outfiles/*.his
! SIDIS pions
        srate(i)=0.
        srateer(i)=0.
        write(fname,
     >    '(''/group/c-sidis/bosted/simc/outfiles/simc_'',
     >     i4,''_pi_rad.hist'')') irun
        open(unit=9,file=fname)
        do jj=1,110
         read(9,'(a)',err=14,end=14) sstring
        enddo
c        write(6,'(a)') sstring
        read(sstring,'(30x,e15.4)') normfac
c Correction to make cross section per nucleon
c        write(6,'(''normfac='',e12.4)') normfac
c aluminum factor 27 times attenuation factor
        if(it.eq.3) normfac = normfac * 27. * 0.7
        write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/simctxt/simc_'',
     >     i4,''_pi_rad'')') irun
        open(unit=9,file=fname)
        sum1 = 0.
        sum2 = 0.
        sum3 = 0.
        sum4 = 0.
        sum5 = 0.
        do im=1,20
         sum1m(im)=0.
         sum2m(im)=0.
         sratem(im)=0.
         sratemer(im)=0.
         sum1z(im)=0.
         sum2z(im)=0.
         sratez(im)=0.
         sratezer(im)=0.
        enddo

! order written is yptar, then xptar
 188	format(e12.4,21f9.4,2e12.4,5f8.3,L2,4f9.4)
        do jj=1,simcevents
         read(9,'(a)',end=13) string
c fix stars. 
         do k=13, 13+189, 9
          if(string(k:k+8).eq.'*********') then
           write(string(k:k+8),'("  999.999")')
c           write(16,'(''stars'',i2,i5,i6,a)') icase,
c     >      irun,jj,string(1:50)
          endif
         enddo
         read(string,188,err=881) weight,
     >    dpe,dphie,dthe,hztar,hdcx,hdcxp,hdcy,hdcyp,
     >    dpp,dphip,dthp,pztar,pdcx,pdcxp,pdcy,pdcyp,
     >    dpp_init, xptar_init, yptar_init,yt_orig,yrast,
     >    sigcc,sigcm,decdist,m2final,
     >    simcthcm,simcphicm,simct,doingdelta,
     >    dpe_init, xptar_e_init, yptar_e_init,yt_e_orig
         if(irun.eq.3444) then
          read(string,8218) thsimc,phisimc1,phisimc2
 8218     format(12x,189x,24x,40x,2x,45x,3f9.3)
         endif
         goto 882
 881     write(681,'(/''error reading string'',i7,a)') jj,
     >     fname
         write(681,'(a)') string(1:50)
         write(681,'(a)') string(51:100)
         write(681,'(a)') string(101:150)
         write(681,'(a)') string(151:200)
         write(681,'(a)') string(201:250)
 882     continue
         muons(2) = muons(2) + 1.
         if(m2final.lt.0.11) muons(1) = muons(1) + 1.
         if(jj.lt.0 .and. abs(dpp-dpp_init).gt.2.) then
c          write(6,'(''simc 1'',2f8.3)') decdist,m2final
          write(6,'(''s'',i5,8f7.3)') jj, 
     >     dpp, dpp_init, 
     >     dpe, dpe_init, 
     >     dthp*10., xptar_init, decdist,m2final
c     >     dphip*10., yptar_init
c     >    , hztar, 
c     >     yt_orig/sin(thp * pi/180.)
         endif
         sum3 = sum3 + 1.
         dthe = dthe / 100.
c need to change sign!
c         dphie = -1. * dphie
         dphie = dphie / 100.
         dthp = dthp / 100.
         dphip = dphip / 100.
         pdcxp = pdcxp / 100.
         pdcyp = pdcyp / 100.
         hdcxp = hdcxp / 100.
         hdcyp = hdcyp / 100.
         xaero = pdcx + 231. * pdcxp
         yaero = pdcy + 231. * pdcyp

c save original values
         dpeo = dpe_init
         dppo = dpp_init
         dtheo = xptar_e_init/1000.
         dthpo = xptar_init/1000.
         dphieo = yptar_e_init/1000.
         dphipo = yptar_init/1000.

! override recon values with original ones for kinematics too
c         dpe = dpe_init
c         dthe = xptar_e_init/1000.
c         dphie = yptar_e_init/1000.
c overriding SHMS SIMC !
c         dpp = dpp_init
c         dthp = xptar_init/1000.
c         dphip = yptar_init/1000.

         pexit=1
         xexit = pdcx -307. * pdcxp
         yexit = pdcy -307. * pdcyp
         crad = 23.81
         voffset = crad - 24.035
         hwid = 11.549/2.
         if(abs(yexit) .lt. hwid) then
           if(abs(xexit) .gt.  (crad + voffset)) pexit=0 
         else
           if ( yexit .ge. hwid) then
            if ( (xexit - voffset)**2 + 
     >           (yexit - hwid)**2 .gt.
     >            crad**2) pexit=0
           endif
           if ( yexit .le. -1.*hwid) then
            if ( (xexit - voffset)**2 + 
     >           (yexit + hwid)**2 .gt.
     >            crad**2) pexit=0
           endif
         endif
         if(skipexit) pexit=1
c         if(pexit.eq.0) 
c     >    write(6,'(''pexit'',i7,i2,6f8.3)') jj,
c     >      pexit,xexit,yexit,pdcx,pdcxp,pdcy,pdcyp

c HMS dipole exit
         xexit = hdcx - 148. * hdcxp
         yexit = hdcy - 148. * hdcyp
         hexit=1
         if ( (xexit - 2.8)**2 + 
     >        (yexit)**2 .gt. 46.607**2) hexit=0;
         if(skipexit) hexit=1
c         if(hexit.eq.0) 
c     >    write(6,'(''hexit'',i7,i2,6f8.3)') jj,
c     >      pexit,xexit,yexit,pdcx,pdcxp,pdcy,pdcyp
! HMS Calorimeter cut
         xcal = hdcx + hcal_4ta_zpos * hdcxp
         ycal = hdcy + hcal_4ta_zpos * hdcyp
         hcal = 1
 	 if (ycal.gt.(hcal_left-2.0) .or. 
     >      ycal.lt.(hcal_right+2.0) .or.
     >      xcal.gt.(hcal_bottom-2.0) .or. 
     >      xcal.lt.(hcal_top+2.0)) hcal=0
c add DC cut at focal plane
         xcal = hdcx
         if(abs(xcal).gt.58.) hcal=0
c add hotoscope cut
         xcal = hdcx + 318. * hdcxp
         if(abs(xcal).gt.59.) hcal=0

         if(abs(dpe_init).lt.10.)
     >    hcalh(1,hcal) = hcalh(1,hcal)+1

         if(skipcal) hcal=1
! SHMS Calorimeter cut
         xcal = pdcx + scal_4ta_zpos * pdcxp
         ycal = pdcy + scal_4ta_zpos * pdcyp
         scal = 1
 	 if (ycal.gt.(scal_left-2.0) .or. 
     >      ycal.lt.(scal_right+2.0) .or.
     >      xcal.gt.(scal_bottom-2.0) .or. 
     >      xcal.lt.(scal_top+2.0)) scal=0
         scalsv = scal
c add DC cut at focal plane
         xcal = pdcx
         ycal = pdcy
         if(abs(xcal).gt.38.) scal=0
         if(abs(ycal).gt.38.) scal=0
c histogram of x,y at fp
         if(scal.eq.1) then
          ix = int((xcal + 40.)/4.)+1
          iy = int((ycal + 40.)/4.)+1
          pxyhs(ix,iy) = pxyhs(ix,iy)+1
         endif
! Hourglass cut
         if(ycal .gt. 10 + abs(xcal)) scal = 0
         if(ycal .lt. -10 - abs(xcal)) scal = 0

         if(dpe.gt.dphmslo .and. dpe.lt.dphmshi .and.
     >      dpp.gt.dpshmslo .and. dpp.lt.dpshmshi.and.
     >      dthe.lt.dthhmsmax .and.
     >      dthp.lt.dthshmsmax .and.
     >      dphie.lt.dphihmsmax .and.
     >      dphip.lt.dphishmsmax .and.
     >      dthe.gt.dthhmsmin .and.
     >      dthp.gt.dthshmsmin .and.
     >      dphie.gt.dphihmsmin .and.
     >      dphip.gt.dphishmsmin .and.
     >      hexit.eq.1.and. 
     >      hcal.eq.1 .and.
c add anti-muon cut
c     >       m2final.gt.0.11.and.
c add cuts at aerogel xy
     >      abs(xaero).lt.xmaxaero .and. abs(yaero).lt.ymaxaero.and.
     >      (epelas.eq.0 .or. w.lt. 1.1)) then
          scalh(1,scal) = scalh(1,scal)+1
c         if(jj.lt.100) write(6,'(i6,2i2,5f7.2)') jj,scal,
c     >    scalsv,xcal,ycal,dpp
         endif

         if(skipcal) scal=1

c now at SC2. HMS distribtuions
         if(hcal.eq.1 .and. hexit.eq.1 .and.
     >     abs(pp)/(e0-abs(ep0)).lt.0.7) then
          iy = min(9,max(1,int((hdcy + 320.*hdcyp + 35.)/70. * 9)+1))
          ix = min(50,max(1,int((hdcx + 320.*hdcxp + 80.)/160. * 50)+1))
          idx = min(50,max(1,int((hdcxp + 0.100)/0.200 * 50)+1))
          huth(ix,idx,iy,2) = huth(ix,idx,iy,2) + 1.
         endif
c hut distributions SHMS at fp.
         if(abs(pdcx).lt.50.0 .and. scal.eq.1 .and.pexit.eq.1 .and.
     >     abs(pp)/(e0-abs(ep0)).lt.0.7) then
          iy = min(9,max(1,int((pdcy + 0.*pdcyp + 50.)/100. * 9)+1))
          ix = min(50,max(1,int((pdcx + 0.*pdcxp + 50.)/100. * 50)+1))
          idx = min(50,max(1,int((pdcxp + 0.100)/.200 * 50)+1))
          huts(ix,idx,iy,2) = huts(ix,idx,iy,2) + 1.
         endif

c fill in wide acceptnce array
         if(abs(dpe).lt.13 .and.
c     >    hztar.gt.0. .and.
     >    abs(dthe).lt.0.100 .and. 
     >    abs(dphie).lt.0.045 .and. hexit.eq.1) then
          ith = int((dthe + 0.100) / 0.200 * 100)+1
          iphi = int((dphie + 0.045) / 0.090 * 100.)+1
          ipt = int((dpe + 13.) / 26. * 30.)+1
          accepw(2,ipt,ith,iphi) = accepw(2,ipt,ith,iphi) + 1
         endif
         if(abs(dpp-10.).lt.30 .and.
c     >    pztar.gt.0. .and.
     >    abs(dthp).lt.0.100 .and. 
     >    abs(dphip).lt.0.045 .and. pexit.eq.1) then
          ith = int((dthp + 0.100) / 0.200 * 100)+1
          iphi = int((dphip + 0.045) / 0.090 * 100.)+1
          ipt = int((dpp + 20.) / 60. * 30.)+1
          accepw(4,ipt,ith,iphi) = accepw(4,ipt,ith,iphi) + 1
         endif

c fill in acceptance array
         okhms = 0
         okshms = 0
         if(abs(dpe).lt.13 .and.
     >    abs(dthe).lt.0.100 .and. 
     >    abs(dphie).lt.0.030) then
          ith = int((dthe + 0.100) / 0.200 * 70)+1
          iphi = int((dphie + 0.030) / 0.060 * 30.)+1
          ipt = int((dpe + 13.) / 26. * 30.)+1
          accep(2,ipt,ith,iphi) = accep(2,ipt,ith,iphi) + 1
          okhms = okacc(1,ipt,ith,iphi)
          if(okhms.eq.1) accep(6,ipt,ith,iphi) = 
     >     accep(6,ipt,ith,iphi) + 1
         endif
         if(abs(dpp-5.).lt.17 .and.
     >    abs(dthp).lt.0.100 .and. 
     >    abs(dphip).lt.0.030) then
          ith = int((dthp + 0.100) / 0.200 * 70)+1
          iphi = int((dphip + 0.030) / 0.060 * 30.)+1
          ipt = int((dpp + 12.) / 34. * 30.)+1
          accep(4,ipt,ith,iphi) = accep(4,ipt,ith,iphi) + 1
          okshms = okacc(2,ipt,ith,iphi)
          if(okshms.eq.1) accep(8,ipt,ith,iphi) = 
     >     accep(8,ipt,ith,iphi) + 1
         endif
c use same th and phi range for dpp<-12 as for -12
         if(dpp.lt.-12 .and.
     >    abs(dthp).lt.0.100 .and. 
     >    abs(dphip).lt.0.030) then
          ith = int((dthp + 0.100) / 0.200 * 70)+1
          iphi = int((dphip + 0.030) / 0.060 * 30.)+1
          ipt = 1
          okshms = okacc(2,ipt,ith,iphi)
         endif


         if(dphie.gt.0.) iq2bin=1
         if(dphie.le.0.) iq2bin=2
c just one bin now
c        iq2bin=1

         the = the0 - dthe
         ep = ep0 * (1. + dpe/100.)
c         p_x(1) =  ep * sin(the) * cos(dphie)
c         p_y(1) = -ep * sin(the) * sin(dphie)
c         p_z(1) =  ep * cos(the) 
         ppi = abs(pp) * (1. + dpp/100.)
         thpi = thp * 3.1415928/180. + dthp
c         p_x(2) = -ppi * sin(thpi) * cos(dphip)
c         p_y(2) = -ppi * sin(thpi) * sin(dphip)
c         p_z(2) =  ppi * cos(thpi) 
	 call physics_angles(the0, phi0e, dthe, dphie, 
     >     ep,p_x(1),p_y(1),p_z(1))
	 call physics_angles(thp_rad, phi0p, dthp, dphip,
     >     ppi,p_x(2),p_y(2),p_z(2))
         nu = e0 - ep
         q2 = 2. * e0 * ep * (1. - p_z(1)/ep)
         x = q2 / 2. / amp / nu
         epv(1)=p_x(1)
         epv(2)=p_y(1)
         epv(3)=p_z(1)
         epv(4)=ep
         p1vp(1)=p_x(2)
         p1vp(2)=p_y(2)
         p1vp(3)=p_z(2)
         p1vp(4)= sqrt(ppi**2 + ampi**2)
         zpi = p1vp(4) / nu
         call getphi(e0,epv,p1vp,phicm)
         call getcos(e0,epv,p1vp,ampi,cthcm,pt)

         if(jj.lt.100.and.irun.eq.3444) then
          write(16,'(''tst'',14f7.3)')
     >     pt/ppi, epv,p1vp,thsimc, sin(thsimc),
     >     phicm,phisimc1,phisimc2
         endif
         Empi = e0 + amp - ep - sqrt(ampi**2 + ppi**2)
         Emk = e0 + amp - ep - sqrt(amk**2 + ppi**2)
         Emp = e0 + amp - ep - sqrt(amp**2 + ppi**2)

         w2=(e0 + amp - ep)**2 - p_x(1)**2 - p_y(1)**2 - (p_z(1)-e0)**2
         w=0.
         if(w2.gt.0.) w = sqrt(w2)

          t = -1.0 * (
     >     (p1vp(4) - nu)**2 -
     >     (p1vp(3) + epv(3) - e0)**2 - 
     >     (p1vp(1) + epv(1))**2 -
     >     (p1vp(2) + epv(2))**2) 
         mmpi2 = 
     >     (Empi)**2 - 
     >     (p_x(1) + p_x(2))**2 -
     >     (p_y(1) + p_y(2))**2 -
     >     (p_z(1) + p_z(2)- e0)**2

         call accminmax(dpe,dpp,
     >     dthhmsmin,dthshmsmin,dphihmsmin,dphishmsmin,
     >     dthhmsmax,dthshmsmax,dphihmsmax,dphishmsmax,
     >     settoanalyze)
c new way to get acceptance
         call newacc(dpe,dphie,dthe,okhms,
     >               dpp,dphip,dthp,okshms)
         call acccorr(dpe,dphie,dthe,
     >               dpp,dphip,dthp,wcorr)
         if(noacccorr) wcorr = 1.0
         if(dpe.gt.dphmslo .and. dpe.lt.dphmshi .and.
     >      dpp.gt.dpshmslo .and. dpp.lt.dpshmshi.and.
     >      dthe.lt.dthhmsmax .and.
     >      dthp.lt.dthshmsmax .and.
     >      dphie.lt.dphihmsmax .and.
     >      dphip.lt.dphishmsmax .and.
     >      dthe.gt.dthhmsmin .and.
     >      dthp.gt.dthshmsmin .and.
     >      dphie.gt.dphihmsmin .and.
     >      dphip.gt.dphishmsmin .and.
c added cut on W here. TOok out again
c     >       w.gt.1.8 .and.
c added weight cut
     >       wcorr.gt.0. .and.
c added ytar cut
     >      abs(pztar).lt.7.0 .and. 
c         if(dpeo.gt.dphmslo .and. dpeo.lt.dphmshi .and.
c     >      dppo.gt.dpshmslo .and. dppo.lt.dpshmshi.and.
c     >      dtheo.lt.dthhmsmax .and.
c     >      dthpo.lt.dthshmsmax .and.
c     >      dphieo.lt.dphihmsmax .and.
c     >      dphipo.lt.dphishmsmax .and.
c     >      dtheo.gt.dthhmsmin .and.
c     >      dthpo.gt.dthshmsmin .and.
c     >      dphieo.gt.dphihmsmin .and.
c     >      dphipo.gt.dphishmsmin .and.
     >       (skipok .or. (
     >       okhms.eq.1 .and. okshms.eq.1)) .and.
     >       pexit.eq.1 .and. hexit.eq.1.and. 
     >       hcal.eq.1 .and. scal. eq. 1 .and.
c add anti-muon cut
c     >       m2final.gt.0.11.and.
c add cuts at aerogel xy
     >      abs(xaero).lt.xmaxaero .and. abs(yaero).lt.ymaxaero.and.
     >      (epelas.eq.0 .or. w.lt. 1.1)) then
c cere eff for sp18 (assume 100% later). Note use of efff not eff
          ceff = 1.0
          if(irun.lt.4400) then
           ith = int((dthe + 0.070) / 0.140 *  20.)+1
           iphi = int((dphie + 0.030) / 0.060 * 20.)+1
           ipt = int((dpe + 12.)/26. * 30.)+1
           if(ith.ge.1.and.iphi.ge.1.and.ipt.ge.1.and.
     >     ipt.le.30.and.iphi.le.20.and.ith.le.20) then
            if(cerefff(ipt,iphi,ith,1,1).gt.10) then
             ceff = float(cerefff(ipt,iphi,ith,2,1)) / 
     >        float(cerefff(ipt,iphi,ith,1,1))
            endif
           endif
          endif
c hg eff for p>3.0
          heff = 0.96
          if(ppi.gt.3.25) heff = 0.97
          if(ppi.gt.3.7) heff = 0.98
          if(ppi.gt.3.0 .and. irun.gt.4400) then
           ith = int((dthp + 0.050) / 0.100 * 20)+1
           iphi = int((dphip + 0.030)/ 0.060 * 20.)+1
           ipt = int((dpp +18.) / 53. * 30.)+1
           ith = min(20,max(1,ith))
           iphi = min(20,max(1,iphi))
           ipt = min(30,max(1,ipt))
           ip = 2
           if(irun.gt.6500) ip = 3
           j = 1
           denom = hgefff(ipt,iphi,ith,j,ip)
           if(ppi.gt.3.25 .or. denom.lt.10) j=3
           denom = hgefff(ipt,iphi,ith,j,ip)
           if(ppi.gt.3.7.or.denom.lt.10) j=5
           denom = hgefff(ipt,iphi,ith,j,ip)
           numer = hgefff(ipt,iphi,ith,j+1,ip)
           if(denom.gt.10) heff = numer / denom
c           write(6,'(3i3,2i2,f7.3,2f8.0)') ipt,iphi,
c     >      ith,j,ip,heff,numer,denom
          endif
c new way: above is ignored
          call gethgcut(irun,pdcx,pdcxp,pdcy,pdcyp,
     >      xycer,ppi,heff,hgpmin)
c took out: no HG cut for exclusive
c          if(mmpi2.lt.1.08) heff=1.0
c added wcorr to weight correction
          weight = weight * ceff * heff * wcorr
          sum1 = sum1 + weight
          sum2 = sum2 + 1.
          im = min(20,int(mmpi2/0.5)+1)
          sum1m(im) = sum1m(im) + weight
          sum2m(im) = sum2m(im) + 1
          im = min(20,int(zpi/0.05)+1)
          sum1z(im) = sum1z(im) + weight
          sum2z(im) = sum2z(im) + 1
c final state counter
          ipart = 0
          if(abs(m2final-m_mu).lt.0.01) ipart=1
          if(abs(m2final-m_pi).lt.0.01) ipart=2
          if(abs(m2final-m_k).lt.0.05) ipart=3
          idist=min(30,max(1,int((decdist/1.0)+1)))
          if(ipart.ne.0) fstate(1,idist,ipart) = 
     >      fstate(1,idist,ipart) +weight
          fstate(1,idist,4) = fstate(1,idist,4) +
     >     weight
          if(abs(pztar).lt.7.) fstate(1,idist,5) = 
     >     fstate(1,idist,5) + weight
          if(jj.lt.0 .and.ipart.ne.2) then
           write(6,'("f 1",2i3,f6.2,2e12.2)') ipart,
     >      idist,m2final,fstate(1,idist,ipart),
     >      fstate(1,idist,4)
          endif
c counters versus kinematic
          k = max(1,min(20,int((dpe+12.)/24. * 20.)+1))
          pirks(1,k) = pirks(1,k) + 1
          piaccks(1,k) = piaccks(1,k) + weight

          k = max(1,min(20,int((dthe*1000.+70.)/140.*20.)+1))
          pirks(2,k) = pirks(2,k) + 1
          piaccks(2,k) = piaccks(2,k) + weight

          k = max(1,min(20,int((dphie*1000.+ 30.)/ 60.*20.)+1))
          pirks(3,k) = pirks(3,k) + 1
          piaccks(3,k) = piaccks(3,k) + weight

          k = max(1,min(20,int((dpp+18.)/53. * 20.)+1))
          pirks(4,k) = pirks(4,k) + 1
          piaccks(4,k) = piaccks(4,k) + weight

          k = max(1,min(20,int((dthp*1000.+50.)/100.*20.)+1))
          pirks(5,k) = pirks(5,k) + 1
          piaccks(5,k) = piaccks(5,k) + weight

          k = max(1,min(20,int((dphip*1000.+ 30.)/ 60.*20.)+1))
          pirks(6,k) = pirks(6,k) + 1
          piaccks(6,k) = piaccks(6,k) + weight
          pt2 = pt**2
          if(zpi.lt.1.2 .and. sqrt(pt2) .lt. 1.00) then
           iz = min(20,int(zpi*20.)+1)
c versus dp 
           if(mmpi2.gt.2.5) then
            idp = int((dpe + 12.) / 24.* 100.)+1
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdpmc(1,idp,1) = cntsdpmc(1,idp,1) + weight 
             kk = min(16,max(1,int((dpe - dpe_init + 2.)/4.*16)+1))
             deldpeh(idp,kk) = deldpeh(idp,kk) + 1
             deldpeh(idp,17) = deldpeh(idp,17) + 1
             kk = min(16,max(1,int(((xptar_e_init - 1000.*dthe) 
     >         + 5.)/10.*16)+1))
             delxpeh(idp,kk) = delxpeh(idp,kk) + 1
             delxpeh(idp,17) = delxpeh(idp,17) + 1
             kk = min(16,max(1,int(((yptar_e_init - 1000.*dphie) 
     >         + 5.)/10.*16)+1))
             delypeh(idp,kk) = delypeh(idp,kk) + 1
             delypeh(idp,17) = delypeh(idp,17) + 1
            endif
            idp = int((dpp + 25.) / 65.* 100.)+1
            if(jj.lt.0 .and. idp.gt.73) then
             write(6,'(2i5,10f6.1)') jj,idp, 
     >        dpp, dpp_init, 
     >        1000.*dthp, xptar_init,1000.*dphip, yptar_init,
     >        1000.*dthe, xptar_e_init,1000.*dphie, yptar_e_init
            endif
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdpmc(2,idp,1) = cntsdpmc(2,idp,1) + weight 
             kk = min(16,max(1,int((dpp - dpp_init + 2.)/4.*16)+1))
             deldpph(idp,kk) = deldpph(idp,kk) + 1
             deldpph(idp,17) = deldpph(idp,17) + 1
             kk = min(16,max(1,int(((xptar_init - 1000.*dthp) 
     >         + 5.)/10.*16)+1))
             delxpph(idp,kk) = delxpph(idp,kk) + 1
             delxpph(idp,17) = delxpph(idp,17) + 1
             kk = min(16,max(1,int(((yptar_init - 1000.*dphip) 
     >         + 5.)/10.*16)+1))
             delypph(idp,kk) = delypph(idp,kk) + 1
             delypph(idp,17) = delypph(idp,17) + 1
            endif
c uding delta original here
            idp = int((dpe_init + 12.) / 24.* 100.)+1
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdpmco(1,idp,1) = 
     >         cntsdpmco(1,idp,1) + weight 
            endif
            idp = int((dpp_init + 25.) / 65.* 100.)+1
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdpmco(2,idp,1) = 
     >       cntsdpmco(2,idp,1) + weight 
            endif
           endif ! end of check on mmpi2
c special code: use iz=1 for exclusive peak, delta
           izxtra=0
           if(mmpi2.gt.0.68 .and. mmpi2.lt.1.08) izxtra=1
           if(mmpi2.gt.1.25 .and. mmpi2.lt.1.65) izxtra=2
           izm = 0
           mmpi = sqrt(mmpi2)
           if(mmpi.gt.1.05 .and. mmpi.lt.1.6999) 
     >       izm = int((mmpi-1.05)/0.65*20)+1 
           if(izm.gt.20) write(6,'(''ERROR IZM'',i3,2f10.4)') 
     >      izm,mmpi,mmpi2
           iqm = 1
           izz = min(50,int(zpi*50.)+1)
           mmpi = sqrt(max(0.,mmpi2))
           im = max(1,min(50,int((mmpi-0.8)/0.02)+1))
           iphi = max(1,min(15,int(phicm/6.29*15 ) + 1)) 
c           ipt = int(pt2 / 0.5 * 12) + 1
           ipt = int(sqrt(pt2) / 1.00 * 16.) + 1
           iptm = (ipt + 1) / 2
           iphim = (iphi + 1) / 2
           if(mmpi2.gt.mmpi2cut.and.w.gt.wcut) then
            cntsmc(iq2bin,ipt,iphi,iz,1) = 
     >        cntsmc(iq2bin,ipt,iphi,iz,1) + 1
            cntsmc(iq2bin,ipt,iphi,iz,2) = 
     >        cntsmc(iq2bin,ipt,iphi,iz,2) + weight
           endif
            J1=int(24.*(dpe-  dphmslo)/(  dphmshi  -dphmslo))+1
            J2=int(20.*(dphie-dphihmsmin)/(dphihmsmax-dphihmsmin))+1
            J3=int(20.*(dthe -dthhmsmin)/( dthhmsmax -dthhmsmin))+1
            cntsaccmc(1,j1,j2,j3,1) = 
     >        cntsaccmc(1,j1,j2,j3,1) + 1
            cntsaccmc(1,j1,j2,j3,2) = 
     >        cntsaccmc(1,j1,j2,j3,2) + weight
            J1=int(24.*(dpp-    dpshmslo)/(  dpshmshi  -dpshmslo))+1
            J2=int(20.*(dphip-dphishmsmin)/(dphishmsmax-dphishmsmin))+1
            J3=int(20.*(dthp - dthshmsmin)/( dthshmsmax -dthshmsmin))+1
            cntsaccmc(2,j1,j2,j3,1) = 
     >        cntsaccmc(2,j1,j2,j3,1) + 1
            cntsaccmc(2,j1,j2,j3,2) = 
     >        cntsaccmc(2,j1,j2,j3,2) + weight
c sigcm and sigcc for pi_rad
           imc = 29
           if(mmpi2.gt.mmpi2cut.and.w.gt.wcut) then
            cntsmc(iq2bin,ipt,iphi,iz,imc) = 
     >         cntsmc(iq2bin,ipt,iphi,iz,imc) + sigcm
           endif
           if(izm.gt.0) cntsmcm(iqm,iptm,iphim,izm,imc) = 
     >         cntsmcm(iqm,iptm,iphim,izm,imc) + sigcm
           cntsmcmmpi(im,imc) = cntsmcmmpi(im,imc)+sigcm
           cntsmcz(izz,imc) = cntsmcz(izz,imc) + sigcm
           imc = 30
           if(mmpi2.gt.mmpi2cut.and.w.gt.wcut) then
            cntsmc(iq2bin,ipt,iphi,iz,imc) = 
     >         cntsmc(iq2bin,ipt,iphi,iz,imc) + sigcc
           endif
           if(izm.gt.0) cntsmcm(iqm,iptm,iphim,izm,imc) = 
     >        cntsmcm(iqm,iptm,iphim,izm,imc) + sigcc
           cntsmcmmpi(im,imc) = cntsmcmmpi(im,imc)+sigcc
           cntsmcz(izz,imc) = cntsmcz(izz,imc) + sigcc

           if(izm.ne.0.and.izm.lt.21) then
            cntsmcm(iqm,iptm,iphim,izm,1) = 
     >        cntsmcm(iqm,iptm,iphim,izm,1) + 1
            cntsmcm(iqm,iptm,iphim,izm,2) = 
     >        cntsmcm(iqm,iptm,iphim,izm,2) + weight
c            if(iqm.eq.1.and.iptm.eq.1.and.iphim.eq.1.and.izm.eq.10) 
c     >       write(6,'(''adding'',8i3,f8.1,2e12.4)') 
c     >        iqm,iptm,iphim,izm,iq2bin,ipt,iphi,iz,
c     >        cntsmcm(iqm,iptm,iphim,izm,1),WEIGHT,
c     >        cntsmcm(iqm,iptm,iphim,izm,2) 
           endif
           if(izxtra.gt.0) then
            cntsmc(iq2bin,ipt,iphi,izxtra,1) = 
     >       cntsmc(iq2bin,ipt,iphi,izxtra,1) + 1
            cntsmc(iq2bin,ipt,iphi,izxtra,2) = 
     >       cntsmc(iq2bin,ipt,iphi,izxtra,2) + weight
           endif
           cntsmcmmpi(im,1) = cntsmcmmpi(im,1) + 1
           cntsmcmmpi(im,2) = cntsmcmmpi(im,2) + weight
           cntsmcz(izz,1) = cntsmcz(izz,1) + 1
           cntsmcz(izz,2) = cntsmcz(izz,2) + weight
c  with cut on mmpi2
c          if(mmpi2.gt.2.0) then
c           cntsmc(iq2bin,ipt,iphi,iz,5) = 
c    >       cntsmc(iq2bin,ipt,iphi,iz,5) + 1
c           cntsmc(iq2bin,ipt,iphi,iz,6) = 
c    >       cntsmc(iq2bin,ipt,iphi,iz,6) + weight
c          endif
!           if(iz.ne.1) then
             avkin(iq2bin,ipt,iphi,iz,1) = 
     >        avkin(iq2bin,ipt,iphi,iz,1) + t 
             avkin(iq2bin,ipt,iphi,iz,2) = 
     >        avkin(iq2bin,ipt,iphi,iz,2) + acos(cthcm)
             avkin(iq2bin,ipt,iphi,iz,3) = 
     >        avkin(iq2bin,ipt,iphi,iz,3) + phicm
c changed from hztar to z
             avkin(iq2bin,ipt,iphi,iz,4) = 
     >        avkin(iq2bin,ipt,iphi,iz,4) + zpi
c         if(w.lt.1.2) write(16,'(''w err 2'',10f7.2)') 
c     >     e0,ep,ep0,the,
c     >     q2,x,w,sqrt(amp**2 + q2*(1./x-1))
             avkin(iq2bin,ipt,iphi,iz,5 ) = 
     >        avkin(iq2bin,ipt,iphi,iz,5) + w
             avkin(iq2bin,ipt,iphi,iz,6) = 
     >        avkin(iq2bin,ipt,iphi,iz,6) + q2
             avkin(iq2bin,ipt,iphi,iz,7) = 
     >        avkin(iq2bin,ipt,iphi,iz,7) + mmpi2
             avkin(iq2bin,ipt,iphi,iz,8) = 
     >        avkin(iq2bin,ipt,iphi,iz,8) + pt2 
             avkin(iq2bin,ipt,iphi,iz,9) = 
     >        avkin(iq2bin,ipt,iphi,iz,9) + 1.
            if(izm.ne.0) then
             avkinm(iqm,iptm,iphim,izm,1) = 
     >        avkinm(iqm,iptm,iphim,izm,1) + t 
             avkinm(iqm,iptm,iphim,izm,2) = 
     >        avkinm(iqm,iptm,iphim,izm,2) + acos(cthcm)
             avkinm(iqm,iptm,iphim,izm,3) = 
     >        avkinm(iqm,iptm,iphim,izm,3) + phicm
             avkinm(iqm,iptm,iphim,izm,4) = 
     >        avkinm(iqm,iptm,iphim,izm,4) + zpi
         if(w.lt.1.2) write(16,'(''w err'',10f7.2)') e0,ep,ep0,the,
     >     q2,x,w,sqrt(amp**2 + q2*(1./x-1))
             avkinm(iqm,iptm,iphim,izm,5 ) = 
     >        avkinm(iqm,iptm,iphim,izm,5) + w
             avkinm(iqm,iptm,iphim,izm,6) = 
     >        avkinm(iqm,iptm,iphim,izm,6) + q2
             avkinm(iqm,iptm,iphim,izm,7) = 
     >        avkinm(iqm,iptm,iphim,izm,7) + mmpi2
             avkinm(iqm,iptm,iphim,izm,8) = 
     >        avkinm(iqm,iptm,iphim,izm,8) + pt2 
             avkinm(iqm,iptm,iphim,izm,9) = 
     >        avkinm(iqm,iptm,iphim,izm,9) + 1.
           endif
            if(izxtra.gt.0) then
             avkin(iq2bin,ipt,iphi,izxtra,1) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,1) + t 
             avkin(iq2bin,ipt,iphi,izxtra,2) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,2) + acos(cthcm)
             avkin(iq2bin,ipt,iphi,izxtra,3) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,3) + phicm
c changed from hztar to z
             avkin(iq2bin,ipt,iphi,izxtra,4) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,4) + zpi
         if(w.lt.1.2) write(16,'(''w err 4'',10f7.2)') e0,ep,ep0,the,
     >     q2,x,w,sqrt(amp**2 + q2*(1./x-1))
             avkin(iq2bin,ipt,iphi,izxtra,5 ) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,5) + w
             avkin(iq2bin,ipt,iphi,izxtra,6) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,6) + q2
             avkin(iq2bin,ipt,iphi,izxtra,7) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,7) + mmpi2
             avkin(iq2bin,ipt,iphi,izxtra,8) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,8) + pt2 
             avkin(iq2bin,ipt,iphi,izxtra,9) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,9) + 1.
           endif
          endif
         endif
        enddo
 13     srate(i) = sum1 * normfac / sum3
        srateer(i) = srate(i) / sqrt(sum2)
        do im=1,20
         sratem(im) = sum1m(im) * normfac / sum3
         sratemer(im) = sratem(im) / sqrt(max(1.,sum2m(im)))
         sratez(im) = sum1z(im) * normfac / sum3
         sratezer(im) = sratez(im) / sqrt(max(1.,sum2z(im)))
        enddo
        write(6,'(''normfac='',5e10.3)') 
     >    normfac,srate(i),sum1,sum2,sum3
        avnfac(1) = avnfac(1) + normfac * chrg
        sum3tot(1) = sum3tot(1) + sum3
        do k=1,6
         do kk=1,20
          ratesk(k,kk) = piaccks(k,kk)  * normfac / sum3
          ratesker(k,kk) = ratesk(k,kk)/sqrt(max(1.,pirks(k,kk)))
          if(mmpi2_cent_h.gt.2.0 .or. epelas.eq.1) then
           rateskt(k,kk) = rateskt(k,kk) + ratesk(k,kk)
          endif
         enddo
        enddo

 14     continue

! Exclusive  pions, endcaps, and rho, no_rad, K, Knorad
c added case 7 for rho
c added case 8 and 9 for proton (no decays)
        do icase=1,9
        sratex(i,icase)=0.
        sratexer(i,icase)=0.
        normfacx = 0.
        sum1 = 0.
        sum2 = 0.
        sum3 = 0.
        sum4 = 0.
        do im=1,20
         sum1m(im)=0.
         sum2m(im)=0.
         sum1z(im)=0.
         sum2z(im)=0.
         sratemx(im,icase)=0.
         sratemxer(im,icase)=0.
         sratezx(im,icase)=0.
         sratezxer(im,icase)=0.
        enddo
        if(icase.eq.1) write(fname,
     >    '(''/group/c-sidis/bosted/simc/outfiles/simc_'',
     >     i4,''_pi_excl.hist'')') irun
        if(icase.eq.7.or.icase.eq.2) write(fname,
     >    '(''/group/c-sidis/bosted/simc/outfiles/simc_'',
     >     i4,''_pi_rho.hist'')') irun
        if(icase.eq.3) write(fname,
     >    '(''/group/c-sidis/bosted/simc/outfiles/simc_'',
     >     i4,''_endcap.hist'')') irun
        if(icase.eq.4) write(fname,
     >    '(''/group/c-sidis/bosted/simc/outfiles/simc_'',
     >     i4,''_pi_norad.hist'')') irun
        if(icase.eq.5) write(fname,
     >    '(''/group/c-sidis/bosted/simc/outfiles/simc_'',
     >     i4,''_k_rad.hist'')') irun
        if(icase.eq.6) write(fname,
     >    '(''/group/c-sidis/bosted/simc/outfiles/simc_'',
     >     i4,''_k_norad.hist'')') irun
        if(icase.eq.8) write(fname,
     >    '(''/group/c-sidis/bosted/simc/outfiles/simc_'',
     >     i4,''_p_rad.hist'')') irun
        if(icase.eq.9) write(fname,
     >    '(''/group/c-sidis/bosted/simc/outfiles/simc_'',
     >     i4,''_p_norad.hist'')') irun
        close(unit=9)
        open(unit=9,file=fname)
! sometimes on line 111, sometimes on 110
c        write(6,'(''opened '',i3,1x,a)') icase,fname(1:60)
        do jj=1,112
         read(9,'(a)',err=16,end=16) sstring
c          write(6,'(2i4,a)') icase,jj,sstring(20:26)
         if(sstring(20:26).eq."normfac") then
c           write(6,'(i2,a)') icase,sstring
          read(sstring(30:60),*) normfacx
         endif
        enddo
        if(normfacx.eq.0.) write(16,
     >    '(''error normfac_x='',i3,e12.4)') icase,normfacx
        if(normfacx.eq.0.) write(6,
     >    '(''error normfac_x='',i3,e12.4)') icase,normfacx
cc Correction to make cross section per nucleon
c not needed for exclusie 
c if(it.eq.3) normfacx = normfacx * 27.
c normalize endcaps down from Dummy, multiply by 27
c to get per nucleon for SIDIS, and put 0.8 for attentuation
        if(icase.eq.3) then
         if(it.eq.1) normfacx = normfacx * 0.262 * 27. * 0.7
         if(it.eq.2) normfacx = normfacx * 0.260 * 27. * 0.7
         if(it.eq.3) normfacx = normfacx * 0.000
        endif
c make Dummy bigger for excl., Delta
        if(icase.eq.1) then
         if(it.eq.3) normfacx = normfacx * 1.3
        endif
c make rho twice as big for deuteron, dummy because
c only calculates for protons
        if(icase.eq.2 .or. icase.eq.7) then
         if(it.eq.2) normfacx = normfacx * 2.
         if(it.eq.3) normfacx = normfacx * 2.
        endif
! for pi_no_rad, k_rad, k_norad, p_rad, p_norad
        if(icase.ge.4) then
         if(it.eq.3) normfacx = normfacx * 27. * 0.7
        endif
        if(icase.eq.1) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/simctxt/simc_'',
     >     i4,''_pi_excl'')') irun
        if(icase.eq.2.or.icase.eq.7) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/simctxt/simc_'',
     >     i4,''_pi_rho'')') irun
        if(icase.eq.3) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/simctxt/simc_'',
     >     i4,''_endcap'')') irun
        if(icase.eq.4) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/simctxt/simc_'',
     >     i4,''_pi_norad'')') irun
        if(icase.eq.5) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/simctxt/simc_'',
     >     i4,''_k_rad'')') irun
        if(icase.eq.6) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/simctxt/simc_'',
     >     i4,''_k_norad'')') irun
        if(icase.eq.8) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/simctxt/simc_'',
     >     i4,''_p_rad'')') irun
        if(icase.eq.9) write(fname,
     >    '(''/work/hallc/c-sidis18/bosted/simctxt/simc_'',
     >     i4,''_p_norad'')') irun
        close(unit=9)
        open(unit=9,file=fname)

c ignore rho for case 2, just do for case 7
        if(icase.ne.2) then
        do jj=1,simcevents
         errcode=1
         read(9,'(a)',end=15,err=999) string
c fix stars. Only in kaon files for SHMS tracks, rare
         do k=13, 13+189, 9
          if(string(k:k+8).eq.'*********') then
           write(string(k:k+8),'("  999.999")')
           write(6,'(''stars'',i2,i5,i6,i4,a)') icase,
     >      irun,jj,k,string(1:50)
          endif
         enddo
         hasstar=.false.
         do k=1,200
          if(string(k:k).eq.'*') then
           hasstar=.true.
           write(6,'(''hastars'',i2,i5,i6,i4,a)') icase,
     >      irun,jj,k,string(k:k+50)
          endif
        enddo

         if(.not.hasstar) then
         errcode=2
         if(icase.le.4) then
          read(string,'(e12.4,21f9.4,2e12.4,5f8.3,L2,4f9.4)',
     >     end=15,err=991) 
     >     weight,
     >     dpe,dphie,dthe,hztar,hdcx,hdcxp,hdcy,hdcyp,
     >     dpp,dphip,dthp,pztar,pdcx,pdcxp,pdcy,pdcyp,
     >     dpp_init, xptar_init, yptar_init,yt_orig,yrast
     >    ,sigcc,sigcm,decdist,m2final,
     >     simcthcm,simcphicm,simct,doingdelta,
     >    dpe_init, xptar_e_init, yptar_e_init,yt_e_orig
          if(jj.lt.0.and.icase.eq.1) write(6,'(2i5,L2,f8.3)') 
     >      irun,jj,doingdelta,dpe
         else
          read(string,'(e12.4,21f9.4,2e12.4,2f8.3)',end=15,err=991) 
     >     weight,
     >     dpe,dphie,dthe,hztar,hdcx,hdcxp,hdcy,hdcyp,
     >     dpp,dphip,dthp,pztar,pdcx,pdcxp,pdcy,pdcyp,
     >     dpp_init, xptar_init, yptar_init,yt_orig,yrast
     >    ,sigcc,sigcm,decdist,m2final
         endif
         goto 992
 991     write(681,'(/''error reading string'',i7,a)') jj,
     >     fname
         write(681,'(a)') string(1:50)
         write(681,'(a)') string(51:100)
         write(681,'(a)') string(101:150)
         write(681,'(a)') string(151:200)
         write(681,'(a)') string(201:250)
 992     continue

         if(jj.lt.0.and.icase.eq.5) 
     >     write(6,'(''simc 5'',2f8.3)') decdist,m2final
c         else
c order of yptar, then xptar fixed 4/25/2020
c          read(string,'(e12.4,21f9.4,2e12.4)',end=15,err=999) weight,
c     >     dpe,dphie,dthe,hztar,hdcx,hdcxp,hdcy,hdcyp,
c     >     dpp,dphip,dthp,pztar,pdcx,pdcxp,pdcy,pdcyp,
c     >     dpp_init, xptar_init, yptar_init,yt_orig,yrast
c         endif
         if(weight.lt.0.) then
          write(16,'(''error, neg. wieight'',i2,e10.2)') icase,
     >     weight
          write(16,'(a)') string(1:50)
          write(16,'(a)') string(51:100)
          write(16,'(a)') string(101:150)
          write(16,'(a)') string(151:200)
          write(16,'(a)') string(201:250)
          weight=0.
         endif
         if(weight.gt.1.0.and.icase.eq.2) then
          write(16,'(''error, big giantic wieight'',i2,e10.2)') icase,
     >     weight
          weight=0.
         endif
         sum3 = sum3 + 1.
         sum4 = sum4 + sigcc
         dthe = dthe / 100.
c need to change sign!
c         dphie = -1. * dphie
         dphie = dphie / 100.
         dthp = dthp / 100.
         dphip = dphip / 100.
         pdcxp = pdcxp / 100.
         pdcyp = pdcyp / 100.
         hdcxp = hdcxp / 100.
         hdcyp = hdcyp / 100.
         xaero = pdcx + 231. * pdcxp
         yaero = pdcy + 231. * pdcyp

         okhms = 0
         okshms = 0
         if(abs(dpe).lt.13 .and.
     >    abs(dthe).lt.0.100 .and. 
     >    abs(dphie).lt.0.030) then
          ith = int((dthe + 0.100) / 0.200 * 70)+1
          iphi = int((dphie + 0.030) / 0.060 * 30.)+1
          ipt = int((dpe + 13.) / 26. * 30.)+1
          if(icase.eq.1) then
c took out adding excl to acc list
c           accep(2,ipt,ith,iphi) = accep(2,ipt,ith,iphi) + 1
          endif
          okhms = okacc(1,ipt,ith,iphi)
         endif
         if(abs(dpp-5.).lt.17 .and.
     >    abs(dthp).lt.0.100 .and. 
     >    abs(dphip).lt.0.030) then
          ith = int((dthp + 0.100) / 0.200 * 70)+1
          iphi = int((dphip + 0.030) / 0.060 * 30.)+1
          ipt = int((dpp + 12.) / 34. * 30.)+1
          if(icase.eq.1) then
           accep(4,ipt,ith,iphi) = accep(4,ipt,ith,iphi) + 1
          endif
          okshms = okacc(2,ipt,ith,iphi)
         endif
c use same th and phi range for dpp<-12 as for -12
         if(dpp.lt.-12 .and.
     >    abs(dthp).lt.0.100 .and. 
     >    abs(dphip).lt.0.030) then
          ith = int((dthp + 0.100) / 0.200 * 70)+1
          iphi = int((dphip + 0.030) / 0.060 * 30.)+1
          ipt = 1
          okshms = okacc(2,ipt,ith,iphi)
         endif

         if(dphie.gt.0.) iq2bin=1
         if(dphie.le.0.) iq2bin=2
c just one bin now
c        iq2bin=1

         the = the0 - dthe
         ep = ep0 * (1. + dpe/100.)
c wrong way
c         p_x(1) =  ep * sin(the) * cos(dphie)
c         p_y(1) = -ep * sin(the) * sin(dphie)
c         p_z(1) =  ep * cos(the) 
         ppi = abs(pp) * (1. + dpp/100.)
         thpi = thp * 3.1415928/180. + dthp
c         p_x(2) = -ppi * sin(thpi) * cos(dphip)
c         p_y(2) = -ppi * sin(thpi) * sin(dphip)
c         p_z(2) =  ppi * cos(thpi) 
c correct way 
	 call physics_angles(the0, phi0e, dthe, dphie, 
     >     ep,p_x(1),p_y(1),p_z(1))
	 call physics_angles(thp_rad, phi0p, dthp, dphip,
     >     ppi,p_x(2),p_y(2),p_z(2))
         nu = e0 - ep
         q2 = 2. * e0 * ep * (1. - p_z(1)/ep)
         x = q2 / 2. / amp / nu
         epv(1)=p_x(1)
         epv(2)=p_y(1)
         epv(3)=p_z(1)
         epv(4)=ep
         p1vp(1)=p_x(2)
         p1vp(2)=p_y(2)
         p1vp(3)=p_z(2)
         p1vp(4)= sqrt(ppi**2 + ampi**2)
         zpi = p1vp(4) / nu
         call getphi(e0,epv,p1vp,phicm)
         call getcos(e0,epv,p1vp,ampi,cthcm,pt)
! check
         Empi = e0 + amp - ep - sqrt(ampi**2 + ppi**2)
         w2=(e0 + amp - ep)**2 - p_x(1)**2 - p_y(1)**2 - (p_z(1)-e0)**2
         w=0.
         if(w2.gt.0.) w = sqrt(w2)

          t = -1.0 * (
     >     (p1vp(4) - nu)**2 -
     >     (p1vp(3) + epv(3) - e0)**2 - 
     >     (p1vp(1) + epv(1))**2 -
     >     (p1vp(2) + epv(2))**2) 
         mmpi2 = 
     >     (Empi)**2 - 
     >     (p_x(1) + p_x(2))**2 -
     >     (p_y(1) + p_y(2))**2 -
     >     (p_z(1) + p_z(2)- e0)**2
         if(jj.lt.0.and.icase.eq.1)
     >     write(6,'(7f8.3)') p_x(1),p_y(1),p_z(1),
     >               p_x(2),p_y(2),p_z(2),mmpi2
         if(mmpi2.gt.0.87.and.mmpi2.lt.0.919.and.icase.eq.1) then
          k = int((mmpi2-0.87)/0.05 * 20)+1
          if(k.gt.20) write(6,'(''error k mmpi2'',i3,f8.3)') k,mmpi2
          mmpi2hs(k) = mmpi2hs(k)+1
         endif
c see if can get same thetacm, phicm, and t as simc
         if(icase.eq.1.and.irun.eq.3425.and.
     >    mmpi2.gt.0.8.and.mmpi2.lt.1.16) then
          read(string(243:266),'(3f8.3)') simcthcm,
     >     simcphicm,simct
          write(124,'(6f7.3)') simcthcm,acos(cthcm),
     >     simcphicm,phicm,simct,t
         endif

! this puts the delta events in case 2. Rho now in case 7
           icasep = icase
           if(icase.eq.1 .and. doingdelta) icasep = 2

c SHMS dipole exit
         pexit=1
         xexit = pdcx -307. * pdcxp
         yexit = pdcy -307. * pdcyp
         crad = 23.81
         voffset = crad - 24.035
         hwid = 11.549/2.
         if(abs(yexit) .lt. hwid) then
           if(abs(xexit) .gt.  (crad + voffset)) pexit=0 
         else
           if ( yexit .ge. hwid) then
            if ( (xexit - voffset)**2 + 
     >           (yexit - hwid)**2 .gt.
     >            crad**2) pexit=0;
           endif
           if ( yexit .le. -1.*hwid) then
            if ( (xexit - voffset)**2 + 
     >           (yexit + hwid)**2 .gt.
     >            crad**2) pexit=0;
           endif
         endif
         if(skipexit) pexit=1
c         if(j.lt.10000.and.pexit.eq.0) write(6,'(i2,6f8.3)') 
c     >    pexit,xexit,yexit,pdcx,pdcxp,pdcy,pdcyp

c HMS dipole exit
         xexit = hdcx - 148. * hdcxp
         yexit = hdcy - 148. * hdcyp
         hexit=1
         if ( (xexit - 2.8)**2 + 
     >        (yexit)**2 .gt. 46.607**2) hexit=0;
          if(skipexit) hexit=1

! HMS Calorimeter cut
         xcal = hdcx + hcal_4ta_zpos * hdcxp
         ycal = hdcy + hcal_4ta_zpos * hdcyp
         hcal = 1
 	 if (ycal.gt.(hcal_left-2.0) .or. 
     >      ycal.lt.(hcal_right+2.0) .or.
     >      xcal.gt.(hcal_bottom-2.0) .or. 
     >      xcal.lt.(hcal_top+2.0)) hcal=0
c add DC cut at focal plane
         xcal = hdcx
         if(abs(xcal).gt.58.) hcal=0
c add hotoscope cut
         xcal = hdcx + 318. * hdcxp
         if(abs(xcal).gt.59.) hcal=0
         if(abs(dpe_init).lt.10.)
     >    hcalh(icasep+1,hcal) = hcalh(icasep+1,hcal)+1

         if(skipcal) hcal=1

! SHMS Calorimeter cut
         xcal = pdcx + scal_4ta_zpos * pdcxp
         ycal = pdcy + scal_4ta_zpos * pdcyp
         scal = 1
 	 if (ycal.gt.(scal_left-2.0) .or. 
     >      ycal.lt.(scal_right+2.0) .or.
     >      xcal.gt.(scal_bottom-2.0) .or. 
     >      xcal.lt.(scal_top+2.0)) scal=0
         scalsv = scal

c add DC cut at focal plane
         xcal = pdcx
         ycal = pdcy
         if(abs(xcal).gt.38.) scal=0
         if(abs(ycal).gt.38.) scal=0

         if(ycal .gt. 10 + abs(xcal)) scal = 0
         if(ycal .lt. -10 - abs(xcal)) scal = 0

c special cuts for kaons
         okkaon = .true.
         if((icase.eq.5.or.icase.eq.6) .and. 
c     >    (ppi.gt.2.7 .or. m2final.lt.0.40)) okkaon=.false.
     >    (m2final.lt.0.40 .or. heff.lt.0.9)) okkaon=.false.
c get scal eff by case
         if(dpe.gt.dphmslo .and. dpe.lt.dphmshi .and.
     >      dpp.gt.dpshmslo .and. dpp.lt.dpshmshi.and.
     >      dthe.lt.dthhmsmax .and.
     >      dthp.lt.dthshmsmax .and.
     >      dphie.lt.dphihmsmax .and.
     >      dphip.lt.dphishmsmax .and.
     >      dthe.gt.dthhmsmin .and.
     >      dthp.gt.dthshmsmin .and.
     >      dphie.gt.dphihmsmin .and.
     >      dphip.gt.dphishmsmin .and.
     >      hexit.eq.1.and. 
     >      hcal.eq.1 .and.
c add anti-muon cut
c    >       m2final.gt.0.11.and.
c add cuts at aerogel xy
     >      abs(xaero).lt.xmaxaero .and. abs(yaero).lt.ymaxaero.and.
     >      (epelas.eq.0 .or. w.lt. 1.1)) then
          scalh(icasep+1,scal) = scalh(icasep+1,scal)+1
          if(jj.lt.1) write(6,'(i6,2i2,5f7.2)') jj,scal,
     >     scalsv,xcal,ycal,dpp
         endif

         if(skipcal) scal=1

! acceptance cuts
         call accminmax(dpe,dpp,
     >     dthhmsmin,dthshmsmin,dphihmsmin,dphishmsmin,
     >     dthhmsmax,dthshmsmax,dphihmsmax,dphishmsmax,
     >     settoanalyze)


c     new way to get acceptance
         call newacc(dpe,dphie,dthe,okhms,
     >               dpp,dphip,dthp,okshms)
         call acccorr(dpe,dphie,dthe,
     >               dpp,dphip,dthp,wcorr)
         if(noacccorr) wcorr = 1.0

c study effect of small 1.011 aerogel
         if(pexit.eq.1 .and. scal. eq. 1 .and. dpp.gt.-25.and.
     >    dpp.lt.50.0 .and. icase.eq.1) then
          ip = int((dpp+25.)/2.5)+1
          aeroeff(ip,1) = aeroeff(ip,1)+1  
          aeroeff(31,1) = aeroeff(31,1)+1  
          if(abs(xaero).lt.45. .and. abs(yaero).lt.30.) then
           aeroeff(ip,2) = aeroeff(ip,2)+1  
           aeroeff(31,2) = aeroeff(31,2)+1  
          endif
         endif


         if(dpe.gt.dphmslo .and. dpe.lt.dphmshi .and.
     >      dthe.lt.dthhmsmax .and.
     >      dthp.lt.dthshmsmax .and.
     >      dphie.lt.dphihmsmax .and.
     >      dphip.lt.dphishmsmax .and.
     >      dthe.gt.dthhmsmin .and.
     >      dthp.gt.dthshmsmin .and.
     >      dphie.gt.dphihmsmin .and.
     >      dphip.gt.dphishmsmin .and.
c added cut on W here. TOok out again.
c     >       w.gt.1.8 .and.
c added weight cut
     >       wcorr.gt.0. .and.
c added ytar cut
     >      abs(pztar).lt.7.0 .and. 
     >       (skipok .or. (
     >       okhms.eq.1 .and. okshms.eq.1)) .and.
     >       pexit.eq.1 .and. hexit.eq.1.and. 
     >       hcal.eq.1 .and. scal. eq. 1 .and.
c add anti-muon cut
c     >       m2final.gt.0.11.and.
c add cuts at aerogel xy
     >      abs(xaero).lt.xmaxaero .and. abs(yaero).lt.ymaxaero.and.
c for kaons, put momentum cut
c     >      (icase.lt.5 .or. ppi.lt.2.8) .and.
     >      dpp.gt.dpshmslo .and. dpp.lt.dpshmshi) then

c cere eff for sp18 (assume 100% later). Note use of efff not eff
          ceff = 1.0
          if(irun.lt.4400) then
           ith = int((dthe + 0.070) / 0.140 *  20.)+1
           iphi = int((dphie + 0.030) / 0.060 * 20.)+1
           ipt = int((dpe + 12.)/26. * 30.)+1
           if(ith.ge.1.and.iphi.ge.1.and.ipt.ge.1.and.
     >     ipt.le.30.and.iphi.le.20.and.ith.le.20) then
            if(cerefff(ipt,iphi,ith,1,1).gt.10) then
             ceff = float(cerefff(ipt,iphi,ith,2,1)) / 
     >        float(cerefff(ipt,iphi,ith,1,1))
            endif
           endif
          endif
c hg eff for p>3.0
          heff = 0.96
          if(ppi.gt.3.25) heff = 0.97
          if(ppi.gt.3.7) heff = 0.98
          if(ppi.gt.3.0 .and. irun.gt.4400) then
           ith = int((dthp + 0.050) / 0.100 * 20)+1
           iphi = int((dphip + 0.030)/ 0.060 * 20.)+1
           ipt = int((dpp +18.) / 53. * 30.)+1
           ith = min(20,max(1,ith))
           iphi = min(20,max(1,iphi))
           ipt = min(30,max(1,ipt))
           ip = 2
           if(irun.gt.6500) ip = 3
           j = 1
           denom = hgefff(ipt,iphi,ith,j,ip)
           if(ppi.gt.3.25 .or. denom.lt.10) j=3
           denom = hgefff(ipt,iphi,ith,j,ip)
           if(ppi.gt.3.7.or.denom.lt.10) j=5
           denom = hgefff(ipt,iphi,ith,j,ip)
           numer = hgefff(ipt,iphi,ith,j+1,ip)
           if(denom.gt.10) heff = numer / denom
          endif
c new way: above is ignored
          call gethgcut(irun,pdcx,pdcxp,pdcy,pdcyp,
     >     xycer,ppi,heff,hgpmin)
! kaon ID requires heff.gt.0.9 to avoid the hole
          if((icase.eq.5 .or. icase.eq.6) .and. heff.lt.0.9) then
           weight = 0.
          endif
c no corr for kaons or protons
          if(icase.gt.4) heff = 1.0
c took out: no HG cut for exclusive
c          if(mmpi2.lt.1.08) heff=1.0
c added wcorr to weight correction
          weight = weight * ceff * heff * wcorr

c counters versus kinematic
          icp = 10*icase
          k = max(1,min(20,int((dpe+12.)/24. * 20.)+1))
          pirks(1+icp,k) = pirks(1+icp,k) + 1
          piaccks(1+icp,k) = piaccks(1+icp,k) + weight

          k = max(1,min(20,int((dthe*1000.+70.)/140.*20.)+1))
          pirks(2+icp,k) = pirks(2+icp,k) + 1
          piaccks(2+icp,k) = piaccks(2+icp,k) + weight

          k = max(1,min(20,int((dphie*1000.+ 30.)/ 60.*20.)+1))
          pirks(3+icp,k) = pirks(3+icp,k) + 1
          piaccks(3+icp,k) = piaccks(3+icp,k) + weight

          k = max(1,min(20,int((dpp+18.)/53. * 20.)+1))
          pirks(4+icp,k) = pirks(4+icp,k) + 1
          piaccks(4+icp,k) = piaccks(4+icp,k) + weight

          k = max(1,min(20,int((dthp*1000.+50.)/100.*20.)+1))
          pirks(5+icp,k) = pirks(5+icp,k) + 1
          piaccks(5+icp,k) = piaccks(5+icp,k) + weight

          k = max(1,min(20,int((dphip*1000.+ 30.)/ 60.*20.)+1))
          pirks(6+icp,k) = pirks(6+icp,k) + 1
          piaccks(6+icp,k) = piaccks(6+icp,k) + weight

c final state counter
          if(icase.le.6) then
           ipart = 0
           if(abs(m2final-m_mu).lt..01) ipart=1
           if(abs(m2final-m_pi).lt..01) ipart=2
           if(abs(m2final-m_k).lt..11) ipart=3
           idist=min(30,max(1,int((decdist/1.0)+1)))
           if(ipart.ne.0) fstate(icase+1,idist,ipart) = 
     >      fstate(icase+1,idist,ipart) +weight
           fstate(icase+1,idist,4) = 
     >      fstate(icase+1,idist,4) + weight
           if(abs(pztar).lt.7.) fstate(icase+1,idist,5) = 
     >      fstate(icase+1,idist,5) + weight
c for kaons, make spectra in momentum bins
           if(abs(ppi).gt.1.5 .and. abs(ppi).lt.6.5) then
            jp = int((abs(ppi)-1.5)/0.5)+1
            fstatek(jp,idist) = fstatek(jp,idist) + 1.
           endif
           if(jj.lt.0 .and.icase.eq.5) then
            write(6,'("f 5",3i3,f6.2,2e12.2)') ipart,
     >       idist,icase,m2final,
     >       fstate(icase+1,idist,ipart),
     >       fstate(icase+1,idist,4)
           endif
          endif 
c ytarg versus dpp for decayed or not  particles
c summed over all runs ytarg verus dpp
          pgtry = pztar
          if(pgtry.gt.-2000. .and. pgtry.lt. 2000.
     >     .and. dpp.gt.-16. .and. dpp.lt.28.) then
           k = int((pgtry+10.) / 20. * 14.)+1
           k = min(14,max(1,k))
           kk = int((dpp + 16.)) + 1
           if(icase.eq.4) then
            if(decdist.lt.20.) then
             ythist(kk,k,3)=ythist(kk,k,3)+1
             ythist(kk,15,3)=ythist(kk,15,3)+1
            else
             ythist(kk,k,2)=ythist(kk,k,2)+1
             ythist(kk,15,2)=ythist(kk,15,2)+1
            endif
           endif
           if(icase.eq.5) then
            if(decdist.lt.20.) then
             ythist(kk,k,5)=ythist(kk,k,5)+1
             ythist(kk,15,5)=ythist(kk,15,5)+1
            else
             ythist(kk,k,4)=ythist(kk,k,4)+1
             ythist(kk,15,4)=ythist(kk,15,4)+1
            endif
           endif
          endif
c moved okkaon down to here
          if(okkaon) then
          sum1 = sum1 + weight
          sum2 = sum2 + 1.
          im = max(1,min(20,int(mmpi2/0.5)+1))
          sum1m(im) = sum1m(im) + weight
          sum2m(im) = sum2m(im) + 1
          im = max(1,min(20,int(zpi/0.05)+1))
          sum1z(im) = sum1z(im) + weight
          sum2z(im) = sum2z(im) + 1
          pt2 = pt**2
          if(zpi.lt.1.2 .and. sqrt(pt2) .lt. 1.00) then
c put deltapp counts in case 2 now. Rho is ignored
c prad is is 17,18, pnorad in 19,20
           i3 = 1 + 2*icasep
           i4 = 2 + 2*icasep
c versus dp 
           if(mmpi2.gt.2.5.and. icase.eq.1) then
            idp = int((dpe + 12.) / 24.* 100.)+1
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdpmc(1,idp,2) = 
     >         cntsdpmc(1,idp,2) + weight 
            endif
            idp = int((dpp + 25.) / 65.* 100.)+1
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdpmc(2,idp,2) = 
     >       cntsdpmc(2,idp,2) + weight 
            endif
            idp = int((dpe_init + 12.) / 24.* 100.)+1
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdpmco(1,idp,2) = 
     >         cntsdpmco(1,idp,2) + weight 
            endif
            idp = int((dpp_init + 25.) / 65.* 100.)+1
            if(idp.gt.0 .and. idp.lt.101) then
             cntsdpmco(2,idp,2) = 
     >       cntsdpmco(2,idp,2) + weight 
            endif
           endif
           iz = min(20,int(zpi*20.)+1)
c special code: use iz=1 for exclusive peak, delta
           izxtra=0
           if(mmpi2.gt.0.68 .and. mmpi2.lt.1.08) izxtra=1
           if(mmpi2.gt.1.25 .and. mmpi2.lt.1.65) izxtra=2
c correction Delta++ for pi+ on p, pi- on d
c           if(icase.eq.1 .and. doingdelta) then
c            if(it.eq.1) weight = weight * 2.
c            if(it.eq.5) weight = weight * 1.5
c           endif
           izm = 0
           mmpi = sqrt(mmpi2)
           if(mmpi.gt.1.05 .and. mmpi.lt.1.6999) 
     >       izm = int((mmpi-1.05)/0.65*20)+1 
           iqm = 1
           izz = min(50,int(zpi*50.)+1)
           mmpi = sqrt(max(0.,mmpi2))
           im = max(1,min(50,int((mmpi-0.8)/0.02)+1))
           iphi = max(1,min(15,int(phicm/6.29*15 ) + 1)) 
c           ipt = int(pt2 / 0.5 * 12) + 1
           ipt = int(sqrt(pt2) / 1.00 * 16.) + 1
           iptm = (ipt + 1) / 2
           iphim = (iphi + 1) / 2
c no mm cut for p
           if((mmpi2.gt.mmpi2cut .or.icase.ge.8)
     >       .and.w.gt.wcut) then
            cntsmc(iq2bin,ipt,iphi,iz,i3) = 
     >        cntsmc(iq2bin,ipt,iphi,iz,i3) + 1
            cntsmc(iq2bin,ipt,iphi,iz,i4) = 
     >       cntsmc(iq2bin,ipt,iphi,iz,i4) + weight
             avkin(iq2bin,ipt,iphi,iz,1) = 
     >        avkin(iq2bin,ipt,iphi,iz,1) + t 
             avkin(iq2bin,ipt,iphi,iz,2) = 
     >        avkin(iq2bin,ipt,iphi,iz,2) + acos(cthcm)
             avkin(iq2bin,ipt,iphi,iz,3) = 
     >        avkin(iq2bin,ipt,iphi,iz,3) + phicm
c changed from hztar to z
             avkin(iq2bin,ipt,iphi,iz,4) = 
     >        avkin(iq2bin,ipt,iphi,iz,4) + zpi
         if(w.lt.1.2) write(16,'(''w err 3'',4i3,10f7.2)') 
     >     icasep,ipt,iphi,iz,ep,the,
     >     q2,x,w,sqrt(amp**2 + q2*(1./x-1))
             avkin(iq2bin,ipt,iphi,iz,5 ) = 
     >        avkin(iq2bin,ipt,iphi,iz,5) + w
             avkin(iq2bin,ipt,iphi,iz,6) = 
     >        avkin(iq2bin,ipt,iphi,iz,6) + q2
             avkin(iq2bin,ipt,iphi,iz,7) = 
     >        avkin(iq2bin,ipt,iphi,iz,7) + mmpi2
             avkin(iq2bin,ipt,iphi,iz,8) = 
     >        avkin(iq2bin,ipt,iphi,iz,8) + pt2 
             avkin(iq2bin,ipt,iphi,iz,9) = 
     >        avkin(iq2bin,ipt,iphi,iz,9) + 1.
            endif ! mmpi2 > 1.08
            if(izm.ne.0) then
             cntsmcm(iqm,iptm,iphim,izm,i3) = 
     >        cntsmcm(iqm,iptm,iphim,izm,i3) + 1
             cntsmcm(iqm,iptm,iphim,izm,i4) = 
     >        cntsmcm(iqm,iptm,iphim,izm,i4) + weight
             avkinm(iqm,iptm,iphim,izm,1) = 
     >        avkinm(iqm,iptm,iphim,izm,1) + t 
             avkinm(iqm,iptm,iphim,izm,2) = 
     >        avkinm(iqm,iptm,iphim,izm,2) + acos(cthcm)
             avkinm(iqm,iptm,iphim,izm,3) = 
     >        avkinm(iqm,iptm,iphim,izm,3) + phicm
             avkinm(iqm,iptm,iphim,izm,4) = 
     >        avkinm(iqm,iptm,iphim,izm,4) + zpi
         if(w.lt.1.2) write(16,'(''w err 6'',10f7.2)') e0,ep,ep0,the,
     >     q2,x,w,sqrt(amp**2 + q2*(1./x-1))
             avkinm(iqm,iptm,iphim,izm,5 ) = 
     >        avkinm(iqm,iptm,iphim,izm,5) + w
             avkinm(iqm,iptm,iphim,izm,6) = 
     >        avkinm(iqm,iptm,iphim,izm,6) + q2
             avkinm(iqm,iptm,iphim,izm,7) = 
     >        avkinm(iqm,iptm,iphim,izm,7) + mmpi2
             avkinm(iqm,iptm,iphim,izm,8) = 
     >        avkinm(iqm,iptm,iphim,izm,8) + pt2 
             avkinm(iqm,iptm,iphim,izm,9) = 
     >        avkinm(iqm,iptm,iphim,izm,9) + 1.
           endif
           if(izxtra.gt.0) then
            cntsmc(iq2bin,ipt,iphi,izxtra,i3) = 
     >       cntsmc(iq2bin,ipt,iphi,izxtra,i3) + 1
            cntsmc(iq2bin,ipt,iphi,izxtra,i4) = 
     >       cntsmc(iq2bin,ipt,iphi,izxtra,i4) + weight
           endif
           if(izxtra.gt.0.and.icase.eq.1) then
             avkin(iq2bin,ipt,iphi,izxtra,1) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,1) + t 
             avkin(iq2bin,ipt,iphi,izxtra,2) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,2) + acos(cthcm)
             avkin(iq2bin,ipt,iphi,izxtra,3) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,3) + phicm
c changed from hztar to z
             avkin(iq2bin,ipt,iphi,izxtra,4) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,4) + zpi
c         if(w.lt.1.2) write(16,'(''w err 7'',4i3,10f7.2)') 
c     >     icasep,ipt,iphi,izxtra,ep,the,
c     >     q2,x,w,sqrt(amp**2 + q2*(1./x-1))
             avkin(iq2bin,ipt,iphi,izxtra,5 ) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,5) + w
             avkin(iq2bin,ipt,iphi,izxtra,6) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,6) + q2
             avkin(iq2bin,ipt,iphi,izxtra,7) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,7) + mmpi2
             avkin(iq2bin,ipt,iphi,izxtra,8) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,8) + pt2 
             avkin(iq2bin,ipt,iphi,izxtra,9) = 
     >        avkin(iq2bin,ipt,iphi,izxtra,9) + 1.
           endif
           cntsmcmmpi(im,i3) = cntsmcmmpi(im,i3) + 1
           cntsmcmmpi(im,i4) = cntsmcmmpi(im,i4) + weight
           cntsmcz(izz,i3) = cntsmcz(izz,i3) + 1
           cntsmcz(izz,i4) = cntsmcz(izz,i4) + weight
c get sig for pi_excl, use icasep to divide delta and excl
           if(izxtra.gt.0.and.icase.eq.1) then
c            write(6,'(''sigcm='',e12.4)') sigcm
            imc = 24 + icasep
             cntsmc(iq2bin,ipt,iphi,izxtra,imc) = 
     >         cntsmc(iq2bin,ipt,iphi,izxtra,imc) + sigcm
            cntsmcmmpi(im,imc) = cntsmcmmpi(im,imc)+sigcm
            cntsmcz(izz,imc) = cntsmcz(izz,imc) + sigcm
           endif
! add sigcm, sigcc
           imc = 0
c fixed bug, 19,20, 21, 22  now used by protons!
c           if(icase.eq.4) imc = 19 ! pi no rad
           if(icase.eq.4) imc = 21 ! pi no rad
c no longer stored  
c            if(icase.eq.5) imc = 21 ! k rad
           if(icase.eq.6) imc = 23 ! k norad
           if(icase.eq.8) imc = 25 ! p rad
           if(icase.eq.9) imc = 27 ! p norad
c pi_rad stored in 29,30
           if(imc.gt.0) then
            if((mmpi2.gt.mmpi2cut.or.icase.ge.8).and.w.gt.wcut) then
             cntsmc(iq2bin,ipt,iphi,iz,imc) = 
     >        cntsmc(iq2bin,ipt,iphi,iz,imc) + sigcm
            endif
            if(izm.gt.0) cntsmcm(iqm,iptm,iphim,izm,imc) = 
     >        cntsmcm(iqm,iptm,iphim,izm,imc) + sigcm
            cntsmcmmpi(im,imc) = cntsmcmmpi(im,imc)+sigcm
            cntsmcz(izz,imc) = cntsmcz(izz,imc) + sigcm
            imc = imc + 1
            if((mmpi2.gt.mmpi2cut.or.icase.ge.8).and.w.gt.wcut) then
             cntsmc(iq2bin,ipt,iphi,iz,imc) = 
     >         cntsmc(iq2bin,ipt,iphi,iz,imc) + sigcc
            endif
            if(izm.gt.0) cntsmcm(iqm,iptm,iphim,izm,imc) = 
     >        cntsmcm(iqm,iptm,iphim,izm,imc) + sigcc
            cntsmcmmpi(im,imc) = cntsmcmmpi(im,imc)+sigcc
            cntsmcz(izz,imc) = cntsmcz(izz,imc) + sigcc
c         write(6,'(''cntsmcz izz'',i4,4e12.4)') izz, 
c     >     cntsmcz(izz,9),cntsmcz(izz,10),
c     >     cntsmcz(izz,15),cntsmcz(izz,16)
           endif

c  with mmpi2 cut
c           if(mmpi2.gt.2.0) then
c            cntsmc(iq2bin,ipt,iphi,iz,7) = 
c     >       cntsmc(iq2bin,ipt,iphi,iz,7) + 1
c            cntsmc(iq2bin,ipt,iphi,iz,8) = 
c     >       cntsmc(iq2bin,ipt,iphi,iz,8) + weight
c           endif
          endif
c exclusive pion counts
          if(icase.eq.1 .and. mmpi2.gt.0.76 .and.
     >     mmpi2.lt.1.0 .and.
     >     sqrt(pt2).lt.0.3) then
           iphi = max(1,min(15,int(phicm/6.29*7 ) + 1)) 
           ipt = int(sqrt(pt2) / 0.3 * 4.) + 1
           cntsemc(1,ipt,iphi,1) = 
     >       cntsemc(1,ipt,iphi,1) + 1 
           cntsemc(1,ipt,iphi,2) = 
     >       cntsemc(1,ipt,iphi,2) + weight
           cntsemc(1,ipt,iphi,3) = 
     >       cntsemc(1,ipt,iphi,3) + sigcm
           im = max(1,min(8,int((mmpi2-0.76)/0.24*8.)+1))
           cntsemch(1,ipt,iphi,im) = 
     >        cntsemch(1,ipt,iphi,im) + 1
          endif
c exclusive pion  counts versus W
          if(icase.eq.1 .and. mmpi2.gt.0.76 .and.mmpi2.lt.1.0 .and.
     >      iselec .eq. 0 .and. 
     >     w.gt.1.6 .and. w.lt.3.2) then
           iw = int((w-1.6)/1.6 * 20.)+1
           cntsewmc(iw,1) = cntsewmc(iw,1) + 1 
           cntsewmc(iw,2) = cntsewmc(iw,2) + weight
           cntsewmc(iw,3) = cntsewmc(iw,3) + sigcm
          endif
         endif ! kaons
         endif ! kin limits
         endif ! hasstars
        enddo ! loop over events
        endif ! case.ne.2
 15     sratex(i,icase) = sum1 * normfacx / max(1.,sum3)
        sratexer(i,icase) = sratex(i,icase) / sqrt(max(1.,sum2))
        icp = 10*icase
        do k=icp+1, icp+6
         do kk=1,20
          ratesk(k,kk) = piaccks(k,kk)  * normfacx / sum3
         enddo
        enddo
        do im=1,20
         sratemx(im,icase) = sum1m(im) * normfacx / sum3
         sratemxer(im,icase) = sratemx(im,icase) / 
     >     sqrt(max(1.,sum2m(im)))
         sratezx(im,icase) = sum1z(im) * normfacx / sum3
         sratezxer(im,icase) = sratezx(im,icase) / 
     >     sqrt(max(1.,sum2z(im)))
        enddo
        write(6,'(''normfac_x='',i2,5e10.3)') icase,
     >    normfacx,sratex(i,icase),sum1,sum2,sum3
        i4 = 2 + 2*icase
        avnfac(icase+1) = avnfac(icase+1) + normfacx * chrg
        sum3tot(icase+1) = sum3tot(icase+1) + sum3
 16     continue
        enddo ! loop over icase

! write out diagnostic histograms
        write(43,'(/i4,20i3)') irun,(int(100.*ctrfrun(k,1)/
     >   float(ctrfrun(21,1))),k=1,20)
c        write(43,'(i4,20i3)') irun,(int(100.*ctrfrun(k,3)/
c     >   float(ctrfrun(21,3))),k=1,20)
        write(43,'(i4,20i3)') irun,(int(100.*ctrfrun(k,4)/
     >   float(ctrfrun(21,4))),k=1,20)
c        write(43,'( 20i4)') (ctrfrun(k,2)/10,k=2,18)
c this is to find position of cointime peak
        do ii=1,2
        write(44,'(i4)') irun
        do kk=1,10
         sum1=0.
         sum2=0.
         do k=1,20
          sum1 = sum1 + k * ctrfrn(kk,k,ii)
          sum2 = sum2 +     ctrfrn(kk,k,ii)
         enddo
         sum1 = sum1 / sum2
         sum3 = 0.
         do k=1,20
          sum3 = sum3 + (k-sum1)**2 * ctrfrn(kk,k,ii)
         enddo
c         write(6,'(2f8.3)') sum1,sqrt(sum3/sum2)
         sigsv(kk) = sqrt(sum3/sum2)
        enddo
        sum1=1000.
        do kk=1,10
         if(sigsv(kk).lt.sum1) then
          sum1 = sigsv(kk)
          sum2 = 4.002 + 0.001*kk
         endif
        enddo
        write(44,'(i4,f6.3,11f6.2)') irun,sum2,pp,
     >    (sigsv(kk),kk=1,10)
        enddo

        write(45,'(/i4,4f7.2)') irun,ep0,the0*57.,pp,thp
        do k=1,13
         write(45,'(16i4)') (yth(k,kk),kk=1,16)
        enddo

        write(81,'(i4,14f5.0)') irun,
     >   (1000.*float(dpphistrun(k))/
     >    float(dpphistrun(15)),k=1,14)
        write(82,'(i4,14f5.0)') irun,
     >   (1000.*float(ythistrun(k))/
     >    float(ythistrun(15)),k=1,14)

        write(46,'(i5)') irun
c hbeta is not read in
c        write(46,'(20i4)') (betah(1,k)/10,k=1,20)
        write(46,'(i5,19i4)') betah(2,20),
     >    (int(100.*betah(2,k)/betah(2,20)),k=1,19)

        write(47,'(/i5,i2,f7.1,f6.2)') 
     >    irun,it,irate_p/1000.,pp
        write(47,'(i5,15i4)') int(aeroh(16)),
     >    (int(1000.*aeroh(k)/aeroh(16)),k=1,15)
        write(47,'(i5,15i4)') int(aerohp(16)),
     >    (int(1000.*aerohp(k)/aerohp(16)),k=1,15)
c aerogel x y hists
      do k=1,20
       write(47,'(3i8)') k,xaeroh(k),yaeroh(k)
      enddo
c        do kk=1,4
c         write(47,'(20i4)') (int(1000.*xyaeroh(kk,k)/xyaeroh(kk,21)),
c     >    k=1,20)
c        enddo
        sum1=0.
        sum2=0.
        do k= 1,8
         sum1 = sum1 + shh(k,1)
         sum2 = sum2 + shh(k,4)
        enddo
        write(48,'(i5,f7.2,2f8.3)') irun,pp,sum1/shh(16,1),
     >   sum2/shh(16,4)
        write(48,'(i6,15i4)') int(shh(16,1)),
     >     (int(1000.*shh(k,1)/shh(16,1)),k=1,15)
        write(48,'(i6,15i4)') int(shh(16,2)),
     >     (int(1000.*shh(k,2)/shh(16,2)),k=1,15)
        write(48,'(i6,15i4)') int(shh(16,3)),
     >     (int(1000.*shh(k,3)/shh(16,3)),k=1,15)
        write(48,'(i6,15i4)') int(shh(16,4)),
     >     (int(1000.*shh(k,4)/shh(16,4)),k=1,15)
        write(52,'(i5)') irun
        write(52,'(20i4)') (int(1000.*sheh(k,1)/sheh(16,1)),k=1,15)
        write(52,'(20i4)') (int(1000.*sheh(k,2)/sheh(16,2)),k=1,15)
        write(53,'(2i5)') irun,sh2h(16)
        write(53,'(20i4)') (int(1000.*sh2h(k)/sh2h(16)),k=1,15)
        write(59,'(/i5,f6.2)') irun,pp
        write(59,'(20i4)') (int(1000.*prh(k,1)/prh(16,1)),k=1,15)
        write(57,'(/i5, f6.2, f7.3, f7.0)') 
     >    irun, pp, muons(1)/muons(2), muons(2)
        write(57,'(20i4)') (int(1000.*shmuonh(k)/shmuonh(16)),k=1,15)

c note: with shp cut still divided by 16,1
        write(59,'(20i4)') (int(1000.*prh(k,2)/prh(16,1)),k=1,15)
        write(54,'(i5)') irun
        write(54,'(16i4)') ngh(16),
     >   (int(1000.*ngh(k)/ngh(16)),k=1,15)
c hg spectra
        write(93,'(i5,f6.1)') irun,current
        if(hghrun(17).gt.1) then
         write(93,'(i6,16i4)') int(hghrun(17)),
     >   (int(1000.*hghrun(k)/hghrun(17)),k=1,16)
        endif
        if(hghrunp(17).gt.1) then
         write(93,'(i6,16i4)') int(hghrunp(17)),
     >   (int(1000.*hghrunp(k)/hghrunp(17)),k=1,16)
        endif

        write(51,'(/i5)') irun
c        do k=1,12
        do k=1,12
         write(51,'(i6,15i4)') int(cereh(k,16)),
     >   (int(1000.*cereh(k,kk)/
     >    cereh(k,16)),kk=1,15)
        enddo
c        do k=1,12
c         write(51,'(i6,15i4)') cerepih(k,16),
c     >   (int(1000.*float(cerepih(k,kk))/
c     >    float(cerepih(k,16))),kk=1,15)
c        enddo

        sum3=0.
        do k=1,39
         sum1 = (ctpih(k) * k +
     >      ctpih(k+1) * (k+1) ) 
         sum2 = (ctpih(k)  +
     >      ctpih(k+1) ) 
         if(sum2.gt.sum3) then
          sum3 = sum2
          pipeak = sum1 / sum2
         endif
        enddo
        write(6,'(i4,7i6)') irun,(ctpih(kk),kk=17,23)

c Electronic dead time not measured by EDTM
c casued by having elclean in ref. time signal 150 nsec
c after the 3/4 signal
c correction is bigger for sp18 due to 100 nsec long hodo
c pulses compared to 35 (?) after that. 
c This is based on fitting the current scans.
        corr2 = 1.0
        if(irun.lt.4400) then
c changed from 0.280 to 0.24 after adding target boiling
c try 0.18 as gives best chi2 total
c Aug 2022 changed to 0.135 to get best agreement between
c spring 2018 and fall 2018. Then back to 0.19 Sept. 2022
         corr2 = 1.0 - 0.19 * (float(irate_p)/1.e6 + elreal/1000.)
        endif
        if(irun.gt.4400) then
c changed from 0.50 to 0.15, then back up to 0.050
c it is possible that this is mostly from HG, so just P>3 GeV
c changed from 050 to 040 (best chi2)
         corr2 = 1.0 - 0.040 * (float(irate_p)/1.e6 + elreal/1000.)
        endif
! include target boiling correction
        if(it.ne.3) then
         corr2 = corr2 * (1. - 0.023 * current/100.)
        endif

! timecorr currently using nevent32
! Get rate averaged over run
        timecorr = 1. 
        ratec(i) = (pir - piacc/4.) / chrg / dt / 
     >   tefe / tefp / corr2 / corr3 / corr
        ratecer(i) = sqrt(pir + piacc/16.)/chrg/dt/
     >    tefe / tefp / corr2 / corr3 / corr
        ratec4(i) = (pir4 - piacc4/4.) / chrg / dt / 
     >   tefe / tefp / corr2 / corr3 / corr
        ratecer4(i) = sqrt(pir4 + piacc4/16.)/chrg/dt/
     >    tefe / tefp / corr2 / corr3 / corr
        ratec5(i) = (pir5 - piacc5/4.) / chrg / dt / 
     >   tefe / tefp / corr2 / corr3 / corr
        ratecer5(i) = sqrt(pir5 + piacc5/16.)/chrg/dt/
     >    tefe / tefp / corr2 / corr3 / corr
        chrgtot = chrgtot + chrg
        dtav = dtav + dt * chrg
        tefeav = tefeav + tefe * chrg
        tefpav = tefpav + tefp * chrg
        corrav = corrav + corr * chrg
        corr2av = corr2av + corr2 * chrg
        corr3av = corr3av + corr3 * chrg

        do im=1,20
         ratem(im) = (pirm(im) - piaccm(im)/4.) / chrg / dt / 
     >    tefe / tefp / corr3 / corr / corr2
         ratemer(im ) = sqrt(pirm(im) + piaccm(im)/16.)/chrg/dt/
     >    tefe / tefp / corr3 / corr / corr2
         ratez(im) = (pirz(im) - piaccz(im)/4.) / chrg / dt / 
     >    tefe / tefp / corr3 / corr / corr2
         ratezer(im ) = sqrt(pirz(im) + piaccz(im)/16.)/chrg/dt/
     >    tefe / tefp / corr3 / corr / corr2
        enddo
        fact = 1. / chrg / dt / 
     >   tefe / tefp / corr3 / corr / corr2
        write(191,'(''irun='',i5)') irun
        do kk=1,20
         write(191,'(f7.3,6f7.0,f8.3)') 0.7 + 0.3/20.*(kk-0.5),
     >    (pirmz(kk,j),j=1,2),(piaccmz(kk,j),j=1,2),
     >    (pirmz(kk,1) - piaccmz(kk,1)/4.),
     >    (pirmz(kk,2) - piaccmz(kk,2)/4.),
     >    (pirmz(kk,1) - piaccmz(kk,1)/4.) /
     >    (pirmz(kk,2) - piaccmz(kk,2)/4.) 
        enddo
        write(91,'(''irun='',i5)') irun
        do k=1,6
         do kk=1,20
          rateck(k,kk) = (pirk(k,kk) - piacck(k,kk)/4.) * fact
          rateak(k,kk) =               piacck(k,kk)/4.  * fact
          ratecker(k,kk) = fact * sqrt(pirk(k,kk) + 
     >     piacck(k,kk)/16.)
         enddo
         write(91,'(21f5.0)') ratec(i),(rateck(k,kk),kk=1,20)
         write(91,'(20i4)') (int(1000.*rateck(k,kk)/ratec(i)),kk=1,20)
         write(91,'(20i4)') (int(1000.*rateak(k,kk)/ratec(i)),kk=1,20)
         write(91,'(20i4)') (int(1000.*ratesk(k,kk)/srate(i)),kk=1,20)
         write(91,'(/)')
        enddo
c just do every tenth run 
        if((irun/20)*20.eq.irun) then
        if(f222.eq.1) write(222,'(''new frame'')')
        f222 = 1
        write(222,1222) irun
 1222   format('title 4. 9.6 size 2.0',1h','run ',i4,1h')
        do k=1,6
         iy = (K+2)/3
         ix = k  - 3 * (iy-1)
         write(222,1234) ix,iy
 1234    format('set window x ',i1,' of 3 y ',i1,' of 2'/
     >    'set order x y dy ; set bar size 0.'/
     >    'set color white'/
     >    'set sym 9O size 1.0 ')
         if(iy.eq.1) write(222,1236)
 1236    format('title top',1h','HMS',1h')
         if(iy.eq.2) write(222,1237)
 1237    format('title top',1h','SHMS',1h')
         if(k.eq.1.or.k.eq.4) write(222,1231)
 1231    format('title bottom',1h','dp/p (percent)',1h')
         if(k.eq.2.or.k.eq.5) write(222,1232)
 1232    format('title bottom',1h','xptar (mr)',1h')
         if(k.eq.3.or.k.eq.6) write(222,1233)
 1233    format('title bottom',1h','yptar (mr)',1h')
         do kk=1,20
          if(k.eq.1) sum1 = -12.+24./20.*(kk-0.5)
          if(k.eq.2) sum1 = -70.+140./20.*(kk-0.5)
          if(k.eq.3) sum1 = -30.+60./20.*(kk-0.5)
          if(k.eq.4) sum1 = -18.+53./20.*(kk-0.5)
          if(k.eq.5) sum1 = -50.+100./20.*(kk-0.5)
          if(k.eq.6) sum1 = -30.+60./20.*(kk-0.5)
          write(222,'(f10.4,7e12.4)') sum1,
     >     rateck(k,kk),
     >     ratecker(k,kk)
         enddo
         write(222,'(''plot'')')
         do icp = 1,3
         if(icp.eq.1) write(222,'(''set color green'')')
         if(icp.eq.2) write(222,'(''set color blue'')')
         if(icp.eq.3) write(222,'(''set color white'')')
         do kk=1,20
          if(k.eq.1) sum1 = -12.+24./20.*(kk-0.5)
          if(k.eq.2) sum1 = -70.+140./20.*(kk-0.5)
          if(k.eq.3) sum1 = -30.+60./20.*(kk-0.5)
          if(k.eq.4) sum1 = -18.+53./20.*(kk-0.5)
          if(k.eq.5) sum1 = -50.+100./20.*(kk-0.5)
          if(k.eq.6) sum1 = -30.+60./20.*(kk-0.5)
c now not normalized at center of distribution
          IF(ICP.EQ.1) WRIte(222,'(f10.4,7e12.4)') sum1,
     >     ratesk(k,kk) 
          IF(ICP.EQ.2) WRIte(222,'(f10.4,7e12.4)') sum1,
     >     ratesk(k,kk) + ratesk(k+10,kk)
          IF(ICP.EQ.3) WRIte(222,'(f10.4,7e12.4)') sum1,
     >     ratesk(k,kk) + ratesk(k+10,kk) + ratesk(k+30,kk)
c     >      * rateck(k,10)/ratesk(k,10)
         enddo
         if(icp.eq.1) write(222,'(''set pattern 0.01 0.01 0.01 0.01'')')
         if(icp.eq.2) write(222,'(''set pattern 0.04 0.04 0.04 0.04'')')
         if(icp.lt.3) write(222,'(''hist pattern'')')
         if(icp.eq.3) write(222,'(''hist'')')
        enddo
        enddo
        endif ! check on if to plot this run
! start new set of runs?
        if(it.ne.itprev .or. 
     >   abs(thp - thpprev).gt.0.1 .or.
     >   abs(pp - ppprev).gt.0.1 .or.
     >   abs(ep0 - ep0prev).gt.0.1.or.
     >   abs(the0*57.3 -the0prev).gt.0.1) then
         if(nrtc.gt.0) then
          avrtc = avrtc / avrtcer
          avrtcer = 1./sqrt(avrtcer)
          chi = 0.
          df = 0.
          do k=1,nrtc
           chi = chi + (rtc(k) - avrtc)**2 / rtcer(k)**2
           df = df + 1.
          enddo
          write(18,'(6x,38x,2f6.1,f6.1,f4.0)')
     >      avrtc,avrtcer,chi/df,df
         endif
         avrtc = 0.
         avrtcer = 0.
         nrtc = 0
         itprev = it
         ppprev = pp
         thpprev = thp
         ep0prev = ep0
         the0prev = the0*57.3
         write(18,'()')
         write(382,'()')
        endif ! check if changing kinematics
         nrtc = nrtc + 1
c took out * corr2 not sure why it was there!
         rtc(nrtc) = ratec(i) 
         rtcer(nrtc) = ratecer(i)
         avrtc = avrtc + rtc(nrtc)/rtcer(nrtc)**2
         avrtcer = avrtcer + 1./rtcer(nrtc)**2
        write(18,
     >  '(i4,i2,f4.1,f4.0,f4.1,f4.0,2f6.0,2f5.1,6f7.1)') irun,it,
     >    ep0,the0*57.,pp,thp,pir,piacc/4.,chrg,
     >    current,ratec(i),ratecer(i),ratec4(i),ratecer4(i)
     >    ,ratec5(i),ratecer5(i)
        write(382,
     >  '(i4,i2,f4.1,f4.0,f4.1,f4.0,2f5.1,3f7.2,2f6.0)') irun,it,
     >    ep0,the0*57.,pp,thp,chrg,
     >       current,ratec5(i),ratecer5(i),
     >       ratec5(i)/ratec(i),pir5,piacc5/4.   
        write(7,'(i5,i2,f6.2,40i4)') irun,it,pipeak,
     >    (ctpih(k)/10,k=1,40)
c     >    (ctpirh(k),k=1,20)
        write(77,'(/i5)') irun
        do kk=1,10
         write(77,'(20i4)') (ctpihw(k,kk)/30,k=12,31)
        enddo
        do k=1,30
           write(36,'(i3,i7)') k,ctpih(k)
        enddo
        write(36,'(''hist'')')
        write(20,'(i5,f8.2)') irun,pipeak-10.5
        if(abs(pipeak-10.5).gt.0.25) writE(20,'(''WARNING'')')
        sum3=0.
        sum1 = 0.
        sum2 = 0.
        do k=6,35
         sum1 = sum1 + ctpihf(k) * float(k) 
         sum2 = sum2 + ctpihf(k) 
        enddo
        pipeak = sum1 / sum2
        sum3 = 0.
        do k=1,40
         sum3 = sum3 + ctpihf(k)
        enddo
        write(17,'(/''p ='',f5.2,i5,i3,f6.2)') pp,irun,it,pipeak
        write(17,'(i5,38i3)') int(sum3),
     >    (int(400. * (ctpihf(2*k) +ctpihf(2*k-1))/sum3),k=1,20)
        write(178,'(i5,f6.2)') irun,(pipeak-20.5)*0.2
        sum3=0.
        do k=6,15
         sum3 = sum3 + ctpihf(k)
        enddo
c        write(17,'(i5, 38i3)') int(sum3),
c     >    (int(400*ctpihf(k)/sum3),k=3,40)
        sum3 = 0.
        do k=6,15
         sum3 = sum3 + ctkhf(k)
        enddo
c        write(17,'(i5,38i3)') int(sum3),
c     >    (int(400*ctkhf(k)/sum3),k=3,40)
        sum3 = 0.
        do k=6,15
         sum3 = sum3 + ctphf(k)
        enddo
c        write(17,'(i5,38i3)') int(sum3), 
c     >    (int(400*ctphf(k)/sum3),k=3,40)


        write(8,'(i5,20i4)') irun,(ctkh(k),k=1,20)
        write(188,'(i5,20i4)') irun,(ctph(k),k=1,20)
        write(6,'(i5,20i4)') irun,(ctph(k),k=1,20)
        write(33,'(i5,20i4)') irun,(ctkhf(k),k=1,20)
        write(19,'(i5,20i4)') irun,(cteh(k),k=1,20)
        if(it.eq.1) then
         write(31,'(''irun,it='',i5,i2)') irun,it
         do kk=1,12
          write(31,'(i2,20i4)') kk,(mmph(k,kk),k=1,20)
         enddo
        endif

c        write(32,'(i5,20i4)') irun,(meeh(k,1),k=301,320)

c old way
        rate1 = icoin / chrg / dt
        rate(i)=rate1
        fcoin = icoin
        rateer(i)=sqrt(fcoin)/chrg/dt
c new way
        rate(i) = ratec(i)
        rateer(i) = ratecer(i)
c this is if doing individual runs
        irunlast = irun
c        write(16,'(i4,f5.1,f6.1,f5.1,2f6.2,3f5.2,
c     >   6f5.2,f6.0,2f6.0,2f7.3,2f8.0)') 
        write(16,'(i4,f5.1,f6.1,f5.1,2f7.2,3f5.2,
     >   6f5.2,f6.0,2f6.0,2f7.3,2f8.0)') 
     >   irun,current,
     >   ratec(i),ratecer(i),srate(i)/ratec(i),
c     >   (srate(i) + sratex(i,1))/ratec(i),
c     >   (srate(i) + sratex(i,1) + sratex(i,2))/ratec(i),
c     >   (srate(i) + sratex(i,1) + sratex(i,2) + sratex(i,3))/ratec(i),
c just excl. and endcap, no rho
     >   (srate(i) + sratex(i,1) + sratex(i,3))/ratec(i),
     >   dt,tefe,tefp,piacc/(pir-piacc/4.)/current*10.,
     >   corr3,corr,corr2,heffh,heffp,
     >   float(irate_p)/1000.,pir,piacc/4.,
     >   piaccL/(pir-piaccL/2.)/current*100.,
     >   piaccH/(pir-piaccH/2.)/current*100.,
     >   float(ielclean)/chrg/100., float(ielcleanp)/chrg/100.
        nrt = nrt + 1
        do kk=1,10
c does use irate_p  + elreal work better?
        corr4 = 1.0 + 0.010 * float(kk-5) * 
     >    (float(irate_p) / 1.E6 + elreal / 1000.)
         rt(nrt,kk) = ratec(i) * corr4
         rter(nrt,kk) = ratecer(i) * corr4
         avrt(kk) = avrt(kk) + ratec(i)/ratecer(i)**2 / corr4
         avrter(kk) = avrter(kk) + 1./ratecer(i)**2 / corr4**2
        enddo
c no excl but yes endcap
        savrtnox = savrtnox + 
     >    (srate(i) + sratex(i,3))/srateer(i)**2
        savrtnoxer = savrtnoxer + 1./srateer(i)**2
c everything
        savrtwrho = savrtwrho + 
     >    (srate(i) + sratex(i,1) + sratex(i,2) + 
     >     sratex(i,3))/srateer(i)**2
        savrtwrhoer = savrtwrhoer + 1./srateer(i)**2
! here the four SIMC results are combined!
! changed to exclude the rho
c        srate(i) = srate(i) + sratex(i,1) + sratex(i,2) + sratex(i,3) 
c        srateer(i) = sqrt(srateer(i)**2 + sratexer(i,1)**2 + 
c     >   sratexer(i,2)**2 + sratexer(i,3)**2)
        srate(i) = srate(i) + sratex(i,1) + sratex(i,3) 
        srateer(i) = sqrt(srateer(i)**2 + sratexer(i,1)**2 + 
     >   sratexer(i,3)**2)
        srt(nrt) = srate(i)
        srter(nrt) = srateer(i)
        savrt = savrt + srate(i)/srateer(i)**2
        savrter = savrter + 1./srateer(i)**2
        if(current.gt.curmax) curmax = current
        if(current.lt.curmin) curmin = current
! Special case: last run
        if(irun.eq.6559) then
         avrate(8,3,11) = ratec(i)
         avrateer(8,3,11) = ratecer(i)
        endif

! compare to simc
c        write(6,
c     >   '(i4,e10.2,f6.2,e10.2,f6.2,f8.3)')
c     >   i,rate(i),rateer(i)/rate(i),
c     >   srate(i),srateer(i)/srate(i),
c     >   srate(i)/rate(i)

c hist of rad. ep elastic events
        write(85,'(''run, it '',i4,i3)') irun, it
        do k=1,14 
         write(85,'(i2,i5,20i3)') k,eprh(k,21),
     >    ((100*eprh(k,kk))/max(1,eprh(k,21)),kk=1,20)
        enddo

c hist. of mmpi
        if(mmpi2_cent_h.lt.1.8) then
c         write(15,'(''run, it, pp '',i4,i3,f6.2)') irun, it,pp
         do k=1,20
          sumk(k)=0
         enddo
         do kk=1,12 
c          write(15,'(20i4)') (mmpih(k,kk)/10,k=1,12)
          do k=1,20
           sumk(k) = sumk(k)+mmpih(k,kk)
          enddo
         enddo
         if(irun.lt.3422) write(15,'(4x,12f5.2)') 
     >     (10.*(0.85 + 0.010*(k-0.5)),k=4,15)
         write(15,'(i4,20i5)') irun,(sumk(k)/10,k=4,15)
        endif

c hist. of phicm
        write(14,'(/''run, it '',i4,i3,2f8.3)') irun, it,pp,thp
        write(14,'(i5,15i3)') phih(20),
     >    (int(100.*phih(k)/phih(20)),k=1,15)
! ratio of excl. to total events
      sum1 = sumcnts(1,1) - sumcnts(1,2)/4.
      sum2 = sumcnts(2,1) - sumcnts(2,2)/4.
        write(144,'(i4,f5.1,6f8.3,6f6.0)') irun,current,
     >   sum2/sum1, sum2/sum1/sqrt(sumcnts(2,1)),
     >   (sumcntsf(1,1) - sumcntsf(2,1))/
     >   (sumcnt(1,1)+sumcnt(2,1)),
     >   1./sqrt(sumcnt(1,1)+sumcnt(2,1)), 
     >   (sumcntexsf(1,1) - sumcntexsf(2,1))/
     >   max(1.,(sumcntex(1,1)+sumcntex(2,1))),
     >   1./sqrt(max(1.,sumcntex(1,1)+sumcntex(2,1))),
     >   sumcnt(1,1), sumcnt(2,1), sumcnt(3,1),
     >   sumcnt(1,2), sumcnt(2,2), sumcnt(3,2)


       write(55,'(/i5,i3,2f7.2)') irun,it,pp,thp
       write(55,'(20f4.1)') (min(9.9, max(0.,
     >   ratem(im)/max(1.e-20,sratem(im)))),im=1,20)
       write(55,'(20f4.1)') (min(9.9, max(0.,
     >   ratem(im)/max(1.e-20,
     >   (sratem(im)+sratemx(im,1))))),im=1,20)
       write(55,'(20f4.1)') (min(9.9, max(0.,
     >   ratemer(im)/max(1.e-20,
     >   (sratem(im)+sratemx(im,1))))),im=1,20)
       do im=1,20
        write(55,'(i2,9f7.2)') im,
     >   ratem(im),ratemer(im),
     >   sratem(im),sratemer(im),
     >   sratemx(im,1),sratemxer(im,1),
     >   min(9.9, max(0.,
     >   ratem(im)/max(1.e-20,
     >   sratem(im)))),
     >   min(9.9, max(0.,
     >   ratem(im)/max(1.e-20,
     >   (sratem(im)+sratemx(im,1))))),
     >   min(9.9, max(0.,
     >   ratemer(im)/max(1.e-20,
     >   (sratem(im)+sratemx(im,1)))))
       enddo
       write(56,'(/i5,i3,2f7.2)') irun,it,pp,thp
       do im=5,20
        write(56,'(i2,6f6.1,3f6.2)') im,
     >   ratez(im),ratezer(im),
     >   sratez(im),sratezer(im),
     >   sratezx(im,1),sratezxer(im,1),
     >   min(99.9, max(0.,
     >   ratez(im)/max(1.e-20,
     >   sratez(im)))),
     >   min(99.9, max(0.,
     >   ratez(im)/max(1.e-20,
     >   (sratez(im)+sratezx(im,1))))),
     >   min(99.9, max(0.,
     >   ratezer(im)/max(1.e-20,
     >   (sratez(im)+sratezx(im,1)))))
       enddo

       endif ! check on run range to analyze
      enddo ! loop over runs
 1239 write(16,'(''total chi2 df'')')
      do kk=1,10
       write(16,'(f7.3,2f10.1,f8.3)') .040 + 0.010 * (kk-5),
     >  totchi2(kk),totdf(kk),
     >   totchi2(kk)/totdf(kk)
      enddo
      do ipt=1,5
      write(32,'(i5,20f5.0)') irun,(meeht(k,1,1,ipt),  k=301,320)
      write(32,'(i5,20f5.0)') irun,(meeht(k,1,2,ipt)/4,k=301,320)
      write(32,'(i5,20f5.0)') irun,(meeht(k,2,1,ipt),  k=301,320)
      write(32,'(i5,20f5.0)') irun,(meeht(k,2,1,ipt)/4,k=301,320)
      do k=1,320
       write(32,'(f7.3,6f6.0)') 0.  + 0.010 * (k-0.5),
     >  meeht(k,2,1,ipt),meeht(k,2,2,ipt)/4,
     >  meeht(k,2,1,ipt)-meeht(k,2,2,ipt)/4,
     >  meeht(k,1,1,ipt),meeht(k,1,2,ipt)/4,
     >  meeht(k,1,1,ipt)-meeht(k,1,2,ipt)/4 
      enddo
      enddo
      if(testing.ne.1)close(unit=22)
      if(testing.ne.1)open(unit=22,file='mee.top')
      write(22,'(''set device postscript'')')
      ipt=1
      sum1= 0.
      do k=1,320
       if(meeht(k,2,1,ipt).gt.sum1) sum1 = meeht(k,2,1,ipt) 
      enddo
      write(22,422) sum1
 422  format(1x,'set scale y log'/
     >   1x,'set limits y 1. ',f10.1/
     >   1x,'set order x y dy ; set bar size 0.'
     >   1x,'set sym 9O size 1.0')
      ipt=1
      do k=1,320
       write(22,'(f7.3,2f9.1)') 0.  + 0.010 * (k-0.5),
     >  meeht(k,2,1,ipt)-meeht(k,2,2,ipt)/4.,
     >   sqrt(meeht(k,2,1,ipt))
      enddo
      do k=1,320
       write(22,'(f7.3,2f9.1)') 0.  + 0.010 * (k-0.5),
     >  meeht(k,1,1,ipt)-meeht(k,1,2,ipt)/4.,sqrt(meeht(k,2,1,ipt))
      enddo
      write(22,'(''plot'')')

c Plot of coin time pi for 20 momenta, four conditions
      if(testing.ne.1)close(unit=22)
      if(testing.ne.1)open(unit=22,file='ptcct.top')
      write(22,'(''set device postscript'')')
      do ip=1,20
       ix = int((ip+4)/5)
       iy = ip - 5*(ix-1)
       imax = 0
       do k=1,40
        do j=1,4
         imax = max(imax,cthist(ip,j,k))
        enddo
       enddo
       write(22,122) ix,iy,imax,1.75+0.1*ip
 122   format(1x,'set window x ',i1,' of 4 y ',i1,' of 5'/
     >   1x,'set limits y 0. ',i8/
     >   1x,'title top ',1h','P=',f5.2,1h')
       do k=1,40
        write(22,'(1x,f7.2,i8)') -2.+0.2*(k-0.5), cthist(ip,1,k)
       enddo
       write(22,'(''join'')')
       do k=1,40
        write(22,'(1x,f7.2,i8)') -2.+0.2*(k-0.5), cthist(ip,2,k)
       enddo
       write(22,'(''set pattern .05 .05 .05 .05 ; join pattern'')')
       do k=1,40
        write(22,'(1x,f7.2,i8)') -2.+0.2*(k-0.5), cthist(ip,3,k)
       enddo
       write(22,'(''set pattern .02 .02 .02 .02 ; join pattern'')')
       do k=1,40
        write(22,'(1x,f7.2,i8)') -2.+0.2*(k-0.5), cthist(ip,4,k)
       enddo
       write(22,'(''set pattern .02 .02 .06 .06 ; join pattern'')')
      enddo

      do ipm=1,2
      if(testing.ne.1) then
       close(unit=22)
       if(ipm.eq.1) open(unit=22,file='ptcctrf.top')
       if(ipm.eq.2) open(unit=22,file='ptcctrfneg.top')
      endif
      write(22,'(''set device postscript'')')
      do ip=1,20
       ix = int((ip+4)/5)
       iy = ip - 5*(ix-1)
       imax = 0
       do k=1,40
        do j=1,4
         imax = max(imax,ctrfhist(ip,j,k,ipm))
        enddo
       enddo
       write(22,122) ix,iy,imax,1.75+0.1*ip
       do k=1,40
        write(22,'(1x,f7.2,i8)') 0.1*(k-0.5), ctrfhist(ip,1,k,ipm)
       enddo
       write(22,'(''join'')')
       do k=1,40
        write(22,'(1x,f7.2,i8)') 0.1*(k-0.5), ctrfhist(ip,2,k,ipm)
       enddo
       write(22,'(''set pattern .05 .05 .05 .05 ; join pattern'')')
       do k=1,40
        write(22,'(1x,f7.2,i8)') 0.1*(k-0.5), ctrfhist(ip,3,k,ipm)
       enddo
       write(22,'(''set pattern .02 .02 .02 .02 ; join pattern'')')
       do k=1,40
        write(22,'(1x,f7.2,i8)') 0.1*(k-0.5), ctrfhist(ip,4,k,ipm)
       enddo
       write(22,'(''set pattern .02 .02 .06 .06 ; join pattern'')')
      enddo
      enddo ! ipm

c      write(31,'(i5,i2,20i4)') irun,it,(mmphs(k),k=1,20)
      do k=1,400
         write(31,'(f7.3,i7,f8.2,i7,f8.2)')  0.005 * (k-0.5),
     >    mmphfs(k),sqrt(float(mmphfs(k))),
     >    mmpheta(k),sqrt(float(mmpheta(k)))
      enddo

      do k=1,20
         write(15,'(f7.3,i7,f8.2,i7,f8.2)') 
     >    0.85 + 0.010 * (k-0.5),
     >    mmpihs(k),sqrt(float(mmpihs(k))),
     >    mmpihsa(k),sqrt(float(mmpihsa(k)))
      enddo
! plots versus dpp and dpe

      do i=1,2
       do kk=1,40
        write(15,'(i1,i3,16i7)') i,kk,
     >    (mmpihd(i,kk,k),k=3,18)
       enddo
      enddo


c plots of on-line rates
      if(testing.ne.1)open(unit=22,file='ptcr1.top')
      write(22,'(''set device postscript'')')
      do ix=1,2
       do iy=1,2
        write(22,101) ix,iy
 101    format(1x,
     >   1x,'set window x ',i1,' of 2 y ',
     >    i1,' of 2'/ 
     >   1x,'set font duplex'/
     >   1x,'set intensity 4'/
     >   1x,'set bar size 0.'/
     >   1x,'set order x y dy SYM'/
     >   1x,'set sym 9O size 1.0'/
     >   1x,'set scale y log'/
     >   1x,'title left ',1h',' ',1h'/
     >   1x,'title ',1h','ratec',1h'/
     >   1x,'title bottom ',1h','theta (deg)',1h'/
     >   1x,'set ticks size 0.05')
        if(ix.eq.1.and.iy.eq.2) write(22,102)
 102    format(1x,'title top',1h',
     >    'x=0.3 Q2=3.0 P= 2.53',1h')
        if(ix.eq.1.and.iy.eq.1) write(22,103)
 103    format(1x,'title top',1h',
     >    'x=0.3 Q2=3.0 P= -2.53',1h')
        if(ix.eq.2.and.iy.eq.2) write(22,104)
 104    format(1x,'title top',1h',
     >    'x=0.3 Q2=3.0 P= 1.96',1h')
        if(ix.eq.2.and.iy.eq.1) write(22,105)
 105    format(1x,'title top',1h',
     >    'x=0.3 Q2=3.0 P= -1.96',1h')
        do i=1,5000
         if(abs(kin(i,1)-5.27).lt.0.1.and.
     >      kin(i,3).gt.2.2.and.
     >      kin(i,3).lt.2.6 .and.
     >      ix.eq.1 .and.iy.eq.2) then
          write(22,'(3f10.4,i4,''O'')') 
     >      kin(i,4) -0.03+ 0.006*( i - int(i/10) * 10),
     >      ratec(i),ratecer(i),itsv(i)
         endif
         if(abs(kin(i,1)-5.27).lt.0.1.and.
     >      kin(i,3).lt.-2.2.and.
     >      kin(i,3).gt.-2.6 .and.
     >      ix.eq.1 .and.iy.eq.1) then
          write(22,'(3f10.4,i4,''O'')') 
     >      kin(i,4) -0.03+ 0.006*( i - int(i/10) * 10),
     >      ratec(i),ratecer(i),itsv(i)
         endif
         if(abs(kin(i,1)-5.27).lt.0.1.and.
     >      kin(i,3).gt.1.9.and.
     >      kin(i,3).lt.2.1 .and.
     >      ix.eq.2 .and.iy.eq.2) then
          write(22,'(3f10.4,i4,''O'')') 
     >      kin(i,4) -0.03+ 0.006*( i - int(i/10) * 10),
     >      ratec(i),ratecer(i),itsv(i)
         endif
         if(abs(kin(i,1)-5.27).lt.0.1.and.
     >      kin(i,3).lt.-1.9.and.
     >      kin(i,3).gt.-2.1 .and.
     >      ix.eq.2 .and.iy.eq.1) then
          write(22,'(3f10.4,i4,''O'')') 
     >      kin(i,4) -0.03+ 0.006*( i - int(i/10) * 10),
     >      ratec(i),ratecer(i),itsv(i)
         endif
        enddo
        write(22,'(''plot'')')
       enddo
      enddo
      if(testing.ne.1)close(unit=22)
      if(testing.ne.1)open(unit=22,file='ptcr2.top')
      write(22,'(''set device postscript'')')
c      do ix=1,2
      do ix=1,2
       do iy=1,2
        write(22,111) ix,iy
 111    format(1x,
     >   1x,'set window x ',i1,' of 2 y ',
     >    i1,' of 2'/ 
     >   1x,'set font duplex'/
     >   1x,'set intensity 4'/
     >   1x,'set bar size 0.'/
     >   1x,'set order x y dy SYM'/
     >   1x,'set sym 9O size 1.0'/
     >   1x,'set scale y log'/
     >   1x,'title left ',1h',' ',1h'/
     >   1x,'title ',1h','ratec',1h'/
     >   1x,'title bottom ',1h','theta (deg)',1h'/
     >   1x,'set ticks size 0.05')
        if(ix.eq.1.and.iy.eq.2) write(22,112)
 112    format(1x,'title top',1h',
     >    'x=0.3 Q2=4.1 P= 3.40',1h')
        if(ix.eq.1.and.iy.eq.1) write(22,113)
 113    format(1x,'title top',1h',
     >    'x=0.3 Q2=4.1 P= -3.40',1h')
        if(ix.eq.2.and.iy.eq.2) write(22,114)
 114    format(1x,'title top',1h',
     >    'x=0.3 Q2=4.1 P= 2.65',1h')
        if(ix.eq.2.and.iy.eq.1) write(22,115)
 115    format(1x,'title top',1h',
     >    'x=0.3 Q2=4.1 P= -2.65',1h')
        do i=1,5000
         if(abs(kin(i,1)-3.32).lt.0.1.and.
     >      kin(i,3).gt.3.2.and.
     >      kin(i,3).lt.3.6 .and.
     >      ix.eq.1 .and.iy.eq.2) then
          write(22,'(3f10.4,i4,''O'')') 
     >      kin(i,4) -0.03+ 0.006*( i - int(i/10) * 10),
     >      ratec(i),ratecer(i),itsv(i)
         endif
         if(abs(kin(i,1)-3.32).lt.0.1.and.
     >      kin(i,3).lt.-3.2.and.
     >      kin(i,3).gt.-3.6 .and.
     >      ix.eq.1 .and.iy.eq.1) then
          write(22,'(3f10.4,i4,''O'')') 
     >      kin(i,4) -0.03+ 0.006*( i - int(i/10) * 10),
     >      ratec(i),ratecer(i),itsv(i)
         endif
         if(abs(kin(i,1)-3.32).lt.0.1.and.
     >      kin(i,3).gt.2.5.and.
     >      kin(i,3).lt.2.8 .and.
     >      ix.eq.2 .and.iy.eq.2) then
          write(22,'(3f10.4,i4,''O'')') 
     >      kin(i,4) -0.03+ 0.006*( i - int(i/10) * 10),
     >      ratec(i),ratecer(i),itsv(i)
         endif
         if(abs(kin(i,1)-3.32).lt.0.1.and.
     >      kin(i,3).lt.-2.5.and.
     >      kin(i,3).gt.-2.8 .and.
     >      ix.eq.2 .and. iy.eq.1) then
          write(22,'(3f10.4,i4,''O'')') 
     >      kin(i,4) -0.03+ 0.006*( i - int(i/10) * 10),
     >      ratec(i),ratecer(i),itsv(i)
         endif
        enddo
        write(22,'(''plot'')')
       enddo
      enddo

! Do dummy subtraction
      do ikin=1,8
       do ith=1,15
        if(avrate(ikin,1,ith).ne.0. .and.
     >     avrate(ikin,3,ith).ne.0.) then
         avrate(ikin,1,ith) =
     >    avrate(ikin,1,ith) - 
     >    0.262 * avrate(ikin,3,ith)
         avrateer(ikin,1,ith) = sqrt(
     >    avrateer(ikin,1,ith)**2 + 
     >    (0.262 * avrateer(ikin,3,ith))**2)
        endif
        if(avrate(ikin,2,ith).ne.0. .and.
     >     avrate(ikin,3,ith).ne.0.) then
         avrate(ikin,2,ith) =
     >    avrate(ikin,2,ith) - 
     >    0.262 * avrate(ikin,3,ith)
         avrateer(ikin,2,ith) = sqrt(
     >    avrateer(ikin,2,ith)**2 + 
     >    (0.260 * avrateer(ikin,3,ith))**2)
        endif
        if(avrate(ikin,4,ith).ne.0. .and.
     >     avrate(ikin,6,ith).ne.0.) then
         avrate(ikin,4,ith) =
     >    avrate(ikin,4,ith) - 
     >    0.262 * avrate(ikin,6,ith)
         avrateer(ikin,4,ith) = sqrt(
     >    avrateer(ikin,4,ith)**2 + 
     >    (0.262 * avrateer(ikin,6,ith))**2)
        endif
        if(avrate(ikin,5,ith).ne.0. .and.
     >     avrate(ikin,6,ith).ne.0.) then
         avrate(ikin,5,ith) =
     >    avrate(ikin,5,ith) - 
     >    0.262 * avrate(ikin,6,ith)
         avrateer(ikin,5,ith) = sqrt(
     >    avrateer(ikin,5,ith)**2 + 
     >    (0.260 * avrateer(ikin,6,ith))**2)
        endif
       enddo
      enddo

! Results
      do ikin=1,8
       do ith=1,15
        if(avrate(ikin,1,ith).ne.0.) then
         write(16,'(2i4,10f6.2)') ikin,ith,
     >    (avrate(ikin,itp,ith) /
     >     avrate(ikin,  1,ith),
     >     avrateer(ikin,itp,ith) /
     >     avrate(ikin,  1,ith),itp=2,6)
        endif
       enddo
      enddo

! Plots of p, th, phi
      if(testing.ne.1)open(unit=22,file='ptckin.top')
      write(22,'(''set device postscript'')')
      iy=1
      ix=1
      write(22,131) ix,iy
 131  format(1x,
     >   1x,'set window x ',i1,' of 3 y ',
     >    i1,' of 2'/ 
     >   1x,'set font duplex'/
     >   1x,'set intensity 4'/
     >   1x,'set bar size 0.'/
     >   1x,'set order x y dy SYM'/
     >   1x,'set sym 9O size 1.0'/
     >   1x,'set ticks size 0.05')
      write(22,132)
 132  format(
     >   1x,'title bottom ',1h','dpp',1h')
      do k=1,100
       write(22,'(f8.4,i10)') -50.+1.0*(k-0.5),
     >  dpph(k)/10
      enddo
      write(22,'(''hist'')')
      ix=2
      write(22,131) ix,iy
      write(22,133)
 133  format(
     >   1x,'title bottom ',1h','dthp',1h')
      do k=1,100
       write(22,'(f8.4,i10)') -50.+1.0*(k-0.5),
     >  dthph(k)/10
      enddo
      write(22,'(''hist'')')
      ix=3
      write(22,131) ix,iy
      write(22,134)
 134  format(
     >   1x,'title bottom ',1h','dphip',1h')
      do k=1,100
       write(22,'(f8.4,i10)') -50.+1.0*(k-0.5),
     >  dphiph(k)/10
      enddo
      write(22,'(''hist'')')
      iy=2
      ix=1
      write(22,131) ix,iy
      write(22,142)
 142  format(
     >   1x,'title bottom ',1h','dpe',1h')
      do k=1,100
       write(22,'(f8.4,i10)') -20.+0.4*(k-0.5),
     >  dpeh(k)/10
      enddo
      write(22,'(''hist'')')
      ix=2
      write(22,131) ix,iy
      write(22,143)
 143  format(
     >   1x,'title bottom ',1h','dthe',1h')
      do k=1,100
       write(22,'(f8.4,i10)') -50.+1.0*(k-0.5),
     >  dtheh(k)/10
      enddo
      write(22,'(''hist'')')
      ix=3
      write(22,131) ix,iy
      write(22,144)
 144  format(
     >   1x,'title bottom ',1h','dphie',1h')
      do k=1,100
       write(22,'(f8.4,i10)') -100.+2.0*(k-0.5),
     >  dphieh(k)/10
      enddo
      write(22,'(''hist'')')


c plots of combined rate ratios versus th_shms
      if(testing.ne.1)open(unit=22,file='ptcrat.top')
      write(22,'(''set device postscript'')')
      do ix=1,2
       do iy=1,2
        write(22,201) ix,iy
 201    format(1x,
     >   1x,'set window x ',i1,' of 2 y ',
     >    i1,' of 2'/ 
     >   1x,'set font duplex'/
     >   1x,'set intensity 4'/
     >   1x,'set bar size 0.'/
     >   1x,'set order x y dy SYM'/
     >   1x,'set sym 9O size 1.0'/
     >   1x,'set limits y 0 2.'/
     >   1x,'title left ',1h',' ',1h'/
     >   1x,'title ',1h','ratio',1h'/
     >   1x,'title bottom ',1h','theta (deg)',1h'/
     >   1x,'set ticks size 0.05')
        if(ix.eq.1.and.iy.eq.2) write(22,202)
 202    format(1x,'title top',1h',
     >    'x=0.3 Q2=3.0 z=0.45',1h')
        if(ix.eq.1.and.iy.eq.1) write(22,203)
 203    format(1x,'title top',1h',
     >    'x=0.3 Q2=3.0 z=0.33',1h')
        if(ix.eq.2.and.iy.eq.2) write(22,204)
 204    format(1x,'title top',1h',
     >    'x=0.3 Q2=4.1 z=0.45',1h')
        if(ix.eq.2.and.iy.eq.1) write(22,205)
 205    format(1x,'title top',1h',
     >    'x=0.3 Q2=4.1 z=0.33',1h')
        ikin = 2*(ix-1)+iy
        do itp=2,6
         if(itp.eq.2) write(22,'(''set symbol 9O size 1.2'')')
         if(itp.eq.3) write(22,'(''set symbol 2O size 1.2'')')
         if(itp.eq.4) write(22,'(''set symbol 1O size 1.2'')')
         if(itp.eq.5) write(22,'(''set symbol 9O size 1.2'')')
         if(itp.eq.6) write(22,'(''set symbol 2O size 1.2'')')
         do ith=1,15
          if(avrate(ikin,1,ith).ne.0.) then
           if(avrate(ikin,itp,ith).gt.0.) 
     >      write(22,'(3f10.4)') ith*2. + 4.,
     >      avrate(ikin,itp,ith) /
     >      avrate(ikin,  1,ith),
     >      avrateer(ikin,itp,ith) /
     >      avrate(ikin,  1,ith)
          endif
         enddo
         write(22,'(''plot'')')
         if(itp.ge.5) then
          write(22,'(''set sym size 0.2 ; plot'')')
          write(22,'(''set sym size 0.4 ; plot'')')
          write(22,'(''set sym size 0.6 ; plot'')')
          write(22,'(''set sym size 0.8 ; plot'')')
          write(22,'(''set sym size 1.0 ; plot'')')
         endif
c simc ratios (no rho)
         do ith=1,15
          if(savrate(ikin,1,ith).ne.0.) then
           fact=1.0
           if(savrate(ikin,itp,ith).gt.0.) 
     >      write(22,'(3f10.4)') ith*2. + 4.,
     >      fact*savrate(ikin,itp,ith) /
     >      savrate(ikin,  1,ith)
          endif
         enddo
         write(22,'(''join 1'')')
c simc ratios without excl. tail (no rho)
         do ith=1,15
          if(savratenox(ikin,1,ith).ne.0.) then
           fact=1.0
           if(savratenox(ikin,itp,ith).gt.0.) 
     >      write(22,'(3f10.4)') ith*2. + 4.,
     >      fact*savratenox(ikin,itp,ith) /
     >      savratenox(ikin,  1,ith)
          endif
         enddo
         write(22,'(''set pattern 0.05 0.05 0.05 0.05'')')
         write(22,'(''join pattern 1'')')
c simc ratios including rho
         do ith=1,15
          if(savratewrho(ikin,1,ith).ne.0.) then
           fact=1.0
           if(savratewrho(ikin,itp,ith).gt.0.) 
     >      write(22,'(3f10.4)') ith*2. + 4.,
     >      fact*savratewrho(ikin,itp,ith) /
     >      savratewrho(ikin,  1,ith)
          endif
         enddo
         write(22,'(''set pattern 0.05 0.02 0.02 0.02'')')
         write(22,'(''join pattern 1'')')
        enddo
       enddo
      enddo
      if(testing.ne.1)close(unit=22)

c plots of on-line combined rate ratios page 2
      if(testing.ne.1)open(unit=22,file='ptcrat2.top')
      write(22,'(''set device postscript'')')
      do ix=1,2
       do iy=1,2
        write(22,201) ix,iy
        if(ix.eq.1.and.iy.eq.1) write(22,232)
 232    format(1x,'title top',1h',
     >    'x=0.45 Q2=4.5 z=0.35',1h')
        if(ix.eq.1.and.iy.eq.2) write(22,233)
 233    format(1x,'title top',1h',
     >    'x=0.45 Q2=4.5 z=0.45',1h')
        if(ix.eq.2.and.iy.eq.1) write(22,234)
 234    format(1x,'title top',1h',
     >    'x=0.45 Q2=4.5 z=0.60',1h')
        if(ix.eq.2.and.iy.eq.2) write(22,235)
 235    format(1x,'title top',1h',
     >    'x=0.45 Q2=4.5 z=0.90',1h')
        ikin = 2*(ix-1)+iy + 4
        do itp=2,6
         if(itp.eq.2) write(22,'(''set symbol 9O size 1.2'')')
         if(itp.eq.3) write(22,'(''set symbol 2O size 1.2'')')
         if(itp.eq.4) write(22,'(''set symbol 1O size 1.2'')')
         if(itp.eq.5) write(22,'(''set symbol 9O size 1.2'')')
         if(itp.eq.6) write(22,'(''set symbol 2O size 1.2'')')
         do ith=1,15
          if(avrate(ikin,1,ith).ne.0.0 .and.
     >      (ikin.ne.8.or.ith.ne.7)) then
           th = ith*2. + 4.
           if(ix.eq.1 .and.iy.eq.1) th = 10. + 3.*ith
           if(avrate(ikin,itp,ith).gt.0.) 
     >      write(22,'(3f10.4)') th,
     >      avrate(ikin,itp,ith) /
     >      avrate(ikin,  1,ith),
     >      avrateer(ikin,itp,ith) /
     >      avrate(ikin,  1,ith)
          endif
         enddo
         write(22,'(''plot'')')
         if(itp.ge.5) then
          write(22,'(''set sym size 0.2 ; plot'')')
          write(22,'(''set sym size 0.4 ; plot'')')
          write(22,'(''set sym size 0.6 ; plot'')')
          write(22,'(''set sym size 0.8 ; plot'')')
          write(22,'(''set sym size 1.0 ; plot'')')
         endif
c simc ratios
         do ith=1,15
          if(savrate(ikin,1,ith).ne.0.) then
           th = ith*2. + 4.
           if(ix.eq.1 .and.iy.eq.1) th = 10. + 3.*ith
           fact=1.0
c now done above
c           if(itp.eq.3.or.itp.eq.6) fact=0.75

           if(savrate(ikin,itp,ith).gt.0.) 
     >      write(22,'(3f10.4)') th,
     >      fact * savrate(ikin,itp,ith) /
     >      savrate(ikin,  1,ith)
          endif
         enddo
         write(22,'(''join 1'')')
c simc ratios
         do ith=1,15
          if(savratenox(ikin,1,ith).ne.0.) then
           fact=1.0
           if(savratenox(ikin,itp,ith).gt.0.) 
     >      write(22,'(3f10.4)') ith*2. + 4.,
     >      fact*savratenox(ikin,itp,ith) /
     >      savratenox(ikin,  1,ith)
          endif
         enddo
         write(22,'(''set pattern 0.05 0.05 0.05 0.05'')')
         write(22,'(''join pattern 1'')')
c simc ratios including rho
         do ith=1,15
          if(savratewrho(ikin,1,ith).ne.0.) then
           fact=1.0
           if(savratewrho(ikin,itp,ith).gt.0.) 
     >      write(22,'(3f10.4)') ith*2. + 4.,
     >      fact*savratewrho(ikin,itp,ith) /
     >      savratewrho(ikin,  1,ith)
          endif
         enddo
         write(22,'(''set pattern 0.05 0.02 0.02 0.02'')')
         write(22,'(''join pattern 1'')')
        enddo
       enddo
      enddo
      if(testing.ne.1)close(unit=22)

c plots of LH2/SIMC ratios versus th_shms
      if(testing.ne.1)open(unit=22,file='ptcrats.top')
      write(22,'(''set device postscript'')')
      do ix=1,2
       do iy=1,2
        write(22,201) ix,iy
        if(ix.eq.1.and.iy.eq.2) write(22,202)
        if(ix.eq.1.and.iy.eq.1) write(22,203)
        if(ix.eq.2.and.iy.eq.2) write(22,204)
        if(ix.eq.2.and.iy.eq.1) write(22,205)
        ikin = 2*(ix-1)+iy
        write(22,'(''set symbol 9O size 1.2'')')
        do ith=1,15
         if(avrate(ikin,1,ith).ne.0.) then
          write(22,'(3f10.4)') ith*2. + 4.,
     >      avrate(ikin,1,ith) /
     >      savrate(ikin,1,ith),
     >      avrateer(ikin,1,ith) /
     >      savrate(ikin,1,ith)
         endif
        enddo
        write(22,'(''plot'')')
        write(22,'(''set sym size 0.2 ; plot'')')
        write(22,'(''set sym size 0.4 ; plot'')')
        write(22,'(''set sym size 0.6 ; plot'')')
        write(22,'(''set sym size 0.8 ; plot'')')
        write(22,'(''set sym size 1.0 ; plot'')')
       enddo
      enddo
      if(testing.ne.1)close(unit=22)

c plots of LH2/SIMC ratios versus th_shms p. 2
      if(testing.ne.1)open(unit=22,file='ptcrat2s.top')
      write(22,'(''set device postscript'')')
      do ix=1,2
       do iy=1,2
        write(22,201) ix,iy
        if(ix.eq.1.and.iy.eq.2) write(22,232)
        if(ix.eq.1.and.iy.eq.1) write(22,233)
        if(ix.eq.2.and.iy.eq.2) write(22,234)
        if(ix.eq.2.and.iy.eq.1) write(22,235)
        ikin = 2*(ix-1)+iy + 4
        write(22,'(''set symbol 9O size 1.2'')')
        do ith=1,15
         if(avrate(ikin,1,ith).ne.0.) then
          write(22,'(3f10.4)') ith*2. + 4.,
     >      avrate(ikin,1,ith) /
     >      savrate(ikin,1,ith),
     >      avrateer(ikin,1,ith) /
     >      savrate(ikin,1,ith)
         endif
        enddo
        write(22,'(''plot'')')
        write(22,'(''set sym size 0.2 ; plot'')')
        write(22,'(''set sym size 0.4 ; plot'')')
        write(22,'(''set sym size 0.6 ; plot'')')
        write(22,'(''set sym size 0.8 ; plot'')')
        write(22,'(''set sym size 1.0 ; plot'')')
       enddo
      enddo
      if(testing.ne.1)close(unit=22)

c hg spectrum for pions versus delta
      if(testing.ne.1) open(unit=69,file='ptc.hgcer')
      write(69,'('' dpp hgnphe=1, 2, 3....18'')')
      do kkk=1,6
       do k=1,30
        write(69,'(i12,f5.2,25i4)') 
     >   kkk, 2. + .1*(float(k)-0.5),
     >   (int(1000.*hghp(k,j,kkk)/
     >    max(1.,hghp(k,20,kkk))),j=1,19)
       enddo
      enddo
      if(testing.ne.1) open(unit=69,file='ptc.hgcerxy')
      do j=1,6
       write(69,'(/)')
       do jj=1,6
c       do jj=1,1
        do k=1,20
         write(69,'(3i3,19i4)') j,jj,k,
     >   (int(1000.*(hghxy(k,jj,kk,j)/
     >              max(1.,hghxy(k,jj,20,j)))),kk=1,19)
        enddo
       enddo
      enddo
      if(testing.ne.1)close(unit=69)
      if(testing.ne.1)open(unit=69,file='ptc.hgcerr')
      do j=1,6
       write(69,'(/)')
       do k=1,10
c       do jj=1,1
        do jj=1,20
         write(69,'(3i3,19i4)') j,jj,k,
     >   (int(1000.*(hghr(k,jj,kk,j)/
     >              max(1.,hghr(k,jj,20,j)))),kk=1,19)
        enddo
       enddo
      enddo

c hg spectrum for pions versus delta
      if(testing.ne.1)open(unit=69,file='hgnphepe.txt')
      write(69,'('' dpp hgnphe=1, 2, 3....18'')')
      do k=1,30
       write(69,'(f4.1,25i4)') -5.+(float(k)-0.5)/3
     >  ,(hgh(k,j)/10,j=1,18)
      enddo

      do i=1,4
       do iy=1,3
        do ix=1,100
         sum3=0.
         do k=1,9
          sum1 = (ctx(i,ix,iy,k) * k +
     >      ctx(i,ix,iy,k+1) * (k+1) ) 
          sum2 = (ctx(i,ix,iy,k)  +
     >      ctx(i,ix,iy,k+1) ) 
          if(sum2.gt.sum3) then
           sum3 = sum2
           pipeak = sum1 / sum2
          endif
         enddo
         write(38,'(i1,i2,i4,i7,f5.2,20i4)')
     >    i,iy,ix,int(sum3),pipeak,
     >    (ctx(i,ix,iy,k)/10,k=1,10)
        enddo
       enddo
      enddo
      do i=1,4
       do ix=1,3
        do iy=1,100
         sum3=0.
         do k=1,9
          sum1 = (cty(i,ix,iy,k) * k +
     >      cty(i,ix,iy,k+1) * (k+1) ) 
          sum2 = (cty(i,ix,iy,k)  +
     >      cty(i,ix,iy,k+1) ) 
          if(sum2.gt.sum3) then
           sum3 = sum2
           pipeak = sum1 / sum2
          endif
         enddo
         write(38,'(i1,i2,i4,i7,f5.2,20i4)')
     >    i,iy,ix,int(sum3),pipeak,
     >    (cty(i,ix,iy,k)/10,k=1,10)
        enddo
       enddo
      enddo
      do k=1,5000
c       write(16,'(f8.1,2i10)') 0.2*(k-0.5),ctrf(k,1),ctrf(k,2)
      enddo

      write(15,'(''mc'',20i5)') (mmpi2hs(k),k=1,20)

c find fiducial acceptance region
c phi is yptar (horizontal)
      if(testing.ne.1)open(unit=22,file='ptc.accep')
      do ipt=1,30
       do iphi=1,30
        do i=1,4
         sum1=0.
         do ith=1,70
          sum1 = sum1 + accep(i,ipt,ith,iphi)
         enddo
         sum2 = 0.
         do ith=1,70 
          sum2 = sum2 + accep(i,ipt,ith,iphi)
          if(sum2.lt.0.05*sum1) loedge(i) = ith
         enddo
         sum2 = 0.
         do ith=70,1,-1
          sum2 = sum2 + accep(i,ipt,ith,iphi)
          if(sum2.lt.0.05*sum1) hiedge(i) = ith
         enddo
        enddo
        write(22,'(10i4)') ipt,iphi,(loedge(i),i=1,4),
     >   (hiedge(i),i=1,4)
! save simc hms result here
        lo_simc_hms(ipt,iphi)=loedge(2)
        hi_simc_hms(ipt,iphi)=hiedge(2)
       enddo
      enddo

c get edges of wide acceptance
      if(testing.ne.1)open(unit=22,file='ptc.accepw')
      do ipt=1,30
c get th edges versus phi (th is vert angle)
       do iphi=1,100
        do i=1,4
         loedge(i)=50
         hiedge(i)=50
         sum1=0.
         do ith=1,100
          sum1 = sum1 + accepw(i,ipt,ith,iphi)
         enddo
         if(sum1.gt.100) then
          sum2 = 0.
          do ith=1,100 
           sum2 = sum2 + accepw(i,ipt,ith,iphi)
           if(sum2.lt.0.02*sum1) loedge(i) = ith
          enddo
          sum2 = 0.
          do ith=100,1,-1
           sum2 = sum2 + accepw(i,ipt,ith,iphi)
           if(sum2.lt.0.02*sum1) hiedge(i) = ith
          enddo
         endif
        enddo
        write(22,'(10i4)') ipt,iphi,(loedge(i),i=1,4),
     >   (hiedge(i),i=1,4)
       enddo
      enddo
c get tphi (hor anlge)  edges versus th (th is vert angle)
      do ipt=1,30
       do ith=1,100
        do i=1,4
         loedge(i)=50
         hiedge(i)=50
         sum1=0.
         do iphi=1,100
          sum1 = sum1 + accepw(i,ipt,ith,iphi)
         enddo
         if(sum1.gt.100) then
          sum2 = 0.
          do iphi=1,100 
           sum2 = sum2 + accepw(i,ipt,ith,iphi)
           if(sum2.lt.0.02*sum1) loedge(i) = iphi
          enddo
          sum2 = 0.
          do iphi=100,1,-1
           sum2 = sum2 + accepw(i,ipt,ith,iphi)
           if(sum2.lt.0.02*sum1) hiedge(i) = iphi
          enddo
         endif
        enddo
        write(22,'(10i4)') ipt,ith,(loedge(i),i=1,4),
     >   (hiedge(i),i=1,4)
       enddo
      enddo
      if(testing.ne.1)close(unit=22)

c find which x, xp offset in HMS gives best agreement
      do i=1,20
       totdiff(i)=0
      enddo
      do ipt=6,25
       do iphi=6,25
        do i=11,19
         sum1=0.
         do ith=1,70
          sum1 = sum1 + accep(i,ipt,ith,iphi)
         enddo
         sum2 = 0.
         do ith=1,70 
          sum2 = sum2 + accep(i,ipt,ith,iphi)
          if(sum2.lt.0.05*sum1) loedge(i) = ith
         enddo
         sum2 = 0.
         do ith=70,1,-1
          sum2 = sum2 + accep(i,ipt,ith,iphi)
          if(sum2.lt.0.05*sum1) hiedge(i) = ith
         enddo
         totdiff(i) = totdiff(i) + 
     >     abs(loedge(i) - lo_simc_hms(ipt,iphi)) +
     >     abs(hiedge(i) - hi_simc_hms(ipt,iphi))
c         write(6,'(3i3,4i4)') ipt,iphi,i,
c     >     loedge(i),lo_simc_hms(ipt,iphi), 
c     >     hiedge(i),hi_simc_hms(ipt,iphi)
        enddo
       enddo
      enddo
      do i=11,19
c       write(6,'(''totdiff'',i3,i10)') i,totdiff(i)
      enddo
      if(testing.ne.1)open(unit=22,file='ptc.avacc')
      do ipt=4,27
       do ith=1,70
        do i=1,20
         sumi(i)=0.
         do iphi=1,30
          sumi(i) = sumi(i) + accep(i,ipt,ith,iphi)
         enddo
        enddo
        write(22,'(2i3,2i6,9i5)') ipt,ith,
     >   sumi(1)/10,sumi(2)/10,
     >   (sumi(i),i=11,19)
       enddo
      enddo

c aerogel timing. No useful cut here
c      do kk=1,40
c       write(6,'(i2,f7.0,15f4.0)') kk, 
c     >  aeroth(kk,16),(100.*(aeroth(kk,icc)/
c     >  aeroth(kk,16)),icc=1,15)
c      enddo
      sum1=0.
      do kk=21,40
       sum1 = sum1 + aeroth(kk,16)
      enddo
c      do kk=21,40
c       write(6,'(i4,f7.3)') kk,aeroth(kk,16)/sum1
c      enddo

c ratios evtype = 2 to 4 
      do i2=1,6
       write(16,'(''evtype 2 to 4 ratio'',i2)') i2
       do i1=1,15
        write(16,'(f6.1,2i8,f10.3)') -30. + 4.*(i1-0.5),
     >   ctev(i1,i2,1),ctev(i1,i2,2),
     >   float(ctev(i1,i2,1))/max(1.,float(ctev(i1,i2,2)))
       enddo
      enddo

c ratios data/MC 
      do i=1,7,2
       do ith=1,70
        do ipt=1,30,3
         ip = (ipt+2)/3
         sumacc(ip,1) = 0.
         sumacc(ip,2) = 0.
         do iphi=1,30
          sumacc(ip,1) = sumacc(ip,1) + accep(i,ipt,ith,iphi)
     >       + accep(i,ipt+1,ith,iphi) + accep(i,ipt+2,ith,iphi)
          sumacc(ip,2) = sumacc(ip,2) + accep(i+1,ipt,ith,iphi)
     >       + accep(i+1,ipt+1,ith,iphi) + accep(i+1,ipt+2,ith,iphi)
         enddo
        enddo
        write(16,'(i1,i3,10f7.2)') i,ith,
     >   (sumacc(ip,1)/max(1.,sumacc(ip,2)),ip=1,10)
       enddo
      enddo

      do i=5,7,2
       do ith=10,60
        do iphi=1,30,3
         ip = (iphi+2)/3
         sumacc(ip,1) = 0.
         sumacc(ip,2) = 0.
         do ipt=1,30
          sumacc(ip,1) = sumacc(ip,1) + accep(i,ipt,ith,iphi)
     >       + accep(i,ipt,ith,iphi+1) + accep(i,ipt,ith,iphi+2)
          sumacc(ip,2) = sumacc(ip,2) + accep(i+1,ipt,ith,iphi)
     >       + accep(i+1,ipt,ith,iphi+1) + accep(i+1,ipt,ith,iphi+2)
         enddo
        enddo
        write(16,'(i1,i3,10f7.2)') i,ith,
     >   (sumacc(ip,1)/max(1.,sumacc(ip,2)),ip=1,10)
       enddo
      enddo
 999  write(6,'(''ERROR'',i4,i7,i2/a/a)') icase,jj,errcode,
     >  fname,string(1:80)

      do kk=1,20
       write(16,'(i3,8i6)') kk,pxdist(kk),
     >   (pydist(kk,j),j=1,7)
      enddo

      if(testing.ne.1)close(unit=22)
      if(testing.ne.1)open(unit=22,file='cereff.txt')
      do ipt=1,30
       do iphi=1,20
        do ith=1,20
         write(22,'(3i3,3i5)') ipt,iphi,ith,
     >     (cereff(ipt,iphi,ith,j),j=1,3)
        enddo
       enddo
      enddo
      if(testing.ne.1)close(unit=22)
      if(testing.ne.1)open(unit=22,file='hgeff.txt')
      do ipt=1,30
       do iphi=1,20
        do ith=1,20
         write(22,'(3i3,6i5)') ipt,iphi,ith,
     >    (hgeff(ipt,iphi,ith,j),j=1,6)
        enddo
       enddo
      enddo

      do i=0,7
       write(6,'(i2,2f9.0,f7.3,2f9.0,f7.3)')
     >  i,hcalh(i,0),hcalh(i,1),hcalh(i,0)/hcalh(i,1),
     >    scalh(i,0),scalh(i,1),scalh(i,0)/scalh(i,1) 
       write(16,'(''cal'',i2,2f9.0,f7.3,2f9.0,f7.3)')
     >  i,hcalh(i,0),hcalh(i,1),hcalh(i,0)/hcalh(i,1),
     >    scalh(i,0),scalh(i,1),scalh(i,0)/scalh(i,1) 
      enddo
c plot tkef versus run number
      if(testing.ne.1)open(unit=22,file='ptctkeff.top')
      write(22,'(''set device postscript'')')
      write(22,843)
 843  format(1x,'set window y 1 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set limits x 3400 8400 y 0.9 1.0'/
     > 'title top',1h','trk eff HMS',1h')
      do irun=3400,8400
       do k=1,1
        if(tefesv(irun,k).ne.0) 
     >   write(22,'(i5,f8.4)') irun,
     >   max(0.905,min(1.,tefesv(irun,k)))
       enddo
       if(irun.eq.6000) write(22,'(''plot'')')
      enddo
      write(22,'(''plot'')')
      write(22,844)
 844  format(1x,'set window y 2 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set limits x 3400 8400 y 0.9 1.0'/
     > 'title top',1h','trk eff SHMS',1h')
      do irun=3400,8400
       do k=1,1
        if(tefpsv(irun,k).ne.0) 
     >   write(22,'(i5,f8.4)') irun,
     >   max(0.905,min(1.,tefpsv(irun,k)))
       enddo
       if(irun.eq.6000) write(22,'(''plot'')')
      enddo
      write(22,'(''plot'')')
c plot data/simc versus dp/p
      if(testing.eq.0) then
       open(unit=22,file='dprat.top')
      else
       open(unit=22,file='dptest.top')
      endif
      write(22,'(''set device postscript'')')
      write(22,'(''( exit,cal,ok,set'',3l3,i2,8f7.3)')
     > skipexit,skipcal,skipok,settoanalyze,
     >     dthhmsmin,dthshmsmin,dphihmsmin,dphishmsmin,
     >     dthhmsmax,dthshmsmax,dphihmsmax,dphishmsmax
      write(22,892)
 892  format(1x,'set window y 1 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set order x y dy ; set bar size 0.'/
     > 'set limits x -12. 12.  y 0. 2.0'/
     > 'title bottom',1h','dp/p (%)',1h'/
     > 'title left',1h','data/SIMC',1h'/
     > 'title top',1h','HMS',1h')
      do idp=1,100
       rex = sigdp(1,idp) / sigdper(1,idp)
       rexer = 1./sqrt(sigdper(1,idp))
       if(rexer.gt.0.00001.and.
     >  sigdper(1,idp).gt.0.) write(22,'(3f10.3)') 
     >  (-12. + 24./100*(idp-0.5)),rex,rexer
      enddo
      write(22,'(''plot'')')
      write(22,'(''-50. 1. ; 50. 1. ; join dash'')')
      write(22,'(''set symbol 1O size 0.5'')')
      do idp=1,100
       rex = sigdpo(1,idp) / sigdpoer(1,idp)
       rexer = 1./sqrt(sigdpoer(1,idp))
       if(rexer.gt.0.00001.and.
     >  sigdpoer(1,idp).gt.0.) write(22,'(3f10.3)') 
     >  (-12.04 + 24./100*(idp-0.5)),rex,rexer
      enddo
      write(22,'(''plot'')')
      write(22,893)
 893  format(1x,'set window y 2 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set order x y dy ; set bar size 0.'/
     > 'set limits x -25. 40.  y 0. 2.0'/
     > 'title bottom',1h','dp/p (%)',1h'/
     > 'title left',1h','data/SIMC',1h'/
     > 'title top',1h','SHMS',1h')
      do idp=1,100
       rex = sigdp(2,idp) / sigdper(2,idp)
       rexer = 1./sqrt(sigdper(2,idp))
       if(rexer.gt.0.0000001.and.
     >  sigdper(2,idp).gt.0.) write(22,'(3f10.3)') 
     >  (-25. + 65./100*(idp-0.5)),rex,rexer
      enddo
      write(22,'(''plot'')')
      write(22,'(''-50. 1. ; 50. 1. ; join dash'')')
      write(22,'(''set symbol 1O size 0.5'')')
      do idp=1,100
       rex = sigdpo(2,idp) / sigdpoer(2,idp)
       rexer = 1./sqrt(sigdpoer(2,idp))
       if(rexer.gt.0.00001.and.
     >  sigdpoer(2,idp).gt.0.) write(22,'(3f10.3,2e122.3)') 
     >  (-25.1 + 65./100*(idp-0.5)),rex,rexer,
     >  sigdpo(2,idp) , sigdpoer(2,idp)
      enddo
      write(22,'(''plot'')')
      write(22,'(''new frame'')')
c plot dist of dp-dp_init
      write(22,894)
 894  format(1x,'set window y 1 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set order x y ; set bar size 0.'/
     > 'set limits x -12. 12.  y -2. 2.0'/
     > 'title bottom',1h','dp/p (%)',1h'/
     > 'title left',1h','dp - dp_orig (%)',1h'/
     > 'title top',1h','HMS',1h')
      do k=1,10
       write(22,'(''set symbol 9O size '',f3.1)') 0.15*k
       nplt=0
       do idp=1,100
        if(deldpeh(idp,17).gt.0) then
         do kk=1,16
          rex  = deldpeh(idp,kk) / deldpeh(idp,17)
          if(rex .gt. rexlo(k) .and. rex.lt.rexhi(k)) then
           write(22,'(2f8.3)') 
     >     (-12. + 24./100*(idp-0.5)),-2.0 + 4.*(kk-0.5)/16.
           nplt = nplt + 1
          endif
         enddo
        endif
       enddo
       if(nplt.gt.0) write(22,'(''plot'')')
      enddo
      write(22,'(''-50. 0. ; 50. 0. ; join dash'')')
      write(22,895)
 895  format(1x,'set window y 2 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set order x y  ; set bar size 0.'/
     > 'set limits x -25. 40.  y -2. 2.0'/
     > 'title bottom',1h','dp/p (%)',1h'/
     > 'title left',1h','dp - dp_orig (%)',1h'/
     > 'title top',1h','SHMS',1h')
      do k=1,10
       write(22,'(''set symbol 9O size '',f3.1)') 0.15*k
       nplt=0
       do idp=1,100
        if(deldpph(idp,17).gt.0) then
         do kk=1,16
          rex  = deldpph(idp,kk) / deldpph(idp,17)
          if(rex .gt. rexlo(k) .and. rex.lt.rexhi(k)) then
           write(22,'(2f8.3)') 
     >     (-25. + 65./100*(idp-0.5)),-2.0 + 4.*(kk-0.5)/16.
           nplt = nplt + 1
          endif
         enddo
        endif
       enddo
       if(nplt.gt.0) write(22,'(''plot'')')
      enddo
      write(22,'(''-50. 0. ; 50. 0. ; join dash'')')
      write(22,'(''new frame'')')
c plot dist of xp-xp_init
      write(22,896)
 896  format(1x,'set window y 1 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set order x y ; set bar size 0.'/
     > 'set limits x -12. 12.  y -2. 2.0'/
     > 'title bottom',1h','dp/p (%)',1h'/
     > 'title left',1h','xp - xp _ xp_orig (mr)',1h'/
     > 'title top',1h','HMS',1h')
      do k=1,10
       write(22,'(''set symbol 9O size '',f3.1)') 0.15*k
       nplt=0
       do idp=1,100
        if(delxpeh(idp,17).gt.0) then
         do kk=1,16
          rex  = delxpeh(idp,kk) / delxpeh(idp,17)
          if(rex .gt. rexlo(k) .and. rex.lt.rexhi(k)) then
           write(22,'(2f8.3)') 
     >     (-12. + 24./100*(idp-0.5)),-2.0 + 4.*(kk-0.5)/16.
           nplt = nplt + 1
          endif
         enddo
        endif
       enddo
       if(nplt.gt.0) write(22,'(''plot'')')
      enddo
      write(22,'(''-50. 0. ; 50. 0. ; join dash'')')
      write(22,897)
 897  format(1x,'set window y 2 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set order x y  ; set bar size 0.'/
     > 'set limits x -25. 40.  y -2. 2.0'/
     > 'title bottom',1h','dp/p (%)',1h'/
     > 'title left',1h','xp - xp_orig (mr)',1h'/
     > 'title top',1h','SHMS',1h')
      do k=1,10
       write(22,'(''set symbol 9O size '',f3.1)') 0.15*k
       nplt=0
       do idp=1,100
        if(delxpph(idp,17).gt.0) then
         do kk=1,16
          rex  = delxpph(idp,kk) / delxpph(idp,17)
          if(rex .gt. rexlo(k) .and. rex.lt.rexhi(k)) then
           write(22,'(2f8.3)') 
     >     (-25. + 65./100*(idp-0.5)),-2.0 + 4.*(kk-0.5)/16.
           nplt = nplt + 1
          endif
         enddo
        endif
       enddo
       if(nplt.gt.0) write(22,'(''plot'')')
      enddo
      write(22,'(''-50. 0. ; 50. 0. ; join dash'')')
c plot dist of yp-yp_init
      write(22,'(''new frame'')')
      write(22,898)
 898  format(1x,'set window y 1 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set order x y ; set bar size 0.'/
     > 'set limits x -12. 12.  y -2. 2.0'/
     > 'title bottom',1h','dp/p (%)',1h'/
     > 'title left',1h','xp - yp _ yp_orig (mr)',1h'/
     > 'title top',1h','HMS',1h')
      do k=1,10
       write(22,'(''set symbol 9O size '',f3.1)') 0.15*k
       nplt=0
       do idp=1,100
        if(delypeh(idp,17).gt.0) then
         do kk=1,16
          rex  = delypeh(idp,kk) / delypeh(idp,17)
          if(rex .gt. rexlo(k) .and. rex.lt.rexhi(k)) then
           write(22,'(2f8.3)') 
     >     (-12. + 24./100*(idp-0.5)),-2.0 + 4.*(kk-0.5)/16.
           nplt = nplt + 1
          endif
         enddo
        endif
       enddo
       if(nplt.gt.0) write(22,'(''plot'')')
      enddo
      write(22,'(''-50. 0. ; 50. 0. ; join dash'')')
      write(22,899)
 899  format(1x,'set window y 2 of 2 x 1 of 1'/
     > 'set sym 9O size 0.5 '/
     > 'set order x y  ; set bar size 0.'/
     > 'set limits x -25. 40.  y -2. 2.0'/
     > 'title bottom',1h','dp/p (%)',1h'/
     > 'title left',1h','yp - yp_orig (mr)',1h'/
     > 'title top',1h','SHMS',1h')
      do k=1,10
       write(22,'(''set symbol 9O size '',f3.1)') 0.15*k
       nplt=0
       do idp=1,100
        if(delypph(idp,17).gt.0) then
         do kk=1,16
          rex  = delypph(idp,kk) / delypph(idp,17)
          if(rex .gt. rexlo(k) .and. rex.lt.rexhi(k)) then
           write(22,'(2f8.3)') 
     >     (-25. + 65./100*(idp-0.5)),-2.0 + 4.*(kk-0.5)/16.
           nplt = nplt + 1
          endif
         enddo
        endif
       enddo
       if(nplt.gt.0) write(22,'(''plot'')')
      enddo
      write(22,'(''-50. 0. ; 50. 0. ; join dash'')')

c plot hms hut distributions
      open(unit=22,file='huth.top')
      write(22,'(''set device postscript'')')
      do iy=1,9
       if(iy.gt.1) write(22,'(''new frame'')')
       write(22,477) iy
 477   format('title top',1h',i2,1h'/
     > 'set limits x -80. 80.  y -0.100 0.100'/
     > 'title bottom',1h','HMS hut x',1h'/
     >  'set color white'/
     > 'title left',1h','HMS hut dx',1h')
       do isp=1,2
        if(isp.eq.2) write(22,'(''set color blue'')')
        sum1 = 0.
        do ix=1,50
         do idx =1,50
          sum1 = max(sum1,huth(ix,idx,iy,isp))
         enddo
        enddo
        do i=1,10
         write(22,'(''set symbol 9O size '',f4.2)') 0.15*i
         nplt=0
         do ix=1,50
          do idx=1,50
           if(huth(ix,idx,iy,isp).gt.sum1/10.*(i-1).and.
     >        huth(ix,idx,iy,isp).lt.sum1/10.*i) then
            write(22,'(2f8.4)') -80. + 3.2*(ix-0.3*isp),
     >       -.100 + 0.004*(idx-0.5)
            nplt = nplt + 1
           endif
          enddo
         enddo
         if(nplt.gt.0) write(22,'(''plot'')')
        enddo
       enddo
      enddo
      do isp=1,2
      do k=1,5
       write(16,'(''deltaph isp,k='',i5)') isp,k
       do ix=1,20
        write(16,'(15i5)') (int(deltaph(ix,iy,isp,k)),iy=1,15)
       enddo
      enddo
      enddo
c now do SHMS at fp
      do iy=1,9
       write(22,'(''new frame'')')
       write(22,478) iy
 478   format('title top',1h',i2,1h'/
     > 'set limits x -50. 50.  y -0.100 0.100'/
     > 'title bottom',1h','SHMS hut x',1h'/
     >  'set color white'/
     > 'title left',1h','SHMS hut dx',1h')
       do isp=1,2
        if(isp.eq.2) write(22,'(''set color blue'')')
        sum1 = 0.
        do ix=1,50
         do idx =1,50
          sum1 = max(sum1,huts(ix,idx,iy,isp))
         enddo
        enddo
        do i=1,10
         write(22,'(''set symbol 9O size '',f4.2)') 0.15*i
         nplt=0
         do ix=1,50
          do idx=1,50
           if(huts(ix,idx,iy,isp).gt.sum1/10.*(i-1).and.
     >        huts(ix,idx,iy,isp).lt.sum1/10.*i) then
            write(22,'(2f8.4)') -50. + 2.0*(ix-0.3*isp),
     >       -.100 + 0.004*(idx-0.5)
            nplt = nplt + 1
           endif
          enddo
         enddo
         if(nplt.gt.0) write(22,'(''plot'')')
        enddo
       enddo
      enddo

      do isp=1,2
      do k=1,5
       write(16,'(''deltaph isp,k='',i5)') isp,k
       do ix=1,20
        write(16,'(15i5)') (int(deltaph(ix,iy,isp,k)),iy=1,15)
       enddo
      enddo
      enddo

      do ix=1,20
       sum1 = 0.
       do iy=1,20
        sum1 = sum1 + pxyh(ix,iy)
       enddo
       write(16,'(20i4)') (int(1000.*pxyh(ix,iy)/sum1),iy=1,20)
      enddo
      write(16,'(/)')
      do ix=1,20
       sum1 = 0.
       do iy=1,20
        sum1 = sum1 + pxyhs(ix,iy)
       enddo
       write(16,'(20i4)') (int(1000.*pxyhs(ix,iy)/sum1),iy=1,20)
      enddo

c hg spectra summed over runs by momentum
       do k=1,15
        if(hghtot(k,17).gt.1) then
         write(93,'(f6.2,i6,16i4)') 2.6 + 0.05*(k-0.5), 
     >   int(hghtot(k,17)),
     >   (int(1000.*hghtot(k,kk)/hghtot(k,17)),kk=1,16)
        endif
       enddo

c rff spectra summed over runs by momentum for 3 aero cuts
      do j=1,12
       if(j.eq.1) write(43,'(''aero cut 0.'')')
       if(j.eq.2) write(43,'(''aero cut 2.5'')')
       if(j.eq.3) write(43,'(''aero cut 4.0'')')
       if(j.eq.4) write(43,'(''aero cut 0.'')')
       if(j.eq.5) write(43,'(''aero cut 2.5'')')
       if(j.eq.6) write(43,'(''aero cut 4.0'')')
       if(j.eq.7) write(43,'(''kaon any aero'' )')
       if(j.eq.8) write(43,'(''kaon aero <1.0'')')
       if(j.eq.9) write(43,'(''kaon aero <2.5'')')
       if(j.eq.10) write(43,'(''proton any aero '')')
       if(j.eq.11) write(43,'(''proton aero <1.0'')')
       if(j.eq.12) write(43,'(''proton aero <2.5'')')
       do k=1,10
        if(rfhp(k,21,j).gt.0.) then
         write(43,'(f6.2,i6,20i4)') 2.2 + 0.15 *(k-0.5), 
     >   int(rfhp(k,21,j)),
     >   (int(1000.*rfhp(k,kk,j)/rfhp(k,21,j)),kk=1,16)
        endif
       enddo 
      enddo

c plots of mmpi and mmp histos averagaed over all runs
      open(unit=22,file='mm.top')
      write(22,'(''set device postscript'')')
      do idlt=1,61
       if(idlt.gt.1) write(22,'(''new frame'')')
       write(22,454) -20. + 1.0*(idlt-0.5)
 454   format('set window x 1 of 2'/
     > 'title top',1h',f5.1,1h'/
     > 'set limits x 0.68 1.08'/
     > 'title bottom',1h','pion MM2',1h'/
     > 'set order x y dy'/
     >  'set bar size 0. ; set symbol 9O size 1.0')
       nplt = 0.
       do imm=1,100
        sum1 = mmpi2h(idlt,101,1) - mmpi2h(idlt,101,2)/4.
        if(sum1.gt.0.0 .and. mmpi2h(idlt,imm,1).gt.0.) then
         write(22,'(3f10.4)') 0.68 + (1.08 - 0.68)/100.*(imm-0.5),
     >    (mmpi2h(idlt,imm,1) - mmpi2h(idlt,imm,2)/4.)/sum1,
     >    sqrt(mmpi2h(idlt,imm,1) + mmpi2h(idlt,imm,2)/16.)/sum1
         nplt = nplt + 1
        endif
       enddo
       if(nplt.gt.0) write(22,'(''plot'')')
       write(22,'(''0.88 0. ; 0.88 1. ; join dash'')')
       write(22,453) -20. + 1.0*(idlt-0.5)
 453   format('set window x 2 of 2'/
     > 'title top',1h',f5.1,1h'/
     > 'set limits x 0.5 1.20'/
     > 'title bottom',1h','Proton MM',1h'/
     > 'set order x y dy'/
     >  'set bar size 0. ; set symbol 9O size 1.0')
       nplt = 0.
       do imm=1,100
        sum1 = mmpfh(idlt,101,1) - mmpfh(idlt,101,2)/4.
        if(sum1.gt.0.0 .and. mmpfh(idlt,imm,1).gt.0.) then
         write(22,'(3f10.4,2f7.0)') 0.5 + (1.2 - 0.50)/100.*(imm-0.5),
     >    (mmpfh(idlt,imm,1) - mmpfh(idlt,imm,2)/4.)/sum1,
     >    sqrt(mmpfh(idlt,imm,1) + mmpfh(idlt,imm,2)/16.)/sum1,
     >    mmpfh(idlt,imm,1),mmpfh(idlt,imm,2)
         nplt = nplt + 1
        endif
       enddo
       if(nplt.gt.0) write(22,'(''plot'')')
      enddo
c mmp in j/psi region
      write(22,'(''new frame'')')
       write(22,457) 
 457   format(
     > 'set limits x 2.8 3.3'/
     > 'title bottom',1h','proton MM',1h'/
     > 'set order x y dy'/
     >  'set bar size 0. ; set symbol 9O size 1.0')
       nplt = 0.
       do imm=1,100
        sum1 = mmpfhj(101,1) - mmpfhj(101,2)/4.
        if(sum1.gt.0.0 .and. mmpfhj(imm,1).gt.0.) then
         write(22,'(3f10.4,2f7.0)') 2.8 + (3.3 - 2.8)/100.*(imm-0.5),
     >    (mmpfhj(imm,1) - mmpfhj(imm,2)/4.)/sum1,
     >    sqrt(mmpfhj(imm,1) + mmpfhj(imm,2)/16.)/sum1,
     >    mmpfhj(imm,1),mmpfhj(imm,2)
         nplt = nplt + 1
        endif
       enddo
       if(nplt.gt.0) write(22,'(''plot'')')
      
c write out ytarg histograms. First is for data
c 2nd is for non-decayed kaons, 3rd is for muons from kaons
c 44 bins in momentum from -16 to 28
      do j=1,5
       do k=1,44
        write(82,'(i1,i3,f7.0,14i4)') j,k,ythist(k,15,j),
     >   (int(1000.*ythist(k,kk,j)/ythist(k,15,j)),kk=1,14)
       enddo
      enddo
c kaon decay spectra
      write(16,'(/''kaon decays verus dist and momentum'')')
      do idist=1,22
       do jp=1,10
        summk(jp) = summk(jp)+fstatek(jp,idist)
       enddo
      enddo
      do idist=1,22
       write(16,'(i3,10f8.4)') idist,
     >  (fstatek(jp,idist)/summk(jp),jp=1,10)
      enddo
      write(16,'(3x,10i8)') (int(summk(jp)),jp=1,10)

      do i=1,2
       do jj=1,16
        v1= rfxy(jj,41,i)
        write(16,'(i2,i5,20i3)') j,int(v1),
     >   (int(500.*rfxy(jj,kk,i)/v1),kk=1,20)
       enddo
      enddo

      close(unit=22)
      open(unit=22,file='aeroeff.top')
      write(22,8302)
 8302 format('set device postscript'/
     >     'set intensity 4'/
     > 'title top ',1h','1.011 index aerogel efficiency',1h'/
     >     'title bottom ',1h','dp/p SHMS',1h')
      do ip=2,31
         write(6,'(''aeroeff'',f7.2,2f10.0,f8.2)')
     >        -25. + 2.5*(ip-0.5),
     >      aeroeff(ip,2),aeroeff(ip,1),
     >      aeroeff(ip,2)/aeroeff(ip,1)    
         if(aeroeff(ip,1).gt.20 .and. ip.le.26)
     >      write(22,'(2f10.4)') 
     >        -25. + 2.5*(ip-0.5),
     >      aeroeff(ip,2)/aeroeff(ip,1)    
      enddo
      write(22,'(''hist'')')

c plot of she for paper
      close(unit=22)
      open(unit=22,file='she3.top')
      write(22,8344)
 8344 format('set device postscript'/
     >     'set intensity 4'/
     > 'title left',1h','counts',1h'/
     >     'title bottom ',1h','E/p',1h')
      do ip=1,35
           write(22,'(f10.4,2i6)') 
     >        0.6 + 0.7*(ip-0.5)/35.,
     >      sheht(ip,1), sheht(ip,2)    
      enddo
      write(22,'(''hist'')')
      do ip=1,50
           write(22,'(f10.4,i6)') 
     >        0.6 + 0.7*(ip-0.5)/35.,
     >      sheht(ip,1) - sheht(ip,2)/4   
      enddo
      write(22,'(''hist'')')
      
      close(unit=22)
      open(unit=22,file='cth3.top')
      write(22,8345)
 8345 format('set device postscript'/
     >     'set intensity 4'/
     > 'title left',1h','counts',1h'/
     >     'title bottom ',1h',
     >  'electron-pion time difference (nsec)',1h')
      do ict=1,600
         write(22,'(f8.3,i6)') -30.+0.1*(ict-0.5),
     >        cth(ict)
      enddo
      write(22,'(''join'')')
      write(22,8346)
 8346 format('-1.0 0 ; -1.0 99999 ; join 1 '/
     >     ' 1.0 0 ;  1.0 99999 ; join 1 '/
     >     'set color blue' /
     >     ' 7.0 0 ;  7.0 99999 ; join 1 '/
     >     ' 9.0 0 ;  9.0 99999 ; join 1 '/
     >     ' 15.0 0 ;  15.0 99999 ; join 1 '/
     >     ' 17.0 0 ;  17.0 99999 ; join 1 '/
     >     ' -7.0 0 ;  -7.0 99999 ; join 1 '/
     >     ' -9.0 0 ;  -9.0 99999 ; join 1 '/
     >     ' -15.0 0 ;  -15.0 99999 ; join 1 '/
     >     ' -17.0 0 ;  -17.0 99999 ; join 1 ')

      close(unit=22)
      open(unit=22,file='shtp2.top')
      write(22,8347)
 8347 format('set device postscript'/
     >     'set intensity 4'/
     > 'title left',1h','counts',1h'/
     >     'title bottom ',1h',
     >  'SHMS E/P',1h')
      do ict=1,130
         write(22,'(f8.3,f8.1)') 0.01*(ict-0.5),
     >        shht(ict,1)
      enddo
      write(22,'(''hist'')')
      do ict=1,130
         write(22,'(f8.3,f8.1)') 0.01*(ict-0.5),
     >        shht(ict,2)
      enddo
      write(22,'(''set color blue ; hist'')')
      write(22,'(''0.8 0. ; 0.8 9999999. ; join 1'')')

c  plots of proton cointime
      close(unit=22)
      open(unit=22,file='ctproton.top')
      write(22,8447)
 8447 format('set device postscript'/
     >     'set intensity 4 ; set font duplex')
      ippi = 0
      do ix=1,5
       do iy=1,3
        ippi = ippi + 1
        ppi = 1.8 + 0.4*(ippi-0.5)
        write(22,8448) ix,iy,ppi
 8448   format('set window x ',i2,' of 5 y ',i2,' of 3'/
     >     'title left',1h','counts',1h'/
     >     'title bottom ',1h','t (nsec)',1h'/
     >     'title top ',1h','ppi=',f4.2,1h')
        do ict=1,60
           write(22,'(f8.3,i8)') -6. + 0.2*(ict-0.5),
     >           cntsctppi(ippi,ict,1)
        enddo
        write(22,'(''hist ; set color blue'')')
        do ict=1,60
           write(22,'(f8.3,i8)') -6. + 0.2*(ict-0.5),
     >           cntsctppi(ippi,ict,2)
        enddo
        write(22,'(''hist ; set color white'')')
        write(22,'(''0.0 0. ; 0.0 9999999. ; join dash'')')
       enddo
      enddo

c  plots of proton cointime after run 4400 when bad
      close(unit=22)
      open(unit=22,file='ctprotonw.top')
      write(22,8447)
      ippi = 0
      do ix=1,5
       do iy=1,3
        ippi = ippi + 1
        ppi = 1.8 + 0.4*(ippi-0.5)
        write(22,8448) ix,iy,ppi
        do ict=1,60
           write(22,'(f8.3,i8)') -6. + 0.2*(ict-0.5),
     >           cntsctppi(ippi,ict,3)
        enddo
        write(22,'(''hist ; set color blue'')')
        do ict=1,60
           write(22,'(f8.3,i8)') -6. + 0.2*(ict-0.5),
     >           cntsctppi(ippi,ict,4)
        enddo
        write(22,'(''hist ; set color white'')')
        write(22,'(''0.0 0. ; 0.0 9999999. ; join dash'')')
       enddo
      enddo

c plot of proton RF time
      open(unit=22,file='rfproton.top')
      write(22,8447)
      ippi = 0
      do ix=1,5
       do iy=1,3
        ippi = ippi + 1
        ppi = 1.8 + 0.4*(ippi-0.5)
        write(22,8448) ix,iy,ppi
        do ict=1,40
           write(22,'(f8.3,i8)') 0.1*(ict-0.5),
     >           cntsrfppi(ippi,ict,1)
        enddo
        write(22,'(''hist ; set color blue'')')
        do ict=1,40
           write(22,'(f8.3,i8)') 0.1*(ict-0.5),
     >           cntsrfppi(ippi,ict,2)
        enddo
        write(22,'(''hist ; set color white'')')
        write(22,'(''1.0 0. ; 1.0 9999999. ; join dash'')')
       enddo
      enddo
      
      stop
      end

      subroutine getphi(ebeam,elf4,had,phi)
      implicit none
c
c input ebeam   -> the beam energy   
c       elf4    -> scattered electron px,py,pz
c       had     -> hadron px,py,pz
c
c  output  the angle phi in the photon frame (phi)
c          assuming target is a proton

       real*8 qiu4(4),el04(4),elf4(4),tnorm(4),had(4)
       real*8 vangle,vdotm,phi,pitwo,ebeam,y
c
        pitwo=2*acos(-1.0)   ! 2*pi
c
c define the initial  el0 4-momentum
c
        el04(1)=0
        el04(2)=0
        el04(3)=ebeam
        qiu4(1) = el04(1) - elf4(1)
        qiu4(2) = el04(2) - elf4(2)
        qiu4(3) = el04(3) - elf4(3)
        call crossm(qiu4,el04,tnorm)
        phi=vangle(qiu4,el04,qiu4,had)
        y=vdotm(tnorm,had,3)
        if (y.lt.0) phi = pitwo - phi
        return
        end

       subroutine crossm(a,b,c)
       implicit none
       real*8 a(4),b(4),c(4)
       c(1)=a(2)*b(3)-a(3)*b(2)
       c(2)=a(3)*b(1)-a(1)*b(3)
       c(3)=a(1)*b(2)-a(2)*b(1)
       return
       end
c
       real*8 function vdotm(a,b,n)
       implicit none
       real*8 a(4),b(4),s
       integer i,n
       s=0.0
       do i=1,3
         s = s + a(i)*b(i)
       enddo
       if(n.eq.4) s=s-a(n)*b(n)
       vdotm=s
       return
       end
c
       real*8 function vangle(a,b,c,d)
       implicit none
       real*8 a(4),b(4),c(4),d(4),xm,ym,vcos
       real*8 x(4),y(4),pi,vdotm
       pi=acos(-1.0)
       call crossm(a,b,x)
       call crossm(c,d,y)
       xm=vdotm(x,x,3)
       ym=vdotm(y,y,3)
       if(xm.gt.0.0 .and. ym.gt.0.0) then
         vcos=vdotm(x,y,3)/sqrt(xm)/sqrt(ym)
         if(abs(vcos).lt.1.0) then
            vangle=acos(vcos)
         else
c           if(abs(vcos).gt.1.0) write(6,'(1x,''error, vcos'',
c     >        7f8.3)') x,y,vcos
            if(vcos.ge.1.0)  vangle=0
            if(vcos.le.-1.0)  vangle=pi
         endif 
       else
         write(6,'(1x,''xm,ym='',10f8.3)') xm,ym,c,d,y
         vangle=0
       endif
       return
       end
 
      subroutine getcos(e0,z_e,z_p,mp,costh,pt)
      implicit none
      real*8  e0,z_e(4),z_p(4),pe,pp,q2,z_q(4),
     >  z_w(4),pw, pt
      real*8 gamma,beta,cost,ecm,pcm,pl,mp,costh,pq,w

      pe = z_e(4)
      Pp = sqrt(z_p(1)**2 + z_p(2)**2 +z_p(3)**2)

      Z_Q(1)   = -Z_E(1) 
      Z_Q(2)   = -Z_E(2) 
      Z_Q(3)   =  E0 - Z_E(3) 
      Z_Q(4)   =  E0 - Z_E(4)
      q2 = z_e(1)**2 + z_e(2)**2 + (E0 - z_e(3))**2 - 
     >   (E0 - z_e(4))**2
      w = sqrt(0.9383**2 + 2.*0.9383*(E0-z_e(4))-q2)
      PQ       =  SQRT(Z_Q(4)**2+Q2)

      Z_W(1)   = Z_Q(1) 
      Z_W(2)   = Z_Q(2) 
      Z_W(3)   = Z_Q(3)
      Z_W(4)   = SQRT(PQ**2+W**2)
      PW       = PQ

      GAMMA = Z_W(4)/W
      BETA  = PW/Z_W(4)
      COST  =(Z_W(1)*Z_P(1)+Z_W(2)*Z_P(2)+Z_W(3)*Z_P(3))/(PW*PP)
      ECM   = GAMMA*(Z_P(4)-BETA*PP*COST)
      PCM   = SQRT(ECM**2-MP**2)
      PL    = GAMMA*(PP*COST-BETA*Z_P(4))
      pt = sqrt(pcm**2 - pl**2)
      costh = -1.1
      if(pcm.ne.0.) costh = pl/pcm
      return
      end


! improved ytarg for SHMS
      subroutine  newz(del,yfp,ypfp,y)
      implicit none
      real*8 del,yfp,ypfp,y
      real*8 xval(10)/
     >    0.319E+00,
     >   -0.774E+02,
     >    0.273E-01,
     >    0.228E+01,
     >   -0.444E-02,
     >   -0.178E+03,
     >   -0.177E-01,
     >    0.221E+02,
     >    0.255E-02,
     >    0.521E-01/

        y = xval(1) * yfp +
     >      xval(2) * ypfp +
     >      xval(3) * del +
     >      xval(4) * yfp  * ypfp +
     >      xval(5) * yfp **2 +
     >      xval(6) * ypfp **2 +
     >      xval(7) * yfp  * del +
     >      xval(8) * ypfp * del +
     >      xval(9) * del**2  +
     >      xval(10)             
        return
        end

c apply optics correction to SHMS delta
      subroutine shmscorr(pdcx,pdcxp,pdcy,pdcyp,dpp,dppcorr)
      implicit none
      real*8 pdcx,pdcxp,pdcy,pdcyp,dpp,dppcorr,x(4),y,xval(35)
      integer i

      real*8 delcorI(35)/
     >   0.3080E+01,
     >   0.3467E-01,
     >   0.2849E-01,
     >  -0.2840E-01,
     >   0.1959E-01,
     >  -0.5584E-03,
     >   0.2295E-03,
     >  -0.5946E-02,
     >  -0.1155E-03,
     >   0.1136E-02,
     >   0.1675E-02,
     >  -0.1800E-02,
     >  -0.3024E-03,
     >  -0.8011E-03,
     >   0.6904E-04,
     >  -0.5475E-05,
     >   0.1552E-03,
     >   0.8019E-04,
     >  -0.1393E-06,
     >  -0.8338E-04,
     >   0.7756E-05,
     >   0.4899E-05,
     >  -0.6119E-04,
     >  -0.4821E-04,
     >  -0.9406E-05,
     >   0.2010E-03,
     >   0.4101E-05,
     >  -0.1131E-03,
     >   0.1229E-04,
     >   0.1584E-04,
     >  -0.1634E-03,
     >   0.2213E-04,
     >   0.2146E-04,
     >  -0.2847E-04,
     >  -0.1118E-04/
      real*8 delcorH(35)/
     >   0.6903E+00,
     >   0.1539E-01,
     >   0.7762E-02,
     >  -0.1224E-01,
     >   0.1751E-03,
     >  -0.8011E-03,
     >  -0.2192E-03,
     >  -0.3854E-02,
     >   0.2729E-03,
     >   0.3245E-03,
     >   0.1623E-02,
     >  -0.7236E-03,
     >  -0.1781E-03,
     >  -0.3349E-04,
     >  -0.5477E-03,
     >   0.6722E-05,
     >  -0.1099E-03,
     >   0.6942E-04,
     >  -0.7247E-06,
     >  -0.2062E-04,
     >   0.9084E-05,
     >   0.6717E-05,
     >   0.4034E-04,
     >  -0.3140E-04,
     >  -0.9142E-05,
     >   0.3675E-04,
     >   0.1783E-04,
     >   0.1110E-03,
     >   0.4201E-05,
     >  -0.2906E-05,
     >  -0.2211E-04,
     >   0.1502E-04,
     >   0.9743E-05,
     >  -0.4351E-04,
     >  -0.6663E-05/
      real*8 delcorG(35)/
     >   0.1662E+01,
     >  -0.5426E+00,
     >  -0.4593E-01,
     >   0.1601E+00,
     >   0.2593E+00,
     >  -0.4485E-03,
     >   0.6722E-02,
     >  -0.9802E-02,
     >   0.1921E-02,
     >   0.5744E-03,
     >  -0.4498E-02,
     >   0.1154E-01,
     >   0.9370E-04,
     >  -0.3938E-02,
     >  -0.4350E-02,
     >   0.2679E-04,
     >  -0.5061E-03,
     >   0.8402E-04,
     >  -0.8631E-05,
     >  -0.2249E-04,
     >   0.3740E-04,
     >   0.1649E-04,
     >   0.1416E-03,
     >   0.8376E-04,
     >  -0.1529E-04,
     >   0.7915E-04,
     >   0.2418E-04,
     >   0.2875E-03,
     >   0.2703E-05,
     >   0.4173E-05,
     >  -0.9455E-04,
     >  -0.1481E-04,
     >  -0.6484E-04,
     >   0.5366E-04,
     >   0.2219E-04/
      real*8 delcorF(35)/
     >   0.1166E-01,
     >  -0.1073E-01,
     >   0.7001E-02,
     >   0.3576E-02,
     >  -0.1036E-02,
     >  -0.3685E-02,
     >   0.4576E-03,
     >   0.9232E-03,
     >   0.1646E-02,
     >  -0.1507E-03,
     >  -0.2188E-03,
     >  -0.9253E-03,
     >   0.1678E-03,
     >  -0.4011E-04,
     >  -0.1184E-04,
     >   0.1231E-03,
     >  -0.1795E-03,
     >  -0.1573E-03,
     >   0.7723E-06,
     >  -0.2015E-04,
     >   0.7892E-06,
     >  -0.1099E-04,
     >   0.5480E-04,
     >   0.2222E-04,
     >  -0.9220E-05,
     >   0.1281E-04,
     >  -0.8403E-05,
     >   0.1979E-03,
     >   0.3188E-05,
     >  -0.5569E-05,
     >  -0.1660E-05,
     >  -0.4443E-04,
     >  -0.2993E-04,
     >   0.7957E-04,
     >   0.1026E-04/
      real*8 delcorE(35)/
     >   0.9015E+00,
     >  -0.2850E+00,
     >  -0.3250E+00,
     >   0.1784E+00,
     >   0.2237E+00,
     >  -0.5578E-01,
     >   0.2462E-01,
     >   0.3267E-01,
     >   0.1328E-01,
     >   0.4542E-01,
     >  -0.6385E-02,
     >  -0.3683E-01,
     >  -0.3034E-01,
     >  -0.2734E-02,
     >  -0.1668E-01,
     >  -0.2275E-03,
     >  -0.6309E-03,
     >  -0.1844E-03,
     >  -0.8500E-03,
     >   0.9546E-04,
     >  -0.1648E-03,
     >   0.6685E-04,
     >   0.4655E-03,
     >  -0.2727E-03,
     >   0.1882E-03,
     >  -0.1345E-03,
     >  -0.2861E-03,
     >   0.5717E-04,
     >   0.1550E-04,
     >  -0.8202E-04,
     >   0.4235E-04,
     >  -0.5958E-03,
     >   0.3998E-03,
     >   0.6468E-03,
     >   0.9820E-03/
      real*8 delcorD(35)/
     >   0.5146E+02,
     >   0.4719E+01,
     >   0.9932E+00,
     >   0.1218E+00,
     >  -0.6629E+00,
     >  -0.1476E-01,
     >   0.1144E+00,
     >   0.4807E-02,
     >   0.4108E-01,
     >   0.1449E-01,
     >  -0.2482E-01,
     >   0.4377E-01,
     >   0.3198E-02,
     >  -0.2844E-01,
     >  -0.1213E-01,
     >  -0.4178E-04,
     >  -0.4434E-03,
     >  -0.6943E-03,
     >  -0.4957E-03,
     >  -0.3643E-03,
     >  -0.2264E-03,
     >   0.7206E-03,
     >   0.9498E-03,
     >  -0.5239E-03,
     >   0.1280E-03,
     >  -0.2438E-03,
     >  -0.2339E-04,
     >   0.1065E-02,
     >   0.4963E-03,
     >  -0.2865E-03,
     >   0.1783E-03,
     >   0.3073E-03,
     >   0.2590E-03,
     >   0.4419E-03,
     >   0.3631E-03/
      real*8 delcorC(35)/
     >   0.1803E+03,
     >   0.1549E+02,
     >   0.2286E+01,
     >   0.8640E+00,
     >  -0.1914E+01,
     >  -0.1195E+00,
     >   0.4285E+00,
     >   0.2150E-01,
     >   0.1511E+00,
     >   0.1511E+00,
     >  -0.8258E-01,
     >   0.1506E+00,
     >  -0.6568E-01,
     >  -0.1181E+00,
     >  -0.7646E-01,
     >  -0.9379E-03,
     >  -0.2577E-02,
     >  -0.3421E-02,
     >  -0.2506E-02,
     >  -0.1478E-02,
     >  -0.9571E-03,
     >   0.2377E-02,
     >   0.2921E-02,
     >  -0.1253E-02,
     >   0.3808E-03,
     >   0.3541E-03,
     >  -0.6542E-03,
     >   0.6187E-02,
     >   0.1086E-02,
     >  -0.9090E-03,
     >   0.1059E-03,
     >   0.1310E-02,
     >  -0.2179E-04,
     >   0.2405E-02,
     >   0.2701E-02/
      real*8 delcorB(35)/
     >   0.7240E+02,
     >   0.3687E+01,
     >   0.4572E+01,
     >  -0.1353E+01,
     >  -0.7066E+00,
     >   0.1112E+00,
     >   0.1906E-01,
     >   0.1462E+00,
     >   0.5796E-01,
     >   0.5180E-01,
     >  -0.8295E-01,
     >  -0.1349E+00,
     >   0.7098E-01,
     >   0.9002E-03,
     >  -0.8145E-01,
     >   0.3144E-02,
     >  -0.2182E-02,
     >  -0.2191E-02,
     >  -0.1544E-02,
     >  -0.7824E-03,
     >  -0.2311E-03,
     >   0.7003E-02,
     >  -0.8734E-03,
     >  -0.3305E-02,
     >  -0.1321E-02,
     >  -0.6612E-03,
     >   0.1292E-02,
     >   0.7102E-03,
     >   0.9856E-03,
     >   0.6751E-03,
     >   0.5225E-03,
     >   0.2192E-02,
     >  -0.8836E-03,
     >   0.1737E-02,
     >  -0.5982E-03/
      real*8 delcorA(35)/
     >   0.1552E+03,
     >   0.8702E+01,
     >  -0.6154E+01,
     >  -0.3239E+01,
     >   0.2221E+01,
     >  -0.3908E+00,
     >   0.1345E-01,
     >   0.1308E+00,
     >   0.2316E+00,
     >   0.1661E+00,
     >  -0.1678E+00,
     >  -0.2654E+00,
     >   0.4527E-01,
     >   0.2899E-01,
     >  -0.1749E+00,
     >   0.2176E-01,
     >  -0.2916E-02,
     >  -0.1664E-01,
     >  -0.1370E-02,
     >   0.3799E-02,
     >   0.4724E-02,
     >   0.1361E-01,
     >  -0.9711E-03,
     >  -0.5640E-02,
     >  -0.4430E-02,
     >   0.1135E-02,
     >   0.4153E-02,
     >  -0.7566E-03,
     >  -0.3884E-02,
     >   0.1059E-02,
     >  -0.1347E-02,
     >  -0.6841E-03,
     >  -0.4961E-02,
     >  -0.3170E-02,
     >  -0.3723E-02/

      x(1) = pdcx
      x(2) = pdcy
      x(3) = pdcxp *1000.
      x(4) = pdcyp *1000.

      do i=1,35
       if(dpp.lt.-20) xval(i) = delcorA(i)
       if(dpp.ge.-20.and.dpp.lt.-19) xval(i) = delcorB(i)
       if(dpp.ge.-19.and.dpp.lt.-17) xval(i) = delcorC(i)
       if(dpp.ge.-17.and.dpp.lt.-15) xval(i) = delcorD(i)
       if(dpp.ge.-15.and.dpp.lt.-10) xval(i) = delcorE(i)
       if(dpp.ge.-10.and.dpp.lt. 18) xval(i) = delcorF(i)
       if(dpp.ge. 18.and.dpp.lt. 24) xval(i) = delcorG(i)
       if(dpp.ge. 24.and.dpp.lt. 30) xval(i) = delcorH(i)
       if(dpp.ge. 30) xval(i) = delcorI(i)
      enddo

c all 0
      y = 
     >    xval( 1) * x(1)**0 * x(2)**0 * x(3)**0 * x(4)**0 +
c power total 1
     >    xval( 2) * x(1)**1 * x(2)**0 * x(3)**0 * x(4)**0 +
     >    xval( 3) * x(1)**0 * x(2)**1 * x(3)**0 * x(4)**0 +
     >    xval( 4) * x(1)**0 * x(2)**0 * x(3)**1 * x(4)**0 +
     >    xval( 5) * x(1)**0 * x(2)**0 * x(3)**0 * x(4)**1 +
c power total 2
     >    xval( 6) * x(1)**1 * x(2)**1 * x(3)**0 * x(4)**0 +
     >    xval( 7) * x(1)**1 * x(2)**0 * x(3)**1 * x(4)**0 +
     >    xval( 8) * x(1)**1 * x(2)**0 * x(3)**0 * x(4)**1 +
     >    xval( 9) * x(1)**0 * x(2)**1 * x(3)**1 * x(4)**0 +
     >    xval(10) * x(1)**0 * x(2)**1 * x(3)**0 * x(4)**1 +
     >    xval(11) * x(1)**0 * x(2)**0 * x(3)**1 * x(4)**1 +
     >    xval(12) * x(1)**2 * x(2)**0 * x(3)**0 * x(4)**0 +
     >    xval(13) * x(1)**0 * x(2)**2 * x(3)**0 * x(4)**0 +
     >    xval(14) * x(1)**0 * x(2)**0 * x(3)**2 * x(4)**0 +
     >    xval(15) * x(1)**0 * x(2)**0 * x(3)**0 * x(4)**2 +
c power total 3
     >    xval(16) * x(1)**2 * x(2)**1 * x(3)**0 * x(4)**0 +
     >    xval(17) * x(1)**2 * x(2)**0 * x(3)**1 * x(4)**0 +
     >    xval(18) * x(1)**2 * x(2)**0 * x(3)**0 * x(4)**1 +
     >    xval(19) * x(1)**0 * x(2)**2 * x(3)**1 * x(4)**0 +
     >    xval(20) * x(1)**0 * x(2)**2 * x(3)**0 * x(4)**1 +
     >    xval(21) * x(1)**0 * x(2)**0 * x(3)**2 * x(4)**1 +
     >    xval(22) * x(1)**1 * x(2)**2 * x(3)**0 * x(4)**0 +
     >    xval(23) * x(1)**1 * x(2)**0 * x(3)**2 * x(4)**0 +
     >    xval(24) * x(1)**1 * x(2)**0 * x(3)**0 * x(4)**2 +
     >    xval(25) * x(1)**0 * x(2)**1 * x(3)**2 * x(4)**0 +
     >    xval(26) * x(1)**0 * x(2)**1 * x(3)**0 * x(4)**2 +
     >    xval(27) * x(1)**0 * x(2)**0 * x(3)**1 * x(4)**2 +
     >    xval(28) * x(1)**3 * x(2)**0 * x(3)**0 * x(4)**0 +
     >    xval(29) * x(1)**0 * x(2)**3 * x(3)**0 * x(4)**0 +
     >    xval(30) * x(1)**0 * x(2)**0 * x(3)**3 * x(4)**0 +
     >    xval(31) * x(1)**0 * x(2)**0 * x(3)**0 * x(4)**3 +
     >    xval(32) * x(1)**1 * x(2)**1 * x(3)**1 * x(4)**0 +
     >    xval(33) * x(1)**1 * x(2)**1 * x(3)**0 * x(4)**1 +
     >    xval(34) * x(1)**1 * x(2)**0 * x(3)**1 * x(4)**1 +
     >    xval(35) * x(1)**0 * x(2)**1 * x(3)**1 * x(4)**1  

      dppcorr = dpp + y

c      write(6,'(7f8.3)') pdcx,pdcxp,pdcy,pdcyp,dpp,dppcorr,y

      return
      end

	subroutine physics_angles(theta0,phi0,dx,dy,ep,px,py,pz )

!Generate physics angles in lab frame.  Theta is angle from beamline.
!phi is projection on x-y plane (so phi=0 is down, sos=pi/2, hms=3*pi/2.
!
!theta=acos( (cos(theta0)-dy*sin(theta0)*sin(phi0))/ sqrt(1+dx**2+dy**2) )
!phi=atan( (dy*cos(theta0)+sin(theta0)*sin(phi0)) / (sin(theta0)*cos(phi0)+dx) )
!
! Note that these formulae assume phi0=pi/2 or 3*pi/2 (thus the sin(phi0)
! gives a -/+ sign for the HMS/SOS).  Thus, we set the cos(phi0) term to zero.

	real*8 dx,dy		!dx/dy (xptar/yptar) for event.
	real*8 theta0,phi0	!central physics angles of spectrometer.
	real*8 theta,phi	!physics angles for event.
	real*8 r,sinth,costh,sinph,cosph	!intermediate variables.
	real*8 tmp,pi,px,py,pz,ep

	pi=3.141592653589793

	costh = cos(theta0)
	sinth = sin(theta0)
	sinph = sin(phi0)
	cosph = cos(phi0)
	r = sqrt( 1. + dx**2 + dy**2 )

	if (abs(cosph).gt.0.0001) then	!phi not at +/- pi/2
	  write(6,*) 'theta,phi bad'
	  write(6,*) 'phi0=',phi0,'=',phi0*180/pi,'degrees'
	endif

	tmp = (costh - dy * sinth * sinph) / r
	if (abs(tmp).gt.1) write(6,*) 'tmp=',tmp
	theta = acos( (costh - dy * sinth * sinph) / r )
	if (dx.ne.0.0) then
	  phi = atan( (dy*costh + sinth*sinph) / dx )	!gives -90 to 90 deg.
	  if (phi.le.0) phi=phi+pi			!make 0 to 180 deg.
	  if (sinph.lt.0.) phi=phi+pi		!add pi to phi for HMS
	else
	  phi = phi0
	endif
        px =  ep * sin(theta) * cos(phi)
        py =  ep * sin(theta) * sin(phi)
        pz =  ep * cos(theta) 

	return
	end

	subroutine mc_hms_recon (xfp,xpfp,yfp,ypfp,fry,
     >   delta_p,delta_t,delta_phi,y_tgt)
C+______________________________________________________________________________
!
! MC_HMS_RECON : Reconstruct target quantities from tracks.
!		   This subroutine is part of the MC_HMS program.
!
! Right-handed coordinates are assumed: X=down, Z=downstream, Y = (Z cross X)
!
! Inputs are from common block in track_*.inc (except for fry):
!  xs, ys, fry  are in cm.
!  dxdzs, dydzs are unitless slopes (we say "radians" to contrast to "mr").
! Matrix Elements want meters and radians, so have to convert cm-->m.
! Output:
!  delta_p is deviation from central momentum(unitless). Convert to % for outpu+
!  delta_t, delta_phi are in "radians".
!  y_tgt is in meters, convert to cm for output.
!
! Author: D. Potterveld, ANL, 18-Mar-1993
!
! Modification History:
!
! 2-August-1995 (RMM) Hardcoded in an extra index on the coeff, expon, and
!		      n_terms variables to specify HMS. (HMS = 1)
!
!  19-AUG-1993	(DHP) Modified to use COSY INFINITY reconstruction coefficients.
C-______________________________________________________________________________
     
	implicit none

	integer*4 specnum
	parameter (specnum = 1)			!this is the HMS routine

C Argument definitions.

        real*8 xfp,xpfp,yfp,ypfp
	real*8	delta_p,delta_t,delta_phi,y_tgt
	real*8	fry			!vertical position at target (+y=down)

C Cosy reconstruction matrix elements.

	integer*4 max_elements
	parameter (max_elements = 1000)

	real*8		coeff(1,4,max_elements)
	integer*2	expon(1,5,max_elements)
	integer*4	n_terms(1),max_order
	real*8		sum(4),hut(5),term

C Misc. variables.

	integer*4	i,j
	integer*4	chan

	logical		firsttime	/.true./
	character*132	line

C No amnesia, please...

	save

C ============================= Executable Code ================================

C First time through, read in coefficients from data file.

	if (firsttime) then
c	  if (.not.locforunt(chan)) stop 'MC_HMS_RECON: No I/O channels!'
c	  open (unit=chan,status='old',readonly,file='hms/recon_cosy.dat')
          chan=89
	  open (unit=chan,status='old',file='hmsrecon_cosy.dat')

! Skkip past header.

	  line = '!'
	  do while (line(1:1).eq.'!')
	    read (chan,1001) line
	  enddo

! Read in coefficients and exponents.

	  n_terms(specnum) = 0
	  max_order = 0
	  do while (line(1:4).ne.' ---')
	    n_terms(specnum) = n_terms(specnum) + 1
	    if (n_terms(specnum).gt.max_elements)
     >		stop 'WCRECON: too many COSY terms!'
	    read (line,1200) (coeff(specnum,i,n_terms(specnum)),i=1,4),
     >				(expon(specnum,j,n_terms(specnum)),j=1,5)
	    read (chan,1001) line
	    max_order = max(max_order, expon(specnum,1,n_terms(specnum)) + 
     >			expon(specnum,2,n_terms(specnum)) +
     >			expon(specnum,3,n_terms(specnum)) +
     >			expon(specnum,4,n_terms(specnum)) +
     >			expon(specnum,5,n_terms(specnum)))
	  enddo
c	  write(6,*) 'HMS: N_TERMS, MAX_ORDER = ',n_terms(specnum),max_order
	  close (unit=chan)
	  firsttime = .false.
	endif

C Reset COSY sums.

	do i = 1,4
	  sum(i) = 0.
	enddo

C Convert hut quantities to right-handed coordinates, in meters and "radians".
C Make sure hut(5) is non-zero, to avoid taking 0.0**0 (which crashes)
c make this an input now.
c        fry = 0.001
	hut(1) = xfp/100.		!cm --> m
	hut(2) = xpfp			!slope ("radians")
	hut(3) = yfp/100.		!cm --> m
	hut(4) = ypfp			!slope ("radians")
	hut(5) = fry/100.		!vert. position at target(cm-->m)
	if (abs(hut(5)).le.1.e-30) hut(5)=1.e-30

C Compute COSY sums.

	do i = 1,n_terms(specnum)
	  term =  hut(1)**expon(specnum,1,i) * hut(2)**expon(specnum,2,i)
     >		* hut(3)**expon(specnum,3,i) * hut(4)**expon(specnum,4,i)
     >		* hut(5)**expon(specnum,5,i)
	  sum(1) = sum(1) + term*coeff(specnum,1,i)
	  sum(2) = sum(2) + term*coeff(specnum,2,i)
	  sum(3) = sum(3) + term*coeff(specnum,3,i)
	  sum(4) = sum(4) + term*coeff(specnum,4,i)
	enddo
     
C Load output values.

	delta_phi = sum(1)		!slope ("radians")
	y_tgt	  = sum(2)*100.		!m --> cm
	delta_t   = sum(3)		!slope ("radians")
	delta_p   = sum(4)*100.		!percent deviation
     
      return

C ============================ Format Statements ===============================

1001	format(a)
1200	format(1x,4g16.9,1x,5i1)

      END

c version with Jacob Murphy's 6.59 gev magrix elements
	subroutine mc_hms_recon_659 (xfp,xpfp,yfp,ypfp,fry,
     >   delta_p,delta_t,delta_phi,y_tgt)
     
	implicit none
	integer*4 specnum
	parameter (specnum = 1)			!this is the HMS routine
        real*8 xfp,xpfp,yfp,ypfp
	real*8	delta_p,delta_t,delta_phi,y_tgt
	real*8	fry			!vertical position at target (+y=down)
	integer*4 max_elements
	parameter (max_elements = 1000)
	real*8		coeff(1,4,max_elements)
	integer*2	expon(1,5,max_elements)
	integer*4	n_terms(1),max_order
	real*8		sum(4),hut(5),term
	integer*4	i,j
	integer*4	chan
	logical		firsttime	/.true./
	character*132	line
	save

C ============================= Executable Code ================================

C First time through, read in coefficients from data file.

	if (firsttime) then
          chan=89
	  open (unit=chan,status='old',file='hms_newfit_6_59.dat')

! Skkip past header.

	  line = '!'
	  do while (line(1:1).eq.'!')
	    read (chan,1001) line
	  enddo

! Read in coefficients and exponents.

	  n_terms(specnum) = 0
	  max_order = 0
	  do while (line(1:4).ne.' ---')
	    n_terms(specnum) = n_terms(specnum) + 1
	    if (n_terms(specnum).gt.max_elements)
     >		stop 'WCRECON: too many COSY terms!'
	    read (line,1200) (coeff(specnum,i,n_terms(specnum)),i=1,4),
     >				(expon(specnum,j,n_terms(specnum)),j=1,5)
	    read (chan,1001) line
	    max_order = max(max_order, expon(specnum,1,n_terms(specnum)) + 
     >			expon(specnum,2,n_terms(specnum)) +
     >			expon(specnum,3,n_terms(specnum)) +
     >			expon(specnum,4,n_terms(specnum)) +
     >			expon(specnum,5,n_terms(specnum)))
	  enddo
c	  write(6,*) 'HMS: N_TERMS, MAX_ORDER = ',n_terms(specnum),max_order
	  close (unit=chan)
	  firsttime = .false.
	endif

C Reset COSY sums.

	do i = 1,4
	  sum(i) = 0.
	enddo

C Convert hut quantities to right-handed coordinates, in meters and "radians".
C Make sure hut(5) is non-zero, to avoid taking 0.0**0 (which crashes)
c make this an input now.
c        fry = 0.001
	hut(1) = xfp/100.		!cm --> m
	hut(2) = xpfp			!slope ("radians")
	hut(3) = yfp/100.		!cm --> m
	hut(4) = ypfp			!slope ("radians")
	hut(5) = fry/100.		!vert. position at target(cm-->m)
	if (abs(hut(5)).le.1.e-30) hut(5)=1.e-30

C Compute COSY sums.

	do i = 1,n_terms(specnum)
	  term =  hut(1)**expon(specnum,1,i) * hut(2)**expon(specnum,2,i)
     >		* hut(3)**expon(specnum,3,i) * hut(4)**expon(specnum,4,i)
     >		* hut(5)**expon(specnum,5,i)
	  sum(1) = sum(1) + term*coeff(specnum,1,i)
	  sum(2) = sum(2) + term*coeff(specnum,2,i)
	  sum(3) = sum(3) + term*coeff(specnum,3,i)
	  sum(4) = sum(4) + term*coeff(specnum,4,i)
	enddo
     
C Load output values.

	delta_phi = sum(1)		!slope ("radians")
	y_tgt	  = sum(2)*100.		!m --> cm
	delta_t   = sum(3)		!slope ("radians")
	delta_p   = sum(4)*100.		!percent deviation
     
      return

C ============================ Format Statements ===============================

1001	format(a)
1200	format(1x,4g17.9,1x,5i1)

      END

c Heavy Gass cut
      subroutine gethgcut(irun,pdcx,pdcxp,pdcy,pdcyp,
     >  xycer,ppi,heff,hgpmin)
      integer irun
      real*8 pdcx,pdcxp,pdcy,pdcyp,xycer,ppi,heff,p0,b0,b,avnpe
      real*8 hgpmin

c 90 cm is optimum for narrowest dip in x
c hole is centered on 0.75 cm
         xcer = pdcx + 90. * pdcxp
         ycer = pdcy + 90. * pdcyp

c default if ppi<hgpmin
         heff = 1.0

! small hole in spring 18
         xycer = sqrt(((xcer-0.75)/1.0)**2 + 
     >                 (ycer/6.)**2)

c biggest hole fall18
         if(irun.gt.4400)
     >    xycer = sqrt(((xcer-0.75)/3.5)**2 + 
     >                 (ycer/20.)**2)
c medium hole sp19
         if(irun.gt.7000)
     >    xycer = sqrt(((xcer-0.75)/2.5)**2 + 
     >                 (ycer/15.)**2)

c apply cut for holes if ppi>2.8
c changed to use hgpmin  ppi > hgpmin (2.85 or 3.35)
        heff=1.
        if(ppi.ge.hgpmin) then
 
         avnpe = 0.
         if(xycer.ge.0.5 .and. xycer.lt.1.0) avnpe=10.
         if(xycer.ge.1.0 .and. xycer.lt.1.5) avnpe=16.
         if(xycer.ge.1.5) avnpe=20.

c changed from 2.65 to 2.61 Dec. 2021 based on ptc.hg (bottom)
         p0 = 2.61 ! pion threshold
         b0 = p0 / sqrt(0.02 + p0**2)
         b = ppi / sqrt(0.02 + ppi**2)
         avnpe = avnpe /
     >     (1 - (b0/1.)**2) * 
     >     (1 - (b0/b)**2)   

         heff = 1. - exp(-avnpe)

        endif

        return
        end

c function to define accep limits based on dp
        subroutine accminmax(dpe,dpp,
     >     dthhmsmin,dthshmsmin,dphihmsmin,dphishmsmin,
     >     dthhmsmax,dthshmsmax,dphihmsmax,dphishmsmax,set)
        implicit none
        integer set
        real*8 dpe,dpp,
     >   dthhmsmin,dthshmsmin,dphihmsmin,dphishmsmin,
     >   dthhmsmax,dthshmsmax,dphihmsmax,dphishmsmax


! old way: not used any more
c       dthhmsmax = 0.030  
c       if(dpe.lt. -9.) 
c     >  dthhmsmax = 0.030+ 0.120*(min(0.,(9.+dpe)/4.))
c       if(dpe.gt. 9.) 
c     >  dthhmsmax = 0.030 - 0.040*(max(0.,(dpe-9.)/5.))
c       dthhmsmin = -0.030
c       dphihmsmax = 0.016
c       dphihmsmin = -1.*dphihmsmax
c       dthshmsmax = 0.035
c       if(dpp.lt.-12.)
c     >  dthshmsmax = 0.035 + 0.120*(min(0.,(12.+dpp)/13.))
c       if(dpp.gt.0.)
c     >  dthshmsmax = 0.035 - 0.060*(max(0.,(dpp)/40.))
c      dthshmsmin = -0.045
c      if(dpp.lt.-12.)
c    > dthshmsmin = -0.045 - 0.030*(min(0.,(12.+dpp)/16.))
c      if(dpp.gt.0.)
c    >  dthshmsmin = -0.045 + 0.010*(max(0.,(dpp)/40.))
c       dthshmsmin = -0.035
c       if(dpp.lt.-12.)
c     > dthshmsmin = -0.035 - 0.030*(min(0.,(12.+dpp)/16.))
c       if(dpp.gt.0.)
c     >  dthshmsmin = -0.035 + 0.010*(max(0.,(dpp)/40.))
       
c      dphishmsmax = 0.028
c      dphishmsmax = 0.028 + 0.015*(min(0.,(12.+dpp)/16.))
c      dphishmsmin = -1.* dphishmsmax
c      dphishmsmax = 0.022 + 0.015*(min(0.,(12.+dpp)/16.))
c       dphishmsmin = -1.* dphishmsmax

c for acceptance study runs. This get reduced by 
c call to subroutine newacc and used in skipok=.false.
c wide limits in HMS
       if(set.eq.1) then
        dthhmsmax = 0.065 
        dthhmsmin = -0.065
        dphihmsmax = 0.030
        dphihmsmin = -1.*dphihmsmax

c very wide limits SHMS
        dthshmsmax = 0.055
        dthshmsmin = -0.055
        dphishmsmax = 0.030
        dphishmsmin = -1.* dphishmsmax
       else

c regular limits: HMS
        dthhmsmax = 0.060 
        dthhmsmin = -0.060
        dphihmsmax = 0.022
        dphihmsmin = -1.*dphihmsmax

c regular limits SHMS
        dthshmsmax = 0.045
        dthshmsmin = -0.045
        dphishmsmax = 0.024
        dphishmsmin = -1.* dphishmsmax
       endif

       return
       end
 
	subroutine mc_shms_recon (XS,DXDZS,YS,DYDZS,FRY,
     >    DELTA_P,DELTA_T,DELTA_PHI,Y_TGT)
C+______________________________________________________________________________
!
! MC_HMS_RECON : RECONSTRUCT TARGET QUANTITIES FROM TRACKS.
!		   THIS SUBROUTINE IS PART OF THE MC_HMS PROGRAM.
!
! RIGHT-HANDED COORDINATES ARE ASSUMED: X=DOWN, Z=DOWNSTREAM, Y = (Z CROSS X)
!
! AUTHOR: D. POTTERVELD, ANL, 18-MAR-1993
!
! MODIFICATION HISTORY:
!
! 2-AUGUST-1995 (RMM) HARDCODED IN AN EXTRA INDEX ON THE COEFF, EXPON, AND
!                      N_TERMS VARIABLES TO SPECIFY HMS. (HMS = 1)
!
!  19-AUG-1993	(DHP) MODIFIED TO USE COSY INFINITY RECONSTRUCTION COEFFICIENTS.
C-______________________________________________________________________________

	IMPLICIT NONE

C	INCLUDE '../SPECTROMETERS.INC'

C SPECTROMETER DEFINITIONS - FOR DOUBLE ARM MONTE CARLO COMPATABILITY
	INTEGER*4 SPECTR/1/

C ARGUMENT DEFINITIONS.

        real*8 xs,dxdzs,ys,dydzs
	REAL*8	DELTA_P,DELTA_T,DELTA_PHI,Y_TGT
	real*8	fry			!vertical position at target (+y=down)

C Cosy reconstruction matrix elements.

	integer*4	max_elements
	parameter	(max_elements = 1000)
	integer*4 nspectr
	parameter (nspectr = 1)


	real*8		coeff(nspectr,4,max_elements)
	integer*2	expon(nspectr,5,max_elements)
	integer*4	n_terms(nspectr),max_order
	real*8		sum(4),hut(5),term

C Misc. variables.

	integer*4	i,j
	integer*4	chan

	logical*4	firsttime	/.true./
	character*132	line

C Functions.

	logical*4	locforunt

C No amnesia, please...

	save

C ============================= Executable Code ================================
C setting some temporary files


C First time through, read in coefficients from data file.

	if (firsttime) then
c	   if (.not.locforunt(chan)) 
c     >         stop 'MC_SHMS_RECON: No I/O channels!'
         chan = 89
	   if (spectr.eq.1) then	!ssa tune
! COSY calculated (not so great!!!)
c	     open (unit=chan,status='old',file='shms/shms_hsa_2009_recon_cosy_daveme2.dat')
c	     open (unit=chan,status='old',file='shms/shms_recon_cosy_2011_dipole26cm_dm1.2_nov9.dat')
c	     open (unit=chan,status='old',file='shms/shms_recon_refit_5th_order.dat')
c	     open (unit=chan,status='old',file='shms/shms_recon_fit_90deg_1cm_5th_order.dat')
	     open (unit=chan,status='old',
     >        file='shms_recon.dat')
c	     open (unit=chan,status='old',file='shms/shms_hsa_2009_recon_cosy.dat')
! CMOP REFIT
c	     open (unit=chan,status='old',file=
c     >'shms/cmop_refit_shms_lq_qdi_hsa_split_recon_newfit_4thorder.dat')
! TH new optics
!	     open (unit=chan,status='old',
!     > file='shms/shms2008_rec_th.dat')
!     > file='shms/shms2008_rec_th_pmag7.dat')
	   else if (spectr.eq.6) then	!lsa tune
	      write(6,*) 'mc_shms_recon: 
     >You are trying to use the LSA: no banana!'
c	     open (unit=chan,status='old',readonly,file='shms/shms_recon_cosy_LSA.dat')
	   else
	     write(6,*) 'MC_SHMS_RECON: I just cant 
     >handle spectr=',spectr
	     stop
	   endif

! Read and print header.

	   line = '!'
	   do while (line(1:1).eq.'!')
	      read (chan,1001) line
	   enddo

! Read in coefficients and exponents.
*	   write (6,*) 'reading in coeffiecients and exponents in the shms_recon'
	   n_terms(spectr) = 0
	   max_order = 0
	   do while (line(1:4).ne.' ---')
	      n_terms(spectr) = n_terms(spectr) + 1
	      if (n_terms(spectr).gt.max_elements)
     >	      stop 'WCRECON: too many COSY terms!'
	      read (line,1200) (coeff(spectr,i,n_terms(spectr)),i=1,4),
     >			       (expon(spectr,j,n_terms(spectr)),j=1,5)
	      read (chan,1001) line
	      max_order = max(max_order,expon(spectr,1,n_terms(spectr))+
     >				expon(spectr,2,n_terms(spectr)) +
     >				expon(spectr,3,n_terms(spectr)) +
     >				expon(spectr,4,n_terms(spectr)) +
     >		                expon(spectr,5,n_terms(spectr)))
	   enddo
!	   type *,' N_TERMS, MAX_ORDER = ',n_terms(spectr),max_order
	   close (unit=chan)
	   firsttime = .false.
	endif

C Reset COSY sums.

	do i = 1,4
	   sum(i) = 0.
	enddo

C Convert hut quantities to right-handed coordinates, in meters and rad.

*	write (6,*) 'In recon file, and converting hut quantities'
	hut(1) =  xs/100.		!Units: meters
	hut(2) =  dxdzs			!Radians
	hut(3) =  ys/100.		!Meters
	hut(4) =  dydzs			!Radians
	hut(5) = fry/100.		!vert. position at target (cm-->m)
	if (abs(hut(5)).le.1.e-30) hut(5)=1.e-30


C Compute COSY sums.

	do i = 1,n_terms(spectr)
	   term = hut(1)**expon(spectr,1,i)*hut(2)**expon(spectr,2,i)
     >	         * hut(3)**expon(spectr,3,i)*hut(4)**expon(spectr,4,i)
     >		* hut(5)**expon(spectr,5,i)
	   sum(1) = sum(1) + term*coeff(spectr,1,i)
	   sum(2) = sum(2) + term*coeff(spectr,2,i)
	   sum(3) = sum(3) + term*coeff(spectr,3,i)
	   sum(4) = sum(4) + term*coeff(spectr,4,i)
	enddo

C Load output values.

*	write (6,*) 'loading output values in the reconstruct file'
	delta_phi = sum(1)		!radians
	y_tgt	  = sum(2)*100.		!cm
	delta_t   = sum(3)		!radians
	delta_p   = sum(4)*100.		!percent deviation

      return

C ============================ Format Statements ===============================

1001	format(a)
1200	format(1x,4g16.9,1x,5i1)

      END
c function to define accep limits for 
c new way to get acceptance
       subroutine newacc(dpe,dphie,dthe,okhms,
     >               dpp,dphip,dthp,okshms)
       implicit none
       real*8 dpe,dphie,dthe,dpp,dphip,dthp
       real*8 dp,dxp,dyp,ypmin,ypmax,xpmin,xpmax,xp,yp
       real*8  okhms,okshms,ok
c HMS first
       dp = dpe
       yp = dphie * 1000.
       xp = dthe * 1000.

       dxp = 30.
       dyp = 12.5
       ypmin = -24.
       ypmax = 24.
       xpmin = -58.5
       xpmax =  58.6
       if(dp.lt.-6.5) ypmax = 24. + 9.*(dp + 6.5)
       if(dp.gt.9.) ypmax = 24. - 12.*(dp -9.)
       if(dp.gt.9.) ypmin = -24. - 3.*(dp -9.)
       ok = 1
       if(yp.gt.ypmax .or. yp .lt. ypmin) ok=0.
       if(xp.gt.xpmax .or. xp .lt. xpmin) ok=0
       if(yp.gt.ypmax - dyp .and.
     >    yp.lt.ypmax .and. 
     >    (xp .lt. xpmin + dxp*(yp - (ypmax - dyp))/dyp.or.
     >     xp .gt. xpmax - dxp*(yp - (ypmax - dyp))/dyp)) ok=0
       if(yp.gt.ypmin .and.
     >    yp.lt.ypmin +dyp .and. 
     >    (xp .lt. xpmin - dxp*(yp - (ypmin + dyp))/dyp.or.
     >     xp .gt. xpmax + dxp*(yp - (ypmin + dyp))/dyp)) ok=0
       okhms = ok
c but don't use low momentum
       if(dpe.lt.-9) okhms = 0.
       if(dpe.gt.12.) okhms = 0.

c SHMS 
       dp = dpp
       yp = dphip * 1000.
       xp = dthp * 1000.

       dxp = 20.
       dyp = 10.
       if(dp.lt.0.) then
        dxp = dxp * (20.+ dp)/20.
        dyp = dyp * (20.+ dp)/20.
       endif
       ypmin = -24.
       ypmax = 24.
       xpmin = -44.
       xpmax =  44.
       if(dp.gt.1.) xpmin = -44. + 0.5*(dp - 1.)                
       if(dp.gt.1.) xpmax =  44. - 1.3*(dp - 1.)      
       if(dp.lt.-5.) xpmin = -44. - 0.5*(dp - 5.)                
       if(dp.lt.-5.) xpmax =  44. + 0.5*(dp - 5.)      
       if(dp.lt. 0.) ypmax =  24. + 0.5*(dp - 0.)      
       ok = 1
       if(yp.gt.ypmax .or. yp .lt. ypmin) ok=0
       if(xp.gt.xpmax .or. xp .lt. xpmin) ok=0
       if(yp.gt.ypmax - dyp .and.
     >    yp.lt.ypmax .and. 
     >    (xp .lt. xpmin + dxp*(yp - (ypmax - dyp))/dyp.or.
     >     xp .gt. xpmax - dxp*(yp - (ypmax - dyp))/dyp)) ok=0
       if(yp.gt.ypmin .and.
     >    yp.lt.ypmin +dyp .and. 
     >    (xp .lt. xpmin - dxp*(yp - (ypmin + dyp))/dyp.or.
     >     xp .gt. xpmax + dxp*(yp - (ypmin + dyp))/dyp)) ok=0
       okshms = ok
c but don't use low momentum
       if(dpp.lt.-16) okshms = 0.
       if(abs(yp).gt.24. .and. okshms.gt.0)
     >  write(6,'(''okshms'',f3.0,
     >   7f8.2)') okshms,dp,xp,yp,
     >      xpmin + dxp*(yp - (ypmax - dyp))/dyp,
     >      xpmax - dxp*(yp - (ypmax - dyp))/dyp,
     >      xpmin - dxp*(yp - (ypmin + dyp))/dyp,
     >      xpmax + dxp*(yp - (ypmin + dyp))/dyp  
       return
       end

c this uses sum total of all good counts, accidentals, and
c predicted SIMC counts for z<0.7 SIDIS runs from 2018-29
c to get an acceptance correction for each spectrometer,
c which should be applied as a correction to the SIMC weights
c if the corr is zero, data events should not be counted either
c 
      subroutine acccorr(dpe,dphie,dthe,
     >               dpp,dphip,dthp,corr)

      implicit none
      integer j1,j2,j3,isp,irr
       real*8 dpe,dphie,dthe,dpp,dphip,dthp
       real*8 dthhmsmin,dthshmsmin,dphihmsmin,dphishmsmin
       real*8 dthhmsmax,dthshmsmax,dphihmsmax,dphishmsmax
       real*8 dphmslo,dphmshi,dpshmslo,dpshmshi
       real*8 corr1, corr2, corr, v1, v2, v4
       real*8 acctot(2,24,20,20,4)
       logical first/.true./

c table was generated by pta.f using the files made with
c wide acceptance limits by ptc.f and stored in 
c /group/c-sidis/bosted/CntfilesA_noacccuts/Cntdata1234.....
c the overall normalization for this set is 1.077
c the total number of good events used is 16 million
      if(first) then
       open(unit=22,file='ptaacc_final.txt')
       do isp=1,2
        do j1=1,24
         do j2=1,20
          do j3=1,20
           read(22,'(12x,4f8.0)') 
     >      (acctot(isp,j1,j2,j3,irr),irr=1,4)
          enddo
         enddo
        enddo
       enddo
       first = .false.
c these were used to make the file
        dphmslo =  -11.
        dphmshi =  13.
        dpshmslo = -20
        dpshmshi =  28.
        dthhmsmax = 0.065 
        dthhmsmin = -0.065
        dphihmsmax = 0.030
        dphihmsmin = -1.*dphihmsmax
        dthshmsmax = 0.055
        dthshmsmin = -0.055
        dphishmsmax = 0.030
        dphishmsmin = -1.* dphishmsmax
      endif

c HMS
      isp=1
      corr1=0.
      J1=int(24.*(dpe-  dphmslo)/(  dphmshi  -dphmslo))+1
      J2=int(20.*(dphie-dphihmsmin)/(dphihmsmax-dphihmsmin))+1
      J3=int(20.*(dthe -dthhmsmin)/( dthhmsmax -dthhmsmin))+1
      if(j1.gt.0 .and. j1.le.24 .and.
     >   j2.gt.0 .and. j2.le.20 .and.
     >   j3.gt.0 .and. j3.le.20) then
       v1 = acctot(isp,j1,j2,j3,1) 
       v2 = acctot(isp,j1,j2,j3,2) 
       v4 = acctot(isp,j1,j2,j3,4) 
       if(v1.gt.50.0.and. v4.gt.50.) then
        corr1 = (v1 - v2/4.) / v4 / 1.077
       endif
      endif
!SHMS
      isp=2
      corr2=0.
      J1=int(24.*(dpp-    dpshmslo)/(  dpshmshi  -dpshmslo))+1
      J2=int(20.*(dphip-dphishmsmin)/(dphishmsmax-dphishmsmin))+1
      J3=int(20.*(dthp - dthshmsmin)/( dthshmsmax -dthshmsmin))+1
      if(j1.gt.0 .and. j1.le.24 .and.
     >   j2.gt.0 .and. j2.le.20 .and.
     >   j3.gt.0 .and. j3.le.20) then
       v1 = acctot(isp,j1,j2,j3,1) 
       v2 = acctot(isp,j1,j2,j3,2) 
       v4 = acctot(isp,j1,j2,j3,4) 
       if(v1.gt.50.0.and. v4.gt.50.) then
        corr2 = (v1 - v2/4.) / v4 / 1.077
       endif
      endif

      corr = corr1 * corr2

      return
      end

       
