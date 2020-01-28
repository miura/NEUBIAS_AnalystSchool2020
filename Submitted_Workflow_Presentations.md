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



