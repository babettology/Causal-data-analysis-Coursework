# Causal-data-analysis-Coursework

# Part A

Q1a.i.
![t1_page-0001](https://github.com/user-attachments/assets/8b5bcd2a-c30c-4557-9bae-5b121f716180)



From Table 1, the first-stage regression presents a negative relationship between the log of the distance from the Turkish coastline and the likelihood of a municipality receiving immigrants. Specifically, the estimated coefficient for log(distance) is -0.249, which is statistically significant (p<0.01). This implies that for every 1% increase in the distance of a municipality from the Turkish coastline, the probability of a municipality receiving immigrants decreases by 0.0025 percentage points, or one-quarter of a percentage point. R-square value is high, where 81.6% of the variance is explained by the model, suggesting high explanatory power.  

ii.  
![T2_page-0001](https://github.com/user-attachments/assets/72dd7737-13fd-45d4-b6cb-f477534c738e)

In table 2, F-statistic is 152.59 and statistically significant (p<0.01). 

iii. Considering previous results, the first-stage regression shows a significant negative relationship between logdistance and the likelihood of receiving immigrants, with an R² of 0.816, indicating substantial explanatory power. Additionally, Wald-tests produces a well above 10 threshold F-statistic, confirming the instrument’s strength and fit. 

b.i. The randomisation assumption implies that the distance of Greek islands from the Turkish coast can be treated as randomly assigned when considering the islands pre-treatment characteristics. This ensures that geographical variations are unrelated to other factors that might influence hostility towards immigrants. 

ii. The exclusion restriction assumptions entails that the distance from Turkish coastlines affects hostility towards immigrants only through its impact on the likelihood of receiving immigrants, our treatment. The assumption is somewhat plausible as these coastlines are the natural first points of arrival for immigrants yet other factors such as historical ties or local’s demographics may influence hostility. 

c. 
Table 3 : IV regression results for hostility toward asylum seekers and immigrants
![t3_page-0001](https://github.com/user-attachments/assets/ac7f4bed-e151-4647-bb30-8268c4a4274b)

As seen on table 3, the treatment coefficients indicate that hosting immigrants increases hostility toward asylum seekers by 0.218 units and hostility toward immigrants by 0.212 units on the PCA-derived scale. While these increases are small, they indicate more negative attitudes when immigrants are hosted. The models are clustered by municipalities, with standard errors of 0.066 (model 1) and 0.084 (model 2), reflecting relatively precise estimates. However, despite statistical significance, the model explains only 1.4% of the variance, suggesting that other factors influence hostility toward these groups.

d.i. Compliers are municipalities that always receive immigrants only if there are within 40 km of the Turkish coats, and never if there are further away. The always takers are municipalities that always receive immigrants regardless of distance.  

ii&iii, 
![t4_page-0001](https://github.com/user-attachments/assets/0335f9f1-2297-4f83-8157-45c798144d9c)

The proportion of compliers is 0.93, while the intent to treat is 0.22. The CACE of receiving immigrants towards asylum seekers is 0.24. 

iv. 
![t5_page-0001](https://github.com/user-attachments/assets/cc91fd75-7d37-4937-bc4c-996e887503a0)

The p-value of 4.69e-07 indicates a highly significant causal effect of receiving immigrants on hostility toward asylum seekers, were on average compliant municipalities, experienced a 0.24 unit increase in hostility.

Q2 a. An RDD estimates the causal effect of sheriff partisanship on enforcement rates due to the 50% cutoff in vote share. This sharp RDD uses the threshold to assign treatment (Democrat sheriff) as-if random, with counties just above and below the cutoff have similar potential outcome except election results, ensuring that any differences can be attributed to the sheriff's partisanship. This likely superior to mean comparison as results would likely suffer from selection bias, where counties may differ in ways unrelated to partisanship that affect enforcement rates. 

b. Firstly, composite treatment violation could occur if other policy changes occurred at the threshold independently of the treatment. This is unlikely as there are no significant concurrent policy changes directly linked to the electoral threshold. 
Secondly, sorting around the threshold would violate randomisation, as some sheriffs vote share would have different potential outcomes than those not manipulated. This violation is the case of fraud election, where some sheriffs would be pushed it across or below the threshold making them no longer comparable to control. To assess this, we perform a McCray density test. 

![f1_page-0001](https://github.com/user-attachments/assets/5e1f01f0-bd19-4fcb-8c45-7a62cc99b87a)

The plot shows no significant difference before and after the threshold (p>0.05), suggesting minimal evidence of running variable manipulation.

c).  The sharp RD estimates a LATE of -0.064, suggesting Democratic sheriff leadership corresponds to a 6.4 percentage point decrease in ICE detention request enforcement rates at the electoral threshold. However, this effect is not statistically significant (p = 0.196) which prevents us from making a definitive conclusion about the relationship between sheriff partisanship and enforcement rate. 

d) 
![F2_page-0001](https://github.com/user-attachments/assets/28ee3584-b03d-42db-be21-e08e61bf2dc2)
	
From Table 7, the RD coefficients, standard error and confidence intervals (95%) decrease from bandwidth of 2 to bandwidth of 10.  This suggests that there is more variance when there is a smaller number of observations, suggesting that narrower bandwidths produce larger but less precise estimates. Yet, none of the p-values are statistically significant suggesting no evidence in ICE request enforcement based on sheriff partisanship.

e)   
![t8_page-0001](https://github.com/user-attachments/assets/47a35534-2033-4e10-baf6-11f5f93f049f)

From Table 6, shows a fixed effects model controls for time-invariant characteristics. The model coefficient of -0.017 suggests that on average the election of a democratic sheriff correlates with a 1.7 percentage point decrease in the enforcement of ICE enforcement compared to Republican sheriffs within the same county. While this suggests a negative relationship, the result is not statistically significant (p-value = 0.612), meaning that we lack sufficient evidence to conclude that sheriff partisanship impacts detention enforcement.

f)   RDD offers a robust causal estimate by leveraging the election sharp cutoff and ensuring high internal validity. However, the local treatment is limited to counties near the cutoff, which may systematically differ from others, especially given U.S. political polarisation. 
On the other hand, FE models control for time-invariant county traits, isolating how changes in sheriff partisanship affect ICE enforcement within counties, and controlling for time-varying confounders, by adjusts for any external factors (such as nation-wide mass deportations) that could affect all counties in the same year. Nonetheless, FE models depend on sufficient within-county variation in sheriff partisanship, possibly limited given US generally stable political affiliations, lowering the presence of meaningful enforcement changes. 
Overall, since both methods yield non-significant results, RDD is better for strict local effect estimates. However given the context of the study, the FE approach seem more convincing to get an understanding of broader patterns in sheriff partisanship across counties and its effects on ICE enforcement. 



# Part B


In democratic systems, criminal convictions should generally cause irreparable damage to a party’s reputation, yet recent events within French parties at the European parliament seem to challenge this assumption. In 2024, both France's far-right Rassemblement National (RN) and centrist Democrates Moderés (Modem) were convicted of substantial EU fund embezzlement (€1.3million and €300.000 respectively), providing a unique opportunity to explore this paradox. Despite facing similar charges and both denying wrongdoing, their different ideologies may lead to contrasting public responses.
     This study investigates whether populist parties can better withstand or even benefit from their own embezzlement convictions compared to mainstream parties. The relevance of this study lies in its use of real events rather than hypothetical scenarios, minimising research biases commonly found in previous studies. Additionally, by focusing on the magnitude of public responses, the research aims to provide nuanced insights into how political scandals shape public perceptions of different parties. 

Causal questions
Q1: Do embezzlement convictions affect the perceived popularity of European political parties? 
Q2: Are populist and centrist European parties affected differently? 
Q3: If so, what characteristics drive these changes? 

## Methodology
This study uses an in-person randomised controlled trial across Germany, Italy, Sweden, and Hungary to ensure a diverse geographical sample within the EU. These countries were selected to control for bias from local media coverage while providing different political contexts, with exposure to prominent local populist European parties. France was excluded to avoid bias from participants' prior knowledge of on RN and Modem. By choosing countries with less direct exposure to the parties, we minimise bias and ensure that the impact of the embezzlement convictions is not influenced by pre-existing attitudes or media coverage specific to France. 

RCT was chosen as it ensures consistent treatment exposure, minimises confounders, and attributes observed differences to treatment. Additionally, the in-person format enables clarification and higher engagement with reduced attrition. While a natural a natural experiment may seem feasible with real-world situations, there is substantial risks of confounding variables, media heterogeneity, and selection bias, which could undermine the findings validity. 

## Operalisaton of variables  
### Baseline covariates
Our baseline covariates include age, gender, country, education, populist voting patterns and trust in the EU. We hypothesise that individuals with prior or intended votes for EU populist parties will respond differently from those who do not. To capture this, we include a dummy variable whether respondents declare they have voted (or would vote) for any party listed by The PopuList   that are encoded as 1 for populist. 
We also hypothesise that trust in the EU as a multidimensional concept influences popularity perceptions and will be measured using four Likert-scale questions and combined into a composite measure through PCA. (See table 9)

## Treatments

### Control: 
Participants are exposed to brief description of RN and Modem 2016 manifestos (when both were in EU parliament) as European parties. The materials should be brief and informative. 
All treatment receives the control materials. 

### Treatment 1: 
Participants are exposed to article on RN conviction , detailing extent of the fraud and final court decision. A short video is then played of Marine LePen denying the accusations with English subtitles. 

### Treatment 2: 
Participants are exposed to article on the Modem conviction , detailing extent of the fraud and final court decision. A short video if then played of Francois Bayrou denying the accusations with English subtitles. 

### Placebo: 
Participants read text highlighting Modem and RN's shared support for preserving agricultural subsidies. This information is factual and unrelated to the fraud scandals involving both parties.

### Outcome 
Our outcome is measured by respondents RN and Modem perceived popularity through Likert-scale questions and into a composite measure via PCA. We focus on perceived popularity as it offers a broader understanding of public sentiment, where people may view parties positively without intending to vote for them, revealing nuances that voting intention alone would miss.
 
 
## Recruitment and Randomisation
### First Stage
Participants will be recruited via an online survey, using the MTurk platform with geographical filters and use SurveyMonkey IP blocking feature to ensure location-specific participants responses. 
The survey will be described as measuring opinions and popularity on diverse European parties. 

After reading the consent and ethics form, participants will answer for our baseline covariates. A question about awareness of RN and/or MoDem fraud convictions will serve as an exclusion criterion, embedded among unrelated items to reduce bias. Upon completion, participants will be informed they qualify for a lottery for follow-up group discussions. 
A €20 Amazon gift card will be offered for completing the first stage, and a €100 gift card for completing the second stage to encourage participation, retention and compliance.
Participants who meet the pre-treatment exclusion criteria will be invited to the second stage with a unique ID and password for a video conference call, on a weekend afternoon for convenience and limit non-compliance with passwords. 

Including baseline covariates helps understand participants' characteristics and enables effective block randomisation in the next phase. Additionally, the clear remuneration structure and transparency reduce the risk of deception, as participants are aware that not everyone will be selected for further stages.

### Block Randomisation 
We assume that age, populist vote and trust in the EU could be predictive of the outcome and therefore block randomise with them. Age will be categorised into four discrete groups, populist vote into two groups, whilst trust in the EU will be divided into three tertiles (low, medium, high), yielding 24 randomised blocks. Any imbalances will be addressed by merging smaller blocks where necessary. 
Given the multiple randomisation blocks and two-stage survey, the sample size is expected to be relatively small, which enables manageable video conferences sessions but need for careful monitoring. 

### Second Stage
Eligible Stage 1 respondents will be block-randomised and then randomly assigned to one of four groups (T1, T2, Placebo, Control). Balance tests with t-tests will be performed to ensure no significant differences in the baseline covariates across groups. 
To enter their respective video conferences, respondent’s ender their unique ID and password, read the control brief, and if applicable, the assigned treatment material. Participants will then complete a short post-survey questionnaire starting with an attention check ensuring compliance for comprehension and the right group assignment as well as popularity perception questions for both RN and Modem. In each video conference rooms, an administrator will be present to address questions, ensure understanding, and report on a unique ID respondents’ wrong allocation or prematurely leaving. The possibility of answering the survey finishes simultaneously for all groups, preventing communication issues, lasting no more than 20 minutes for respondent retention. 

## Statistical Analysis 
### Estimate regression 
To ensure the validity of our results, we will use intention-to-treat analysis, ensuring that all participants regardless of their level of compliance with the treatment, are included in the final analysis. Given the sensibility of the study and logistical technicalities, ITT preserves the integrity of randomisation while accounting for potential attrition and non-compliance. We account for missing data with mean imputation.

We then rely on an estimate linear regression model.
![lm1_page-0001](https://github.com/user-attachments/assets/f485187f-ae0f-4494-b8aa-8b1bf62c216a)


The coefficients β1, β2, β3 represent the difference in perceived popularity for RN, Modem, and Placebo respectively, compared to the control group. This single model allows direct comparison of RN and Modem convictions while accounting for baseline covariates and error terms, minimising bias. We should check for statistical significance treatment effect coefficient using hypothesis tests, allowing us to reject the null hypothesis. 
Additionally, we should validate our placebo to ensure treatment effect validity, by performing a t-test where β3 is statistically indistinguishable from control. If β3 is not significant, changes in perceived party popularity can be attributed to treatments, otherwise potential biases may compromise causal inference.

## Comparing effects 
Once we have estimated β1 and β2, we compare the effects to determine whether treatment affect popularity more than the other. We perform a t-test to assess whether the difference between the two coefficients is statistically significant. 
We then look at the sign of both coefficients which will give an insight of the direction of the effect. Finally, we should quantify the extent to which RN and Modem are differently impacted by the fraud convictions, with a measure for popularity score of one party, relative to the other. 

## Subgroup Analysis. 
We hypothesise that there will be heterogeity in treatment effect, particularly regarding trust in the EU and whether or not respondent would vote have voted for European populist parties. 
To conduct the subgroup analysis, we will introduce interaction terms between the treatment variables and the subgroup categories in our regression models.
In that case, we re-estimate β1 and β2 to assess how convictions affect party popularity, moderated by trust in the EU and prior voting behavior, and whether treatment effects differ across subgroups.

## Expected results
We expect both RN and Modem to show differences in perceived popularity compared to the control group in the ITT analysis. However, by comparing the coefficients, we anticipate that Modem will experience a greater decline in popularity due to the fraud exposure, while RN’s populist rhetoric may allow it to be less affected. Additionally, subgroup analysis will likely reveal that prior voting behavior and trust in the EU moderate these effects, with populist supporters and those with low EU trust potentially showing less negative or even positive reactions to RN's conviction.

## Ethical Consideration 
Ethical considerations are a key concern given the discussion of politically charged topics (fraud, corruption, and populism), which may influence how participants engage and lead them to provide socially desirable responses. To mitigate this, it's essential to protect participant anonymity
We implement strict confidentiality measures, using anonymised IDs and video conference rooms where participants cannot see or hear each other, alongside a commitment to anonymise the data and results. Although the placebo treatment involves discussing factual events transparency remains a priority, and participants will be debriefed post-placebo treatment.

## Limitations 
This study faces several logistical challenges, notably the resource-intensive nature of conducting an in-person RCT across multiple EU countries. It requires substantial funding, coordination, and a relatively large sample of participants, with potential technical issues during video conferences possibly leading to non-compliance.
Additionally, the translation of materials from French and the use of subtitles assumes a certain level of English proficiency, which may discourage full engagement. While comprehension is checked through follow-up questions, some bias may persist, and this must be accounted for in the final interpretations. The binary classification of "populist" votes may also not fully reflect the complexity of voters’ political views, as well as including a possibility that some participants may misreport their voting behaviours.  
Furthermore, monetary incentives may attract individuals with greater financial need, potentially leading to a skewed sample, and should be carefully balanced to avoid influencing participants' decisions to join or continue in the study.
When doing our statistical analysis, the use of intention-to-treat analysis helps minimises bias but underestimate the treatment effect due to non-compliance, as well as including albeit connivant but potentially biased mean imputation for missing data.  Looking at external validity, the results may be limited due to our selection of EU countries where variations in political systems and media landscapes could limit the broader applicability of the findings. While randomisation is used, participants pre-existing political views or exposure to media coverage may influence the treatment effect, potentially diluting the outcomes.


