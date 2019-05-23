# Readme for Project 1
## An Investigation into SAT & ACT Data
---
## Contents
[Project Overview](#Project-Overview)<br/>
[Problem Statement](#Problem-Statement)<br/>
[Executive Summary](#Executive-Summary)<br/>
[Conclusions & Recommendations](#Conclusions-&-Recommendations)<br/>
[Methodology](#Methodology)<br/>
[Analysis](#Analysis)<br/>
[Sources and References](#Sources-and-References)<br/>

---
## Project Overview
We conduct this investigation to solve the problem in our problem statement.

### Problem Statement
>SAT participation rates are behind ACT participation rates in the USA on a state level. Our department has been given funds to increase the participation rate and we need to know where best to invest the fund to increase our participation rates.

Our findings and suggestions are given in our executive statement.

### Executive Summary
In this project, we seek to use SAT and ACT data to determine where to best use funds to increase SAT participation rates.<br/><br/>
Through our research, we have found the following:<br/>
1. There is a strong negative correlation between participation rates and test scores. However, this is likely due to the student demographic taking the tests and we cannot use this correlation to improve our participation rates.
2. There is a strong negative correlation between SAT and ACT participation rates. However, as we are unable to control ACT participation rates, we are unable to utilize this correlation to improve our participation rates.
3. There is a slight correlation between participation rates and whether the candidates have taken the PSATs before. We will be able to utilize this correlation with further study to ensure the PSAT's efficacy.<br/>

We conclude from our data analysis that only promoting the PSAT seems to be a viable use of funds based on the data. Aside from promoting the PSATs, the College Board should continue with its current efforts in pushing for statewide assessment contracts, promoting its 'SAT School Day' initiative, and provide value-added services to potential candidates.

-----------------------------------------------------------------------------------------------------------

### Conclusions & Recommendations
Our recommendation would be for the College Board to continue with their successful efforts in the following avenues: <br/>
- Convincing states that the revamped SATs are best-aligned to the high school curriculum, to get statewide assessment contracts
- Implementing 'SAT School Days' in as many state districts as possible, and
- To provide more value-added services like pairing up with Khan Academy to provide free online review lessons.<br/>

From the data, the most useful recommendation to be given would be for the College Board to promote the PSAT, as the PSAT participation shows a 0.4 positive correlation with SAT participation when students reach grade 11 or 12.

---

## Methodology

### Obtaining Data
Data has been provided for the SAT and ACT score-by-state for 2017. It was left us to obtain the data for 2018. 2018 SAT data is found on their [official site](https://reports.collegeboard.org/sat-suite-program-results/state-results) in the form of PDFs. The subsection below details how the data was extracted from the individual PDF reports. 2018 ACT data was obtained from a combination of the data from [the official source](http://www.act.org/content/dam/act/unsecured/documents/cccr2018/Average-Scores-by-State.pdf) and from the high school blog [magoosh](https://magoosh.com/hs/act/2016/average-act-score-by-state/).

#### PDF text extraction
The PDFs were first converted to text files using the command-line freeware tool **pdftotext.exe** found in our "data/2018 sat" and "data/2017 PSAT" folders. Run the **convert.bat** to automate the conversion of all PDF files within the folder. A Jupyter Notebook file **txt scrape.jpynb** is then used to pull the relevant information from all the text files in the folder.<br/><br/>
The script in the notebook allows you to pull all text files in the folder as a list of strings, extract the names of the states from each element of the string to be stored in a separate list, and search for string values in the element to pull out wanted values to be stored in a separate list.<br/>
When all the required information has been extracted, the script includes codes for cleaning the data by dropping spaces and non-numeric characters. The script then allows you to export all the lists as a combined dataframe to a csv file.<br/>
**Note that the script has been altered for experimental use and requires tweaking to be run usefully.**

---

## Analysis
### Data Import and Cleaning
Our cleaning process took the following steps:
- Faulty data was replaced with original data from the source
- Incorrect datatypes were converted to preferred types
- Columns were renamed
- Unecessary information was dropped
- A master dataframe was created

This process of cleaning is repeated whenever more data needs to be appended to the dataframe.

### Exploratory Data Analysis
Our Data Analysis took the following steps:
- pandas.describe() was used to have a preliminary understanding of the data
- Data was sorted according to highest and lowest participation rates
- Data was sorted according to highest and lowest total scores
- Dataframe masks were applied to identify changes to or from 100% participation rates.
- Dataframe masks were applied to identify states with more than 50% participation on all tests.

### Data Visualization
Our Data Visualization took the following steps:
- A correlation heatmap was created
- Histograms were plotted for participation rates, math scores, and reading/verbal scores
- Scatter plots were made for math, verbal/reading, total, and composite scores
- Boxplots were created for participation rates, SAT subject scores, SAT total scores, and all ACT scores

---

## Findings
- Subject scores have high negative correlation with participation rates
- ACT and SAT participation have high negative correlation
- Subjects within the same group of tests have high positive correlation
- PSAT participation has a positive correlation with future SAT participation

Only PSAT participation is considered as the rest are not independent variables that can be freely altered.

---

### Sources and References

Information and data were obtained from the following sites:
- https://blog.collegevine.com/here-are-the-average-sat-scores-by-state
- https://blog.prepscholar.com/act-scores-by-state-averages-highs-and-lows
- https://reports.collegeboard.org/sat-suite-program-results/state-results
- http://www.act.org/content/dam/act/unsecured/documents/cccr2018/Average-Scores-by-State.pdf
- https://magoosh.com/hs/act/2016/average-act-score-by-state