Connecting data, analysis, and results using a reproducible framework
========================================================
font-family: 'Helvetica'
date: May 30, 2015
width: 1440

Abstract
========================================================
**As a reference during production, will be removed before the session.**

The issue of reproducibility often comes up in the context of published research and the need to accompany such research with the complete data and analyses, including software/code. However, as statistics educators who teach data analysis, we should be instilling best practices in students before they set out to do research. The tools and techniques presented in the session will enable training of new researchers/practitioners with a scientifically sound and fully reproducible data analysis workflow. While the tool we will feature most prominently is R/RStudio/RMarkdown, we will also open the floor for discussion of other tools participants find valuable for making connections with client disciplines, practicing statisticians, and other professionals who use statistical ideas and methods and ideas for building a reproducible workflows for these tools. The session will feature with team-based activities that highlight the importance of doing data analysis in a reproducible framework. We will also demonstrate the use of tools like R/RStudio/RMarkdown for teaching reproducible data analysis, even at the introductory statistics level, as well as higher-level tools such as GitHub.


Outline
========================================================
type: sub-section

**Fill in at the end**

* a
* b
* c


Materials
========================================================

* Slides at **insert preview link**

* All materials you will need for the exercises in this workshop at **insert bitly link to zipped folder with markdown file and `data` folder with the data files** (please dowload)

* All source code at **insert github link**

