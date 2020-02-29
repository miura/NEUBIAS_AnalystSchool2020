
# Dealing with Numbers: Surviving the post *p-values* era

## Author

[Estibaliz Gómez-de-Mariscal](https://image.hggm.es/en/estibaliz-gomez), Biomedical Imaging and Instrumentation Group, Universidad Carlos III de Madrid

## Brief description of the session

The session is divided in two blocks. During the first one we will cover some basic concepts about statistical sampling and measure estimation. 
In the second one, we will move to a more trendy topic and we will try to answer a delicate question (or at least, discuss about it):
 how to survive the post *p-value* era.  

- Block 1: 
  - Errors & Uncertainty
  - Statistical measures to characterize uncertainty 
  - Statistical sampling 
  - Sample size 
  
[Slides of Block 1](NEUBIAS_training_school_dealingwithnumbers.pdf)

- Block 2: Use of the *p-value* as a size-dependent function: model and applications
  - Session based on the preprint: "Confronting p-hacking: addressing p-value dependence on sample size", bioRxiv, doi: https://doi.org/10.1101/2019.12.17.878405 
  
[Slides of Block 2](NEUBIAS_training_school2020.pdf)

## Abstract

The use of the statistical *p-value* as a deterministic index is largely extended in scientific research. Like any other statistical method, it is defined as a quantitative measure to make objective conclusions. 
However, this measure saturates with the size of the data: the common threshold 0.05 is easily reachable whenever the available dataset is large enough or when the right combination of data is subject to the null-hypothesis testing. 
This fact, known as p-hacking, breaks completely with the assumption of statistical p-value being an objective and robust measure. Moreover, it can lead to misleading conclusions being extracted from scientific experiments.

During this part of the school session, we will introduce you to a new method that can provide a solution and serve as a tool whenever a test of statistical significance is required. 
In the first part, we will describe very briefly the idea of modeling the p-value as an exponential function, p(n), which lets us define an innovative methodology for the decision-making process that alleviates the cited issue above. 
Briefly speaking, for a given statistical test and a value of n, p(n) is calculated by using Monte Carlo cross-validation. 
Once the procedure is repeated for several values of n, a decreasing exponential function can be fitted to approximate the function p(n), which converges to zero. 
The faster p(n) converges, the stronger the significance is. The workflow of the method will be explained visually and with some tiny examples so all the audience can understand the idea behind the mathematical details given in [1]. 

In the second part, different examples will be presented to reflect the scope of this approach in common data analysis processes: (1) phase-contrast microscopy videos of breast cancer cells treated with different Taxol dosages; (2) morphology and motility aging changes in human skin cells; and (3) flow cytometry measures of surface expression of human eosinophils after in vivo exposure to glucocorticoids.


## Software Installation

The method has been developed in Python and the entire software can be downloaded from the [pMoSS](https://github.com/BIIG-UC3M/pMoSS) repository. 
There you will find some instructions and videos that show how to run the code with the example data and how to use this method with your data. 


## Resources
[pMoSS: *p-value* Model using the Sample Size](https://github.com/BIIG-UC3M/pMoSS)

## References

[1] E. Gómez-de-Mariscal, A. Sneider, H. Jayatilaka, J. M. Phillip, D. Wirtz and A. Muñoz-Barrutia, Confronting p-hacking: addressing p-value dependence on sample size, bioRxiv 2019, https://doi.org/10.1101/2019.12.17.878405 

##  Recommended bibliography
- J. P. A. Ioannidis, Why Most Published Research Findings Are False, PLOS Medicine, https://doi.org/10.1371/journal.pmed.0020124

- Claus O. Wilke, Fundamentals of Data Visualization, https://serialmentor.com/dataviz/index.html

- Statistics for Biologists, Nature Methods, https://www.nature.com/collections/qghhqm

- Points of significance, Nature Methods, https://www.nature.com/collections/qghhqm/pointsofsignificance
