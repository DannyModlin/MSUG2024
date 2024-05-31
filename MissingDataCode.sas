data sasuser.miss_birth;
  input low mother_age mother_wt socio alcohol 
        prev_pretrm hist_hyp uterine_irr phy_visit;
  label low='Indicator for Birth Weight'
        mother_age='Mother''s age'
        mother_wt='Weight at Last Menstrual Period'
        socio='Socio-Economic Status'
        alcohol='Did the mother drink during pregnancy?'
        hist_hyp='History of Hypertension'
        prev_pretrm='Previous Preterm Labors'
        uterine_irr='Uterine Irritability'
        phy_visit='Physician Visit in 1st Trimester';
cards;
 1 28  120  2  1  1  0  1  0
 1 29  130  3  0  0  0  1  1
 1 34  .    1  1  0  1  0  0
 1 25  105  2  0  1  1  0  0
 1 25   85  2  0  0  0  1  0
 1 27  .    2  .  0  0  0  0
 1 23   97  2  0  0  0  1  1
 1 24  128  1  0  1  0  0  1
 1 24  .    2  0  0  1  0  0
 1 21  165  3  .  0  1  0  1
 1 32  105  3  1  0  0  0  0
 1 19   91  3  1  1  0  1  0
 1 25  115  2  0  0  0  0  0
 1 16  .    2  0  0  0  0  1
 1 25   92  3  1  0  0  0  0
 1 20  150  3  1  0  0  0  1
 1 21  .    1  .  0  0  1  1
 1 24  155  3  1  1  0  0  0
 1 21  103  2  0  0  0  0  0
 1 20  125  2  0  0  0  1  0
 1 25   89  2  0  1  0  0  1
 1 19  102  3  .  0  0  0  1
 1 19  .    3  1  0  0  1  0
 1 26  117  3  1  1  0  0  0
 1 24  138  3  0  0  0  0  0
 1 17  130  2  1  1  0  1  0
 1 20  120  1  1  0  0  0  1
 1 22  .    3  .  1  0  1  1
 1 27  130  1  0  0  0  1  0
 1 20   80  2  1  0  0  1  0
 1 17  110  3  1  0  0  0  0
 1 25  105  2  0  1  0  0  1
 1 20  .    2  0  0  0  0  0
 1 18  148  2  0  0  0  0  0
 1 18  110  1  1  1  0  0  0
 1 20  121  3  1  1  0  1  0
 1 21  100  2  .  1  0  0  1
 1 26   96  2  0  0  0  0  0
 1 31  102  3  1  1  0  0  1
 1 15  110  3  0  0  0  0  0
 1 23  187  1  1  0  0  0  1
 1 20  .    1  1  0  0  0  0
 1 24  105  1  1  0  0  0  0
 1 15  115  2  0  0  0  1  0
 1 23  120  2  0  0  0  0  0
 1 30  142  3  .  1  0  0  0
 1 22  130  3  1  0  0  0  1
 1 17  120  3  1  0  0  0  1
 1 23  110  3  1  1  0  0  0
 1 17  .    1  0  0  0  0  1
 1 26  154  2  0  1  1  0  1
 1 20  105  2  .  0  0  0  1
 1 26  190  3  1  0  0  0  0
 1 14  101  2  1  1  0  0  0
 1 28   95  3  1  0  0  0  1
 1 14  100  2  0  0  0  0  1
 1 23   94  2  1  0  0  0  0
 1 17  .    1  .  0  1  0  0
 1 21  130  3  1  0  1  0  1
 0 19  182  1  0  0  0  1  0
 0 33  155  2  0  0  0  0  1
 0 20  105  3  1  0  0  0  1
 0 21  108  3  .  0  0  1  1
 0 18  107  3  1  0  0  1  0
 0 21  .    2  0  0  0  0  0
 0 22  118  3  0  0  0  0  1
 0 17  103  2  0  0  0  0  1
 0 29  123  3  1  0  0  0  1
 0 26  113  3  .  0  0  0  0
 0 19   95  2  0  0  0  0  0
 0 19  150  2  0  0  0  0  1
 0 22   95  2  0  0  1  0  0
 0 30  107  2  0  1  0  1  1
 0 18  100  3  1  0  0  0  0
 0 18  .    3  1  0  0  0  0
 0 15   95  1  .  0  0  0  0
 0 25  118  3  1  0  0  0  1
 0 20  120  2  0  0  0  1  0
 0 28  120  3  1  0  0  0  1
 0 32  121  2  0  0  0  0  1
 0 31  100  3  0  0  0  1  1
 0 36  .    3  .  0  0  0  1
 0 28  120  2  0  0  0  0  0
 0 25  120  2  0  0  0  1  1
 0 28  167  3  0  0  0  0  0
 0 17  122  3  1  0  0  0  0
 0 29  150  3  0  0  0  0  1
 0 26  168  1  .  0  0  0  0
 0 17  113  1  0  0  0  0  1
 0 17  113  1  0  0  0  0  1
 0 24   90  3  1  1  0  0  1
 0 35  121  1  .  1  0  0  1
 0 25  .    3  0  0  0  0  1
 0 25  125  1  0  0  0  0  0
 0 29  140  3  1  0  0  0  1
 0 19  138  3  1  0  0  0  1
 0 27  124  3  1  0  0  0  0
 0 31  215  3  1  0  0  0  1
 0 33  109  3  1  0  0  0  1
 0 21  185  1  1  0  0  0  1
 0 19  189  3  0  0  0  0  1
 0 23  .    1  0  0  0  0  1
 0 21  160  3  .  0  0  0  0
 0 18   90  3  1  0  0  1  0
 0 18   90  3  1  0  0  1  0
 0 32  132  3  0  0  0  0  1
 0 19  132  2  0  0  0  0  0
 0 24  115  3  0  0  0  0  1
 0 22   95  2  1  0  0  0  0
 0 22  120  3  .  0  1  0  1
 0 23  .    2  0  0  0  0  0
 0 22  130  3  1  0  0  0  0
 0 30   95  3  1  0  0  0  1
 0 19  115  2  0  0  0  0  0
 0 16  110  2  0  0  0  0  0
 0 21  110  2  1  0  0  1  0
 0 30  153  2  0  0  0  0  0
 0 20  .    2  0  0  0  0  0
 0 17  119  2  0  0  0  0  0
 0 17  119  2  .  0  0  0  0
 0 23  119  2  0  0  0  0  1
 0 24  110  2  0  0  0  0  0
 0 28  140  3  0  0  0  0  0
 0 26  133  2  1  1  0  0  0
 0 20  169  2  0  1  0  1  1
 0 24  .    2  0  0  0  0  1
 0 28  250  2  1  0  0  0  1
 0 20  141  3  0  1  0  1  1
 0 22  158  1  .  1  0  0  1
 0 22  112  3  1  1  0  0  0
 0 31  150  2  1  0  0  0  1
 0 23  115  2  1  0  0  0  1
 0 16  112  1  0  0  0  0  0
 0 16  135  3  1  0  0  0  0
 0 18  229  1  0  0  0  0  0
 0 25  140  3  0  0  0  0  1
 0 32  134  3  .  1  0  0  1
 0 20  .    1  1  0  0  0  0
 0 23  190  3  0  0  0  0  0
 0 22  131  3  0  0  0  0  1
 0 32  170  3  0  0  0  0  0
 0 30  110  2  0  0  0  0  0
 0 20  127  2  0  0  0  0  0
 0 23  123  2  .  0  0  0  0
 0 17  120  2  1  0  0  0  0
 0 19  105  2  0  0  0  0  0
 0 23  130  3  0  0  0  0  0
 0 36  175  3  0  0  0  0  0
 0 22  .    3  0  0  0  0  1
 0 24  133  3  0  0  0  0  0
 0 21  134  2  0  0  0  0  1
 0 19  235  3  .  0  1  0  0
 0 25   95  3  1  1  0  1  0
 0 16  135  3  1  0  0  0  0
 0 29  135  3  0  0  0  0  1
 0 29  154  3  0  0  0  0  1
 0 19  147  3  1  0  0  0  0
 0 19  147  3  .  0  0  0  0
 0 30  137  3  0  0  0  0  1
 0 24  110  3  0  0  0  0  1
 0 19  184  3  1  0  1  0  0
 0 24  110  2  0  1  0  0  0
 0 23  110  3  0  0  0  0  1
 0 20  120  2  0  0  0  0  0
 0 25  .    1  .  0  1  0  0
 0 30  112  3  0  0  0  0  1
 0 22  169  3  0  0  0  0  0
 0 18  120  3  1  0  0  0  1
 0 16  170  1  0  0  0  0  1
 0 32  186  3  0  0  0  0  1
 0 18  120  2  0  0  0  0  1
 0 29  .    3  1  0  0  0  1
 0 33  117  3  0  0  0  1  1
 0 20  170  3  1  0  0  0  0
 0 28  134  2  0  0  0  0  1
 0 14  135  3  .  0  0  0  0
 0 28  130  2  0  0  0  0  0
 0 25  120  3  0  0  0  0  1
 0 16   95  2  0  0  0  0  1
 0 20  158  3  0  0  0  0  1
 0 26  160  2  0  0  0  0  0
 0 21  115  3  0  0  0  0  1
 0 22  .    3  0  0  0  0  0
 0 25  130  3  0  0  0  0  1
 0 31  120  3  .  0  0  0  1
 0 35  170  3  0  1  0  0  1
 0 19  120  3  1  0  0  0  0
 0 24  116  3  0  0  0  0  1
 0 45  123  3  0  0  0  0  1