* [RMarkdown cheat sheet](http://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf) **Note: Would it be useful to print these out as well?**


Acknowledgements
========================================================

Some of the materials are result of the NSF supported [Reproducible Science Curriculum Hackathon](https://github.com/Reproducible-Science-Curriculum/Reproducible-Science-Hackathon-Dec-08-2014) that was held December 8-11, 2014, at the National Evolutionary Synthesis Center ([NESCent](http://nescent.org/)) in Durham, NC.



Reproduciblity: why should we care?
========================================================
type: sub-section


Seizure study retracted after authors realize data got "terribly mixed"
========================================================

From the authors of **Low Dose Lidocaine for Refractory Seizures in Preterm Neonates**:

*"The article has been retracted at the request of the authors. After carefully re-examining the data presented in the article, they identified that data of two different hospitals got terribly mixed. The published results cannot be reproduced in accordance with scientific and clinical correctness."*

Source: http://retractionwatch.com/2013/02/01/seizure-study-retracted-after-authors-realize-data-got-terribly-mixed/

Bad spreadsheet merge kills depression paper, quick fix resurrects it
========================================================

* The authors of a paper showing a link between immune response and depression requested a retraction after they realized they'd merged two spreadsheets with mismatching ID codes.

* Original conclusion: Lower levels of CSF IL-6 were associated with current depression and with future depression [...].

* Revised conclusion: Higher levels of CSF IL-6 and IL-8 were associated with current depression [...].

Source: http://retractionwatch.com/2014/07/01/bad-spreadsheet-merge-kills-depression-paper-quick-fix-resurrects-it/



Promoting reproducibility
========================================================
type: sub-section


Two-pronged approach
========================================================

\#1 
Convince researchers to adopt a reproducible research workflow

<br><br>

\#2
Train new researchers who don’t have any other workflow

* * *

![two prongs](img/two-pronged-fork.jpg)

<small>
Image: https://cutlerypolishers.files.wordpress.com/2010/09/modern-two-pronged-fork.jpg
</small>



Exercise 1: Motivating reproducibility
========================================================
type: sub-section


Instructions
========================================================

**This slide needs to be shorter or split into two for everything to fit.**

**Part 1:** *Analyze + document*

* Load `data/gapminder-5060.csv` into your statistical analysis package of choice, and complete the following exercise. While doing so make sure to write instructions/documentation for your collaborator to reproduce your work starting with the original dataset.

* **Task:** Visualize the relationship between GDP and life expectancy for countries in Europe in 1952.

* Put a pink sticky on your laptop if you need help, and a green sticky if you're done with this part.

**Part 2:** *Swap + discuss*

* Swap instructions/documentation with your collaborator, and reproduce their work without  additional instructions. If your collaborator doesn't have the software needed to reproduce your work, help them install it or walk them through it on your computer to emulate the experience.

* Then, talk to each other about challenges you faced (or didn't face) or why you were or weren't able to reproduce their work.


Take aways
========================================================

Fill out the form at http://goo.gl/forms/puRtG6klBE.

**Note to Nick: will replace with a easily readable bit.ly link. Let me know if you can think of other software to list on the form.**

* Have you ever tried to reproduce someone else's data analysis before?
* Have you ever tried to reproduce your own work before?
* What made it easy/hard for reproducing your parners' work?
* What would have to happen if you had to extend the analysis further?
* If you caught a data error how easy/hard would it be to re-create the analysis?
* What would happen if your collaborator is no longer available to walk you through their analysis?


A reproducible framework
========================================================
type: sub-section


Four facets
========================================================

* **Documentation:** difference between binary files (e.g. docx) and text, files and why text files are preferred for documentation, use markdown to document your workflow so that anyone can pick up your data and follow what you are doing

* **Organization:** tools to organize your projects so that you don't have a single folder with hundreds of files

* **Automation:** the power of scripting in the R programming language and how you can integrate that into markdown to create automated data analyses

* **Dissemination:** publishing is not the end of your analysis, rather it is a way station towards your future research and the future research of others

Toolkit
========================================================

![R](img/Rlogo-1.png)

* * * 

![RStudio](img/RStudio-Logo-Blue-Gradient.png)

Why R?
========================================================

* Programming language for data analysis
* Free!
* Open source
* Widely used and supported across all disciplines
* Can be used on Windows, Mac OS X, or Linux

* * * 

![RSplashScreen](img/RSplashScreen.png)

Why not language X?
========================================================

* There are a number of other great programming tools out there that can also be used to improve the reproducibility of your analysis

* The key is to use some type of language that will allow you to automate and document your analysis

* Once you master one language you'll probably find it easier to learn another

Why RStudio?
========================================================

* Gives you a single environment to combine your documentation and your analysis with markdown support
* Runs on top of R
* Gives you a bunch of really cool features, some of which we'll explore throughout the workshop

* * * 

![RSplashScreen](img/RStudioSplash.png)

Anatomy of RStudio
========================================================

* Left: Console
    * Every time you launch RStudio, it will have the same text at the top of the console telling you the version of R that you’re running. 
    * Below that information is the prompt. 
    
* Upper right: workspace and a history of the commands that you've previously entered

* Lower right: Any plots that you generate + access to files, help, packages

* * * 

<center>
![RSplashScreen](img/RStudioSplash.png)
</center>



Revisit Exercise 1: now with better tools
========================================================
type: sub-section


Getting started
========================================================

* If you have the latest versions of R and RStudio installed, open `ex1-template.Rmd` in RStudio. If you are using this option, make sure you also have the `knitr` and `ggplot2` packages installed and loaded.

* If not, use the URL and login information provided on the paper slip to log in to RStudio. **Note: I'll have a login for everyone**

Demo
========================================================

[Walkthrough of the `ex1-template.Rmd` document and output]


A brief extension
========================================================



**Task:** Add year 1967 in another color.

* Create a subset of `gap_5060` for Europe in 1952 and 1967:

```r
years = c(1952, 1967)
eu_5267 = subset(gap_5060, continent == "Europe" & (year %in% years))
```

* Create the plot:

```r
ggplot(data = eu_5267, aes(x = gdpPercap, y = lifeExp, colour = as.factor(year))) +
  geom_point()
```



Exercise 2: Extending your analysis
========================================================
type: sub-section


Resources
========================================================

* Open `ex2-template.Rmd`


Instructions
========================================================

It's your lucky day, you just got some additional data.

**Tasks:**

1. Append the new data `gapminder-7080.csv` and `gapminder-90plus.csv` to your existing data set. (Be careful as you do so, as the ordering of columns in the data set may not match between the different CSV files!)

2. Create line plots of life expectancy over time for Canada, Mexico, and the United States that run from 1952 to 2007.

Demo
========================================================

[Walkthrough of the `ex2-template.Rmd` document and output]


Further extensions
========================================================

Create the same plot as before, but now also include data from Cambodia, China, Japan, Egypt, South Africa, Uganda.



Take aways
========================================================

* The analysis is self-documenting

* It's easy to extend or refine analyses by copying and modifying code blocks

* The results of the analysis can be disseminated by sending Markdown and providing data sources, or just simply providing the generated HTML of just a summary of the analysis is needed



Extending the scope
========================================================
type: sub-section

* discuss projects with multiple files, file organization, etc.
* discuss collaboration with others



Reproducibility in the classroom
========================================================
type: sub-section

* in the intro class single markdown file
* in higher level classes can get into tools like GitHub etc., RStudio integration makes it easy

