# Bioimage Analysis Workflows

Bordeaux, France, 2020

Selected workflows for presentation, initially submitted for the school application. 

## Quantifying the orientation of a muscle fiber network

**Noreen Walker, PhD**  
[Scientific Computing Facility, MPI-CBG, Dresden, Germany](https://www.mpi-cbg.de/services-facilities/core-facilities/scientific-computing-facility/service-portfolio-overview/)

### Collections and Components 

Collection: Fiji (Jython), Python

Components Used: TBA

### Workflow Outline

The project aim was to analyze the orientation of a muscle fiber network along the surface of planarian flatworms which were acquired as 3d stack. The fiber network is structured into different thin layers which should be extracted separately.

I will present a pipeline developed in ImageJ (jython) that combines multiple existing plugins with custom algorithms. The workflow covers bleaching correction, tile stitching, extraction and projection of a 2d surface from the 3d stacks, alignment and intensity-based orientation analysis. The pipeline design is modular so that each of the substeps can be run individually. For downstream analysis of the orientation histograms I created a python jupyter notebook.

## Easy to use automatic analysis of synaptic vesicle dynamics

**Christopher Schmied**

[Bioimage Analyst - Cellular Imaging Core Facility, Berlin, Germany](https://www.leibniz-fmp.de/core-facilities/cellular-imaging/lehmann/research.html)

Synapto-pHluorin is a marker that allows the measurement of synaptic vesicle release and recycling in neurons. The user acquires a time-lapse of neurons in which synaptic vesicles are tagged with synapto-pHluorin. Electro-stimulation induces the release of vesicles  leading to a bright fluorescence of the marker, which is subsequently quenched during their re-uptake. 

Previously quantification of this dynamic required manual segmentation performed by identifying small areas of increased intensity in a large field of view. An automatic segmentation of the noise and background rich images was hampered by varying imaging conditions for different experimental sets, requiring painstaking optimization of many different segmentation parameters.

I have written an ImageJ plugin that allows an easy and interactive adjustment of the different parameters for the automatic segmentation. Segmentation is performed using a marker controlled watershed and the fluorescent traces are measured over the length of the movie. I further automated the analysis and visualization of the extracted traces using R providing the analysis as an interactive R shiny server. 

Link to plugin: https://github.com/schmiedc/pHluorinJ

### Collections and Components 

Collection: ImageJ, Fiji, MorphoLibJ, R, shiny 

Components Used: Marker controlled watershed, 
laplacian of gaussian,
morphological gradients
