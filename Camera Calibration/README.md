# Camera Calibration: MATLAB Camera Calibrator : [See complete article](https://bimalka98.github.io/Camera-Calibration)

> For the calibration I designed a Checkerboard pattern myself using Adobe Photoshop, which has 30mmx30mm squares. You can download it from [here](checkboard-30mm.pdf). Later I found that out there are checkerboard pattrens readily available on the internet😅. Here is the [link](https://markhedleyjones.com/projects/calibration-checkerboard-collection). Don't waste your time on designning the checkeboard.

## Useful links
1. [The Perspective Camera - An Interactive Tour](http://ksimek.github.io/2012/08/13/introduction/)
2. [Perspective Camera Toy](http://ksimek.github.io/perspective_camera_toy.html)
3. [A Flexible New Technique for Camera Calibration *Zhengyou Zhang*](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/02/tr98-71.pdf)

## With Cropped images

<p align="center">
  <img src="cc.png" />
</p>

```
 Standard Errors of Estimated Camera Parameters of a Huawei Y5-2017 Phone's Back Camera
---------------------------------------------------------------------------------------			

Intrinsics
----------
Focal length (pixels):   [ 2625.0714 +/- 6.0435     2656.0118 +/- 5.7201  ]
Principal point (pixels):[ 1176.5715 +/- 4.3481     1342.5772 +/- 3.5103  ]
Radial distortion:       [    0.0567 +/- 0.0096       -0.2138 +/- 0.0359  ]

Extrinsics
----------
Rotation vectors:
     [    0.1700 +/- 0.0069        0.0621 +/- 0.0067        1.5079 +/- 0.0009  ]
     [   -0.2104 +/- 0.0041        0.4402 +/- 0.0040        1.5229 +/- 0.0010  ]
     [    0.2477 +/- 0.0036        0.7418 +/- 0.0034        1.5615 +/- 0.0011  ]
     [   -0.5428 +/- 0.0036       -0.0571 +/- 0.0037        1.3857 +/- 0.0010  ]
     [    0.5814 +/- 0.0028       -0.3401 +/- 0.0026        1.4464 +/- 0.0010  ]
     [    0.7025 +/- 0.0025        0.5467 +/- 0.0021        1.4362 +/- 0.0008  ]
     [   -0.3633 +/- 0.0022       -0.5122 +/- 0.0022        1.4601 +/- 0.0009  ]
     [    0.4561 +/- 0.0033       -0.2956 +/- 0.0031        1.5067 +/- 0.0009  ]
     [   -0.0094 +/- 0.0031       -0.4297 +/- 0.0029        0.0108 +/- 0.0008  ]
     [    0.0625 +/- 0.0025        0.7340 +/- 0.0025       -0.0321 +/- 0.0009  ]
     [   -0.1133 +/- 0.0046        0.4269 +/- 0.0045        1.5722 +/- 0.0010  ]
     [   -0.3884 +/- 0.0027       -0.3917 +/- 0.0028        1.4266 +/- 0.0009  ]
     [    0.7873 +/- 0.0026        0.5271 +/- 0.0022        1.4277 +/- 0.0009  ]
     [    0.0241 +/- 0.0029       -0.5952 +/- 0.0027        1.5897 +/- 0.0011  ]
     [    0.1689 +/- 0.0053       -0.0489 +/- 0.0052        1.5443 +/- 0.0008  ]
     [   -0.2664 +/- 0.0029        0.4326 +/- 0.0026        1.5205 +/- 0.0009  ]
     [    0.0740 +/- 0.0024        0.7686 +/- 0.0024        0.0473 +/- 0.0009  ]
     [    0.4414 +/- 0.0024       -0.4594 +/- 0.0024        0.0729 +/- 0.0008  ]
     [    0.3170 +/- 0.0018        0.7216 +/- 0.0020       -0.1555 +/- 0.0008  ]
     [   -0.8950 +/- 0.0022        0.1068 +/- 0.0023       -0.0458 +/- 0.0011  ]

Translation vectors (millimeters):
     [  156.5352 +/- 0.8558     -142.1361 +/- 0.6828      489.9408 +/- 1.4992  ]
     [  177.0393 +/- 1.0356     -159.7594 +/- 0.8358      618.5397 +/- 1.4334  ]
     [  182.8178 +/- 0.8520     -127.2946 +/- 0.6655      497.3671 +/- 1.2524  ]
     [   85.2089 +/- 1.0808     -140.5887 +/- 0.8680      654.7028 +/- 1.3501  ]
     [  120.0734 +/- 0.6349      -82.2827 +/- 0.5392      372.7998 +/- 1.1307  ]
     [   83.4689 +/- 0.4883     -130.2688 +/- 0.3824      283.5182 +/- 0.8167  ]
     [  123.6431 +/- 0.6778     -145.7546 +/- 0.5431      419.2150 +/- 0.9115  ]
     [  123.3105 +/- 0.6102     -126.9356 +/- 0.5381      357.5151 +/- 1.0769  ]
     [ -103.6184 +/- 0.6891     -111.1653 +/- 0.5341      395.9376 +/- 1.0893  ]
     [  -66.8696 +/- 0.8675      -98.7360 +/- 0.6800      519.7027 +/- 1.0167  ]
     [  153.3927 +/- 0.9997     -149.8585 +/- 0.8024      598.3399 +/- 1.4108  ]
     [  108.0664 +/- 0.8176     -171.9490 +/- 0.6520      499.9306 +/- 1.0847  ]
     [   77.1138 +/- 0.5383     -150.5135 +/- 0.4301      313.9741 +/- 0.9169  ]
     [  164.4851 +/- 0.7784     -100.0033 +/- 0.6455      471.4640 +/- 1.2113  ]
     [  123.4742 +/- 0.7564     -130.8235 +/- 0.6274      440.0215 +/- 1.2997  ]
     [  121.6460 +/- 0.8347     -200.8470 +/- 0.6852      502.4894 +/- 1.1208  ]
     [  -56.8049 +/- 0.8715     -114.2302 +/- 0.6826      521.4934 +/- 1.0168  ]
     [  -51.6614 +/- 0.5961     -118.0420 +/- 0.5028      344.1645 +/- 1.0668  ]
     [ -126.1515 +/- 0.6692      -75.4279 +/- 0.5473      414.5757 +/- 0.8322  ]
     [ -112.0351 +/- 0.9179      -33.6990 +/- 0.7649      566.4666 +/- 1.1665  ]
```

<p align="center">
  <img src="showExtrinsics.png" width="700px"/>
</p>

<p align="center">
  <img src="showReprojectionErrors.png" width="700px" />
</p>

---

## Without Cropping the images

<p align="center">
  <img src="cc2.png" />
</p>

```
			Standard Errors of Estimated Camera Parameters of a Huawei Y5-2017 Phone's Back Camera
			--------------------------------------------------------------------------------------

Intrinsics
----------
Focal length (pixels):   [ 2700.1129 +/- 2.8244     2704.0118 +/- 2.6479  ]
Principal point (pixels):[ 1179.3009 +/- 1.8586     1588.6612 +/- 1.4667  ]
Radial distortion:       [    0.0926 +/- 0.0044       -0.2114 +/- 0.0163  ]

Extrinsics
----------
Rotation vectors:
                         [    0.1588 +/- 0.0033        0.0631 +/- 0.0032        1.5096 +/- 0.0004  ]
                         [   -0.2234 +/- 0.0020        0.4752 +/- 0.0020        1.5148 +/- 0.0005  ]
                         [    0.2675 +/- 0.0016        0.7273 +/- 0.0015        1.5628 +/- 0.0005  ]
                         [   -0.5501 +/- 0.0016       -0.0713 +/- 0.0017        1.3859 +/- 0.0005  ]
                         [    0.5973 +/- 0.0013       -0.3509 +/- 0.0012        1.4462 +/- 0.0005  ]
                         [    0.7129 +/- 0.0011        0.5485 +/- 0.0009        1.4374 +/- 0.0003  ]
                         [   -0.3825 +/- 0.0010       -0.5195 +/- 0.0010        1.4603 +/- 0.0004  ]
                         [    0.5176 +/- 0.0016       -0.3308 +/- 0.0015        1.5007 +/- 0.0004  ]
                         [    0.0257 +/- 0.0014       -0.4419 +/- 0.0013       -0.0002 +/- 0.0003  ]
                         [    0.0536 +/- 0.0011        0.7438 +/- 0.0011       -0.0341 +/- 0.0004  ]
                         [   -0.1150 +/- 0.0022        0.4484 +/- 0.0022        1.5657 +/- 0.0005  ]
                         [   -0.4369 +/- 0.0012       -0.3818 +/- 0.0012        1.4392 +/- 0.0004  ]
                         [    0.7449 +/- 0.0011        0.5763 +/- 0.0010        1.4086 +/- 0.0004  ]
                         [    0.0326 +/- 0.0014       -0.6226 +/- 0.0012        1.5766 +/- 0.0005  ]
                         [    0.1588 +/- 0.0025       -0.0428 +/- 0.0025        1.5457 +/- 0.0004  ]
                         [   -0.2892 +/- 0.0013        0.4623 +/- 0.0012        1.5130 +/- 0.0004  ]
                         [    0.0113 +/- 0.0011        0.7785 +/- 0.0010        0.0270 +/- 0.0004  ]
                         [    0.3784 +/- 0.0010       -0.4751 +/- 0.0010        0.0885 +/- 0.0004  ]
                         [    0.3874 +/- 0.0008        0.7383 +/- 0.0008       -0.1240 +/- 0.0003  ]
                         [   -0.8528 +/- 0.0010        0.1070 +/- 0.0010       -0.0451 +/- 0.0005  ]

Translation vectors (millimeters):
                         [  155.9579 +/- 0.3677     -149.0883 +/- 0.2884      504.5399 +/- 0.7126  ]
                         [  176.5537 +/- 0.4447     -123.4080 +/- 0.3533      639.8593 +/- 0.6801  ]
                         [  180.8317 +/- 0.3672     -134.0703 +/- 0.2782      507.8285 +/- 0.5990  ]
                         [   84.0470 +/- 0.4612     -136.3349 +/- 0.3649      669.0573 +/- 0.6390  ]
                         [  119.6632 +/- 0.2727      -95.3260 +/- 0.2315      384.8297 +/- 0.5451  ]
                         [   82.4593 +/- 0.2097     -132.8647 +/- 0.1609      290.4283 +/- 0.3903  ]
                         [  122.0913 +/- 0.2909     -142.2950 +/- 0.2273      429.6691 +/- 0.4322  ]
                         [  122.5745 +/- 0.2601     -161.9149 +/- 0.2392      367.3551 +/- 0.5461  ]
                         [ -103.7371 +/- 0.2912     -130.3420 +/- 0.2271      402.5284 +/- 0.5192  ]
                         [  -66.6782 +/- 0.3670      -95.1525 +/- 0.2852      530.3091 +/- 0.4739  ]
                         [  152.3982 +/- 0.4281     -125.6566 +/- 0.3379      615.8554 +/- 0.6698  ]
                         [  106.9474 +/- 0.3516     -141.9626 +/- 0.2725      515.0723 +/- 0.5021  ]
                         [   76.2934 +/- 0.2354     -131.5001 +/- 0.1804      327.6164 +/- 0.4259  ]
                         [  163.2290 +/- 0.3361     -122.9659 +/- 0.2729      484.1596 +/- 0.5847  ]
                         [  123.0242 +/- 0.3248     -136.7787 +/- 0.2660      453.6079 +/- 0.6208  ]
                         [  121.1290 +/- 0.3582     -172.0656 +/- 0.2864      520.5429 +/- 0.5245  ]
                         [  -56.3611 +/- 0.3727      -82.7235 +/- 0.2890      537.3520 +/- 0.4719  ]
                         [  -51.0117 +/- 0.2546      -97.1251 +/- 0.2080      355.1822 +/- 0.4898  ]
                         [ -125.1265 +/- 0.2795     -110.6333 +/- 0.2286      418.3420 +/- 0.3920  ]
                         [ -112.7127 +/- 0.3892      -53.8583 +/- 0.3211      577.6856 +/- 0.5495  ]

```


## Rotation and Translation Matrices
There are ***6 Principal Movements*** as, rotations about 3 axes(X,Y,Z)
and translations along 3 axes(X,Y,Z). Correct combination(*obtain by
multiplying required principal matrices like
*R**o**t*(*e*<sub>*i*</sub>, *θ*<sub>*m*</sub>) \* *T**r**a**n**s*(*e*<sub>*j*</sub>, *d*<sub>*k*</sub>)*)
of these 6 principal movements can be used to get any of the advanced
transformations, from the reference frame to object’s frame. Those basic
matrices are as follows where *e*<sub>*i*</sub> refers to the elements
in standard ***basis***( *e*<sub>1</sub> = \[1 0 0\]<sup>⊤</sup>,
*e*<sub>2</sub> = \[0 1 0\]<sup>⊤</sup> and
*e*<sub>3</sub> = \[0 0 1\]<sup>⊤</sup>) while *θ*<sub>*i*</sub>
indicates how many degrees the object has rotated about the
*e*<sub>*i*</sub> basis vector. Additionally *d*<sub>*i*</sub> indicates
the displacement along the direction of *e*<sub>*i*</sub> basis
vector(axis). 

<p align="center">
  <img src="rotatransmatrices.PNG" />
</p>

## Converting Focal Length from Pixels to Millimeters: (Have to be done)

1. To convert a known focal length in pixels to mm:

F(mm) = F(pixels) * SensorWidth(mm) / ImageWidth (pixel).

For an X4S, the image width in pixels is 5472. Context Capture indicates the sensor width is 13.2 mm, so the equation is simply:

F(mm) = F(pixels) * 13.2 / 5472;

2. can find the focal length(mm) by multiplying the size of the pixel on the sensor by the focal length(pixel)
