# COVID-19
Maryland COVID-19 Group Project. Other team members are: Hala Algrain, Rohini Salla and Eric Kelly.

## Data Source & Methodology
The data used in this study came from the COVID Tracking Project, which is a volunteer organization launched from The Atlantic and dedicated to collecting and publishing data tracking COVID-19 outbreak throughout the United States. Data on COVID-19 testing and patient outcomes from all 50 states, 5 territories, and the District of Columbia were collected on a daily basis. Most of the data compiled were taken directly from the websites of local or state/territory public health authorities. In a case where data were missing from these websites, the missing information was supplemented with available numbers from official press conferences with governors or public health authorities. The website contains data from March 14 to date. For the purpose of this study, we limited our scope to Maryland, by examining reported data from March 14 through October 20. The dataset contained the following columns:

date, state, positive, positiveIncrease, positiveCasesViral, negative, negativeTestsViral, pending, positiveTestsViral, totalTestsPeopleViral, totalTestsViral, totalTestEncountersViral, negativeTestsPeopleAntibody, negativeTestsAntibody, positiveTestsPeopleAntibody, positiveTestsAntibody, positiveTestsPeopleAntigen,  positiveTestsAntigen,  totalTestsPeopleAntigen, totalTestsAntigen, hospitalizedCumulative, inIcuCumulative, onVentilatorCumulative, hospitalizedIncrease, death, deathConfirmed, deathProbble, deathIncrease, recovered, dataQualityGrade.

See appendix B for more description  of each variable. Furthermore, for the purpose of this study, we considered only certain variables that were found important after performing some basic data wrangling (cleansing) as seen in the results. 
We used R-Studio (Version 1.3.1073) as the integrated development environment for statistical computation, analysis, and visualization of our data. 
The reference periods we tried for estimating the effects of lockdown mandastes was available data prior to March 16, 2020 when we had the first mandate that called for public schools to close. Also, the time frame between each mandate served as some reference to preceding the preceding executive mandates that were signed since many mandates were ordered at different times. We examined how effects change over  the following  dates :

March 16, 2020: Schools closed, executive order closes public places

March 23, 2020: Hogan ordered nonessential businesses to close

March 30, 2020: Governor issued stay-home order

April 15, 2020: Hogan signed face-mask order

May 13, 2020: Hogan announced Stage One of reopening (effective 15 May)

July 29, 2020: Hogan expanded mask order, issues out-of-state travel advisory

Aug. 27, 2020: All schools authorized to reopen, Hogan says

Sept. 1, 2020: Maryland  entered  Stage Three of recovery plan.

Sept 21: The governor announced restaurants could expand indoor capacity from 50% to 75% beginning at 5 p.m. 

DATA SET: https://covidtracking.com/data/download

DATA DEFINITIONS: https://covidtracking.com/about-data/data-definitions 
 
