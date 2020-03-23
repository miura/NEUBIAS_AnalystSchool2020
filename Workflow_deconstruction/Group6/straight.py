from skimage import io, exposure, img_as_uint, img_as_float
import numpy
import napari

from surfcut.cli import surfcut_parser

def straight(data, mask):
    args = surfcut_parser().parse_args()
    imarray_real = numpy.array(data)
    imarray = numpy.array(mask)
    imdim = imarray.shape
    zthick = args.depth
    straightened = numpy.empty((zthick, imdim[1], imdim[2]))

    for i in range(1, imdim[1], 5):
        for j in range(1, imdim[2], 5):
            index = list(zip(*numpy.where(imarray[:, i, j] == True)))
            if index:
                index_first = index[0][0]
                if (index_first + args.depth + args.shift) < imdim[0]:
                    straightened[0:zthick, (i - 2):(i + 3), (j - 2):(j + 3)] = imarray_real[(index_first + args.shift):(index_first + args.shift + args.depth), (i - 2):(i + 3), (j - 2):(j + 3)]

    return straightened

