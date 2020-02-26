# ImageJ SurfCut: a user-friendly pipeline for high-throughput extraction of cell contours from 3D image stacks

## Author

Stéphane Verger, Umeå Plant Science Centre, Swedish University of Agricultural Sciences.

## Abstract

Many methods have been developed to quantify cell shape in 2D in tissues. For instance, the analysis of epithelial cells in Drosophila embryogenesis or jigsaw puzzle-shaped pavement cells in plant epidermis has led to the development of numerous quantification methods that are applied to 2D images. However, proper extraction of 2D cell contours from 3D confocal stacks for such analysis can be problematic.
We developed a macro in ImageJ, SurfCut, with the goal to provide a user-friendly pipeline specifically designed to extract epidermal cell contour signals in a high throughput manner.

In the lecture, I will describe the problematic that led us to develop this macro and some of the steps in the process and inspiration from other methods that led to its current design. I will explain the principles behind how this macro works, some of it’s applications, limitations and how it compares with other methods. I will also discuss the process that led to publish it, the associated open access of the code and raw data in repositories and the impact that it has had so far.

In the workflow deconstruction, following the user guide and using the sample image data associated with the publication, we will go through the image processing of cell contour extraction and some of the associated image analysis. At each step I will explain in detail the image processing performed or algorithm applied to promote discussion on the components and algorithms used and what could be the alternatives to improve the overall design of the workflow.

Lecture slides: https://docs.google.com/presentation/d/1igPoZUIJuBzJ2UTd9ZTZ-IcW37NRt6vPdvpNu-sGUpo/edit?usp=sharing

## Software Installation

- Fiji (https://fiji.sc).
- The imageJ “MorphoLibJ” library. See installation procedure at https://imagej.net/MorphoLibJ.

Macros
- The "SurfCut.ijm" macro file (https://github.com/sverger/SurfCut).
- The “Segmentation4FTBatch.ijm” macro file (https://github.com/sverger/Segmentation4FTBatch).
- The “FibrilTool_Batch.ijm” macro file (https://github.com/sverger/FibrilTool_Batch).


## Sample Data

- Approximate total size of sample data set: 535 Mb
- Capturing conditions
   - organism: Arabidopsis thaliana
   - labeled protein: GFP-MBD (microtubule binding domain; Marc et al., 1998 DOI:https://doi.org/10.1105/tpc.10.11.1927) and Propidium Iodide (PI) staining.
   - microscopy: Images were acquired using a Leica TCS SP8 confocal microscope, equipped with a water immersion objective (HCX IRAPO L 25x/0.95 W). PI excitation was performed using a 552 nm solid-state laser and fluorescence was detected at 600–650 nm. GFP excitation was performed using a 488 nm solid-state laser and fluorescence was detected at 495–535 nm. 
   - spatial resolution: Stacks of 1024x1024 pixels (pixel size of 0.363 x 0.363 micron) optical section were generated with a Z interval of 0.5 μm.
- Location: http://doi.org/10.5281/zenodo.2577053

## Resources

https://github.com/sverger/SurfCut
https://github.com/sverger/Segmentation4FTBatch
https://github.com/sverger/FibrilTool_Batch
http://doi.org/10.5281/zenodo.2577053


## References:

Erguvan, O., Louveaux, M., Hamant, O., Verger, S. (2019) ImageJ SurfCut: a user-friendly pipeline for high-throughput extraction of cell contours from 3D image stacks. BMC Biology, 17:38. https://doi.org/10.1186/s12915-019-0657-1

Erguvan Özer, & Verger Stéphane. (2019). Dataset of confocal microscopy stacks from plant samples - ImageJ SurfCut: a user-friendly, high-throughput pipeline for extracting cell contours from 3D confocal stacks [Data set]. Zenodo. http://doi.org/10.5281/zenodo.2577053