;
run;

proc means data=sasuser.miss_birth nmiss;
   var low mother_wt alcohol prev_pretrm hist_hyp;
   title 'Variables with Missing Values';
run;

data miss_birth;
   set sasuser.miss_birth;
   if mother_wt = . then m_weight=1;
      else m_weight=0;
   if alcohol = . then m_alcohol = 1;
      else m_alcohol = 0;
run;

proc freq data=miss_birth;
   tables m_weight*m_alcohol;
   title 'Variables with Missing Values';
run;

ods select histogram;
proc univariate data=sasuser.miss_birth;
   var mother_wt;
   histogram mother_wt / lognormal;
run;

ods select histogram;
proc univariate data=sasuser.miss_birth;
   var alcohol;
   histogram alcohol / midpoints=0 1;
run;

proc mcmc data=sasuser.miss_birth outpost=missbirthout diag=all   
     propcov=quanew nbi=10000 ntu=5000 nmc=300000 thin=10 
     mchistory=brief plots(smooth)=all seed=27513 statistics=all;
   parms (gamma0 gamma1 gamma2) 0;
   parms (alpha0 alpha1 alpha2 alpha3) 0;
   parms (beta0 beta1 beta2 beta3 beta4) 0;
   parms sigma2 1;
   prior gamma: alpha: beta: ~ normal(0, var=100);
   prior sigma2 ~igamma(shape=2.001, scale=1.001);
   p1 = logistic(gamma0 + gamma1*hist_hyp + gamma2*prev_pretrm);
   model alcohol ~ binary(p1) monitor=(1 2 10);
   mu = alpha0 + alpha1*alcohol + alpha2*hist_hyp + alpha3*prev_pretrm;
   model mother_wt ~ lognormal(mu,var=sigma2) monitor=(random (3));
   p = logistic(beta0 + beta1*alcohol + beta2*hist_hyp + 
                beta3*mother_wt + beta4*prev_pretrm);
   model low ~ binary(p);
   title "Bayesian Analysis of Low Birth Weight Data";
run;

data mweight (keep= mother_wt_miss);
   set missbirthout;
   array weights{*} mother_wt_:;
   do i=1 to dim(weights);
      mother_wt_miss=weights(i);
      output;
   end;
run;

ods select histogram;
proc univariate data=mweight;
   var mother_wt_miss;
   histogram mother_wt_miss / lognormal;
run;

data malcohol (keep= alcohol_miss);
   set missbirthout;
   array alcohols{*} alcohol_:;
   do i=1 to dim(alcohols);
      alcohol_miss=alcohols(i);
      output;
   end;
run;

ods select histogram;
proc univariate data=malcohol;
   var alcohol_miss;
   histogram alcohol_miss / midpoints= 0 1;
run;

