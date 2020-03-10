#@ File (label = "Input folder", style = "file") input

run("Close All");
open(input);
name = getTitle();
run("Duplicate...", "use");
run("Gaussian Blur...", "sigma=5");
run("Find Maxima...", "prominence=10000 output=[Point Selection]");
getSelectionBounds(x, y, width, height);
close();
selectWindow(name);
makeRectangle(x-32, y-32, 64, 64);
run("Crop");
run("32-bit");
run("Convolve...", "text1=[-1 -1 -1 -1 -1\n-1 -1 -1 -1 -1\n-1 -1 24 -1 -1\n-1 -1 -1 -1 -1\n-1 -1 -1 -1 -1\n] normalize stack");
run("Gaussian Blur...", "sigma=2 stack");
run("Conversions...", " ");
run("16-bit"); //if pixelvalue <0 then set to 0
run("Conversions...", "scale");
run("Set Measurements...", "mean redirect=None decimal=3");
roiManager("Delete");
run("Select All");
roiManager("Add");
roiManager("Multi Measure");

meanx=newArray(nResults());
maxIdx = 0;
for (i = 0; i < nResults(); i++) {
	meanx[i]=getResult("Mean1", i);
}

//beginning of moving mean
meanxmm = Array.copy(meanx);
x = Array.copy(meanx);
windowC=3; //window is 1+2*windowC
for (i=0;i<meanx.length;i++){ 
	if (i<windowC){ //start
		temp = Array.slice(meanx,0,1+i+windowC);
	}else if (i>(meanx.length)){ //end
		temp = Array.slice(meanx,i-windowC,array.length);
	}else { //middle
		temp=Array.slice(meanx,i-windowC,i+windowC+1);
	}
	Array.getStatistics(temp, min, max, mean, stdDev);
	meanxmm[i] = mean;
	x[i]=i;
}
//find first top
maxIdx=newArray(1);
maxVal=newArray(1);
for (i = 3; i < meanxmm.length; i++) {
	if (meanxmm[i]<meanxmm[i-1]){
		maxIdx[0] = i-1;
		maxVal[0] = meanxmm[i-1];
		break;
	}
}
Plot.create("Title", "X-axis Label", "Y-axis Label", x, meanx);
Plot.add("line", x, meanxmm);
Plot.add("point", maxIdx, maxVal);
Plot.setLegend("orignal\t5-window move mean", "top-right");
print(maxIdx[0]);