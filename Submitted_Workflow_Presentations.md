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

### Collections and Components 

Collection: ImageJ, Fiji, MorphoLibJ, R, shiny 

Components Used: Marker controlled watershed, laplacian of gaussian, morphological gradients

### Workflow Outline

Synapto-pHluorin is a marker that allows the measurement of synaptic vesicle release and recycling in neurons. The user acquires a time-lapse of neurons in which synaptic vesicles are tagged with synapto-pHluorin. Electro-stimulation induces the release of vesicles  leading to a bright fluorescence of the marker, which is subsequently quenched during their re-uptake. 

Previously quantification of this dynamic required manual segmentation performed by identifying small areas of increased intensity in a large field of view. An automatic segmentation of the noise and background rich images was hampered by varying imaging conditions for different experimental sets, requiring painstaking optimization of many different segmentation parameters.

I have written an ImageJ plugin that allows an easy and interactive adjustment of the different parameters for the automatic segmentation. Segmentation is performed using a marker controlled watershed and the fluorescent traces are measured over the length of the movie. I further automated the analysis and visualization of the extracted traces using R providing the analysis as an interactive R shiny server. 

Link to plugin: https://github.com/schmiedc/pHluorinJ



## Quantification of the deformation of pericardium in zebrafish

**Elena Remacha**        
[PhD Student - Mechano-genetic interplays and embryonic morphogenesis, IGBMC Strasbourg, France](http://www.igbmc.fr/research/department/1/team/15/)

### Collections and Components 

Collection: ImageJ, Matlab, Imaris 

### Workflow Outline

Epicardium in the zebrafish is formed by a pool of cells that cluster and detach from the pericardial wall. To understand the role of mechanical forces on this process, we want to assess the stretching of the pericardium in the region where the cluster forms.

I use a spinning disk confocal to acquire 2D+t stacks. Post acquisition I reconstruct into a 3D+t beating heart. After this point I follow two different pipelines. For the actin, I manually create a mask to exclude signal coming from the heart and detect the pericardial wall automatically and follow it during the heartbeat. For the nuclei, I use Imaris to track the nuclei and then calculate the relative distances between them.


## Describing the Average State of Dynamic Epithelial Cells

**Peran Hayes**  
Postdoc: [Biophysics of Morphogenesis Lab]( http://biofisika.org/research-lines/biophysics-of-morphogenesis/), Biofisika Basque Centre for Biophysics UPV/EHU, Bilbao
and [Biomechanics of Morphogenesis Lab]( https://www.crg.eu/en/programmes-groups/solon-lab), Centre for Genomic Regulation (CRG), Barcelona

### Collections and Components 

Collection: [Packing Analyzer](https://idisk-srv1.mpi-cbg.de/~eaton/) and Python

Components Used: scipy

### Workflow Outline

We observed dynamic oscillations occurring in the amnioserosa, an epithelial tissue that covers the closing gap of a drosophila embryo during dorsal closure - a process in late stage embryogenesis. Amnioserosa cells are pulsatile, displaying waves of actomyosin that pass through them concurrently with oscillations in their area. By squeezing embryos using a micromanipulator, we could stretch the cells and arrest the oscillations. In the arrested state, the actomyosin waves stopped and myosin localised to the cell junctions. After release, cell oscillations would synchronise for one pulse and for a short period afterwards exhibited ruffled junctions.

To quantify these observations we defined a "Scaled Averaged Cell", allowing us to descrbe the changes between an average cell in each state. Cells were segmented and tracked during each phase (pre-, during- and post-stretch) using Packing Analyzer software (https://idisk-srv1.mpi-cbg.de/~eaton/). For each cell at each time-point, I measured radial centroid-junction distances for increasing angles from the anterio-posterior axis of the embryo. Averaging these distances gives a mean cell shape. I then repeated the process, measuring intensity profiles of fluorescent molecules (labelling myosin and E-cadherin) along centroid junction lengths at increasing angles from the A-P axis. These radial intensity profiles were then rescaled to fit onto the average cell shape, and averaged across many cells and time points. In this way I was able to describe average cell shapes and molecular localisations for each phase (pre- during- and post-stratch).

More detail on this work can be found here: [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6291457/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6291457/)
