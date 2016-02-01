# Variables Used
Below are the variable definition used in the `run_analysis.R` code and tidy data (For the definitions of the original data please download the original zip file)

## Code Variables
activities
 ```
 data.frame':	6 obs. of  2 variables:
 $ Labels    : int  1 2 3 4 5 6
 $ Activities: Factor w/ 6 levels "LAYING","SITTING",..: 4 6 5 2 3 1
 ```
 dataset
 ```
 'data.frame':	10299 obs. of  563 variables:
 $ Subject                             : int  2 2 2 2 2 2 2 2 2 2 ...
 $ Labels                              : int  5 5 5 5 5 5 5 5 5 5 ...
 $ tBodyAcc-mean()-X                   : num  0.257 0.286 0.275 0.27 0.275 ...
 $ tBodyAcc-mean()-Y                   : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
 $ tBodyAcc-mean()-Z                   : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
 $ tBodyAcc-std()-X                    : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
 $ tBodyAcc-std()-Y                    : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
 $ tBodyAcc-std()-Z                    : num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
 $ tBodyAcc-mad()-X                    : num  -0.953 -0.987 -0.994 -0.995 -0.994 ...
 $ tBodyAcc-mad()-Y                    : num  -0.925 -0.968 -0.971 -0.974 -0.966 ...
 $ tBodyAcc-mad()-Z                    : num  -0.674 -0.946 -0.963 -0.969 -0.977 ...
 $ tBodyAcc-max()-X                    : num  -0.894 -0.894 -0.939 -0.939 -0.939 ...
 $ tBodyAcc-max()-Y                    : num  -0.555 -0.555 -0.569 -0.569 -0.561 ...
 $ tBodyAcc-max()-Z                    : num  -0.466 -0.806 -0.799 -0.799 -0.826 ...
 $ tBodyAcc-min()-X                    : num  0.717 0.768 0.848 0.848 0.849 ...
 $ tBodyAcc-min()-Y                    : num  0.636 0.684 0.668 0.668 0.671 ...
 $ tBodyAcc-min()-Z                    : num  0.789 0.797 0.822 0.822 0.83 ...
 $ tBodyAcc-sma()                      : num  -0.878 -0.969 -0.977 -0.974 -0.975 ...
 $ tBodyAcc-energy()-X                 : num  -0.998 -1 -1 -1 -1 ...
 $ tBodyAcc-energy()-Y                 : num  -0.998 -1 -1 -0.999 -0.999 ...
 $ tBodyAcc-energy()-Z                 : num  -0.934 -0.998 -0.999 -0.999 -0.999 ...
 ...
 ```
dataset_withActivities
```
data.frame':	10299 obs. of  564 variables:
 $ Labels                                                         : int  1 1 1 1 1 1 1 1 1 1 ...
 $ Activities                                                     : Factor w/ 6 levels "LAYING","SITTING",..: 4 4 4 4 4 4 4 4 4 4 ...
 $ Subject                                                        : int  1 1 1 1 1 1 1 1 1 1 ...
 $ timeBodyAccelerometer-Mean-X                                   : num  0.278 0.18 0.326 0.271 0.227 ...
 $ timeBodyAccelerometer-Mean-Y                                   : num  -0.0234 -0.0178 -0.0166 -0.0163 -0.0361 ...
 $ timeBodyAccelerometer-Mean-Z                                   : num  -0.1305 -0.0393 -0.0551 -0.1029 -0.1387 ...
 $ timeBodyAccelerometer-StandardDeviation-X                      : num  -0.277 -0.377 -0.309 -0.339 -0.376 ...
 $ timeBodyAccelerometer-StandardDeviation-Y                      : num  0.1228 0.0235 0.0704 0.0926 0.084 ...
 $ timeBodyAccelerometer-StandardDeviation-Z                      : num  -0.314 -0.247 -0.36 -0.32 -0.301 ...
 $ timeBodyAccelerometer-MedianAbsoluteDeviation-X                : num  -0.353 -0.434 -0.356 -0.396 -0.429 ...
 $ timeBodyAccelerometer-MedianAbsoluteDeviation-Y                : num  0.0713 -0.0419 0.0385 0.0549 0.0435 ...
 $ timeBodyAccelerometer-MedianAbsoluteDeviation-Z                : num  -0.3 -0.243 -0.313 -0.275 -0.267 ...
 $ timeBodyAccelerometer-MAX-X                                    : num  -0.0904 -0.2292 -0.1632 -0.1632 -0.1487 ...
 $ timeBodyAccelerometer-MAX-Y                                    : num  -0.0836 -0.1187 -0.1437 -0.1482 -0.1169 ...
 $ timeBodyAccelerometer-MAX-Z                                    : num  -0.342 -0.227 -0.346 -0.346 -0.294 ...
 $ timeBodyAccelerometer-MIN-X                                    : num  0.142 0.11 0.123 0.123 0.228 ...
 $ timeBodyAccelerometer-MIN-Y                                    : num  -0.17574 0.08082 0.05171 0.05171 -0.00555 ...
 $ timeBodyAccelerometer-MIN-Z                                    : num  0.465 0.42 0.515 0.501 0.487 ...
 $ timeBodyAccelerometer-SignalMagnitudeArea                      : num  -0.146 -0.207 -0.164 -0.168 -0.187 ...
 $ timeBodyAccelerometer-Energy-X                                 : num  -0.737 -0.802 -0.759 -0.78 -0.804 ...
 $ timeBodyAccelerometer-Energy-Y                                 : num  -0.757 -0.797 -0.779 -0.769 -0.772 ...
 $ timeBodyAccelerometer-Energy-Z                                 : num  -0.785 -0.736 -0.809 -0.789 -0.777 ...
...
```
datasubset
```
'data.frame':	10299 obs. of  68 variables:
 $ Subject                    : int  2 2 2 2 2 2 2 2 2 2 ...
 $ Labels                     : int  5 5 5 5 5 5 5 5 5 5 ...
 $ tBodyAcc-mean()-X          : num  0.257 0.286 0.275 0.27 0.275 ...
 $ tBodyAcc-mean()-Y          : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
 $ tBodyAcc-mean()-Z          : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
 $ tBodyAcc-std()-X           : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
 $ tBodyAcc-std()-Y           : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
 $ tBodyAcc-std()-Z           : num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
 $ tGravityAcc-mean()-X       : num  0.936 0.927 0.93 0.929 0.927 ...
 $ tGravityAcc-mean()-Y       : num  -0.283 -0.289 -0.288 -0.293 -0.303 ...
 $ tGravityAcc-mean()-Z       : num  0.115 0.153 0.146 0.143 0.138 ...
 $ tGravityAcc-std()-X        : num  -0.925 -0.989 -0.996 -0.993 -0.996 ...
 $ tGravityAcc-std()-Y        : num  -0.937 -0.984 -0.988 -0.97 -0.971 ...
 $ tGravityAcc-std()-Z        : num  -0.564 -0.965 -0.982 -0.992 -0.968 ...
 $ tBodyAccJerk-mean()-X      : num  0.072 0.0702 0.0694 0.0749 0.0784 ...
 $ tBodyAccJerk-mean()-Y      : num  0.04575 -0.01788 -0.00491 0.03227 0.02228 ...
 $ tBodyAccJerk-mean()-Z      : num  -0.10604 -0.00172 -0.01367 0.01214 0.00275 ...
 $ tBodyAccJerk-std()-X       : num  -0.907 -0.949 -0.991 -0.991 -0.992 ...
 $ tBodyAccJerk-std()-Y       : num  -0.938 -0.973 -0.971 -0.973 -0.979 ...
 $ tBodyAccJerk-std()-Z       : num  -0.936 -0.978 -0.973 -0.976 -0.987 ...
...
```
features
```
'data.frame':	561 obs. of  2 variables:
 $ V1: int  1 2 3 4 5 6 7 8 9 10 ...
 $ V2: Factor w/ 477 levels "angle(tBodyAccJerkMean),gravityMean)",..: 243 244 245 250 251 252 237 238 239 240 ...
```
mergedLabels
```
'data.frame':	10299 obs. of  1 variable:
 $ Labels: int  5 5 5 5 5 5 5 5 5 5 ...
```
mergedSet
```
'data.frame':	10299 obs. of  68 variables:
 $ Subject                    : int  2 2 2 2 2 2 2 2 2 2 ...
 $ Labels                     : int  5 5 5 5 5 5 5 5 5 5 ...
 $ tBodyAcc-mean()-X          : num  0.257 0.286 0.275 0.27 0.275 ...
 $ tBodyAcc-mean()-Y          : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
 $ tBodyAcc-mean()-Z          : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
 $ tBodyAcc-std()-X           : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
 $ tBodyAcc-std()-Y           : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
 $ tBodyAcc-std()-Z           : num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
 $ tGravityAcc-mean()-X       : num  0.936 0.927 0.93 0.929 0.927 ...
 $ tGravityAcc-mean()-Y       : num  -0.283 -0.289 -0.288 -0.293 -0.303 ...
 $ tGravityAcc-mean()-Z       : num  0.115 0.153 0.146 0.143 0.138 ...
 $ tGravityAcc-std()-X        : num  -0.925 -0.989 -0.996 -0.993 -0.996 ...
 $ tGravityAcc-std()-Y        : num  -0.937 -0.984 -0.988 -0.97 -0.971 ...
 $ tGravityAcc-std()-Z        : num  -0.564 -0.965 -0.982 -0.992 -0.968 ...
 $ tBodyAccJerk-mean()-X      : num  0.072 0.0702 0.0694 0.0749 0.0784 ...
 $ tBodyAccJerk-mean()-Y      : num  0.04575 -0.01788 -0.00491 0.03227 0.02228 ...
 $ tBodyAccJerk-mean()-Z      : num  -0.10604 -0.00172 -0.01367 0.01214 0.00275 ...
 $ tBodyAccJerk-std()-X       : num  -0.907 -0.949 -0.991 -0.991 -0.992 ...
 $ tBodyAccJerk-std()-Y       : num  -0.938 -0.973 -0.971 -0.973 -0.979 ...
 $ tBodyAccJerk-std()-Z       : num  -0.936 -0.978 -0.973 -0.976 -0.987 ...
 $ tBodyGyro-mean()-X         : num  0.11998 -0.00155 -0.04821 -0.05664 -0.05999 ...
 $ tBodyGyro-mean()-Y         : num  -0.0918 -0.1873 -0.1663 -0.126 -0.0847 ...
 $ tBodyGyro-mean()-Z         : num  0.1896 0.1807 0.1542 0.1183 0.0787 ...
...
```
mergedSubject
```
'data.frame':	10299 obs. of  1 variable:
 $ Subject: int  2 2 2 2 2 2 2 2 2 2 ...
```
testLabels
```
'data.frame':	2947 obs. of  1 variable:
 $ V1: int  5 5 5 5 5 5 5 5 5 5 ...
```
testSet
```
'data.frame':	10299 obs. of  561 variables:
 $ tBodyAcc-mean()-X                   : num  0.257 0.286 0.275 0.27 0.275 ...
 $ tBodyAcc-mean()-Y                   : num  -0.0233 -0.0132 -0.0261 -0.0326 -0.0278 ...
 $ tBodyAcc-mean()-Z                   : num  -0.0147 -0.1191 -0.1182 -0.1175 -0.1295 ...
 $ tBodyAcc-std()-X                    : num  -0.938 -0.975 -0.994 -0.995 -0.994 ...
 $ tBodyAcc-std()-Y                    : num  -0.92 -0.967 -0.97 -0.973 -0.967 ...
 $ tBodyAcc-std()-Z                    : num  -0.668 -0.945 -0.963 -0.967 -0.978 ...
 $ tBodyAcc-mad()-X                    : num  -0.953 -0.987 -0.994 -0.995 -0.994 ...
 $ tBodyAcc-mad()-Y                    : num  -0.925 -0.968 -0.971 -0.974 -0.966 ...
 $ tBodyAcc-mad()-Z                    : num  -0.674 -0.946 -0.963 -0.969 -0.977 ...
 $ tBodyAcc-max()-X                    : num  -0.894 -0.894 -0.939 -0.939 -0.939 ...
 $ tBodyAcc-max()-Y                    : num  -0.555 -0.555 -0.569 -0.569 -0.561 ...
 $ tBodyAcc-max()-Z                    : num  -0.466 -0.806 -0.799 -0.799 -0.826 ...
 $ tBodyAcc-min()-X                    : num  0.717 0.768 0.848 0.848 0.849 ...
 $ tBodyAcc-min()-Y                    : num  0.636 0.684 0.668 0.668 0.671 ...
 $ tBodyAcc-min()-Z                    : num  0.789 0.797 0.822 0.822 0.83 ...
 $ tBodyAcc-sma()                      : num  -0.878 -0.969 -0.977 -0.974 -0.975 ...
 $ tBodyAcc-energy()-X                 : num  -0.998 -1 -1 -1 -1 ...
 $ tBodyAcc-energy()-Y                 : num  -0.998 -1 -1 -0.999 -0.999 ...
 $ tBodyAcc-energy()-Z                 : num  -0.934 -0.998 -0.999 -0.999 -0.999 ...
 $ tBodyAcc-iqr()-X                    : num  -0.976 -0.994 -0.993 -0.995 -0.993 ...
 $ tBodyAcc-iqr()-Y                    : num  -0.95 -0.974 -0.974 -0.979 -0.967 ...
 ...
```
testSubject
```
'data.frame':	2947 obs. of  1 variable:
 $ V1: int  2 2 2 2 2 2 2 2 2 2 ...
```
tidyData
```
```
trainLabels
```
'data.frame':	7352 obs. of  1 variable:
 $ V1: int  5 5 5 5 5 5 5 5 5 5 ...
```
trainSet
```
'data.frame':	7352 obs. of  561 variables:
 $ V1  : num  0.289 0.278 0.28 0.279 0.277 ...
 $ V2  : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
 $ V3  : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
 $ V4  : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
 $ V5  : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
 $ V6  : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
 $ V7  : num  -0.995 -0.999 -0.997 -0.997 -0.998 ...
 $ V8  : num  -0.983 -0.975 -0.964 -0.983 -0.98 ...
 $ V9  : num  -0.924 -0.958 -0.977 -0.989 -0.99 ...
 $ V10 : num  -0.935 -0.943 -0.939 -0.939 -0.942 ...
 $ V11 : num  -0.567 -0.558 -0.558 -0.576 -0.569 ...
 $ V12 : num  -0.744 -0.818 -0.818 -0.83 -0.825 ...
 $ V13 : num  0.853 0.849 0.844 0.844 0.849 ...
 $ V14 : num  0.686 0.686 0.682 0.682 0.683 ...
 $ V15 : num  0.814 0.823 0.839 0.838 0.838 ...
 $ V16 : num  -0.966 -0.982 -0.983 -0.986 -0.993 ...
 $ V17 : num  -1 -1 -1 -1 -1 ...
 $ V18 : num  -1 -1 -1 -1 -1 ...
 $ V19 : num  -0.995 -0.998 -0.999 -1 -1 ...
 $ V20 : num  -0.994 -0.999 -0.997 -0.997 -0.998 ...
```
trainSubject
```
'data.frame':	7352 obs. of  1 variable:
 $ V1: int  1 1 1 1 1 1 1 1 1 1 ...
```
featuresMeanStd
```
chr [1:66] "tBodyAcc-mean()-X" "tBodyAcc-mean()-Y" "tBodyAcc-mean()-Z" "tBodyAcc-std()-X" "tBodyAcc-std()-Y" ...
```
subsetnames
```
 chr [1:68] "Subject" "Labels" "tBodyAcc-mean()-X" "tBodyAcc-mean()-Y" "tBodyAcc-mean()-Z" ...
```

## Output
tidyData columns
```
  [1] "Subject"                                                        
  [2] "Activities"                                                     
  [3] "timeBodyAccelerometer-Mean-X"                                   
  [4] "timeBodyAccelerometer-Mean-Y"                                   
  [5] "timeBodyAccelerometer-Mean-Z"                                   
  [6] "timeBodyAccelerometer-StandardDeviation-X"                      
  [7] "timeBodyAccelerometer-StandardDeviation-Y"                      
  [8] "timeBodyAccelerometer-StandardDeviation-Z"                      
  [9] "timeBodyAccelerometer-MedianAbsoluteDeviation-X"                
 [10] "timeBodyAccelerometer-MedianAbsoluteDeviation-Y"                
 [11] "timeBodyAccelerometer-MedianAbsoluteDeviation-Z"                
 [12] "timeBodyAccelerometer-MAX-X"                                    
 [13] "timeBodyAccelerometer-MAX-Y"                                    
 [14] "timeBodyAccelerometer-MAX-Z"                                    
 [15] "timeBodyAccelerometer-MIN-X"                                    
 [16] "timeBodyAccelerometer-MIN-Y"                                    
 [17] "timeBodyAccelerometer-MIN-Z"                                    
 [18] "timeBodyAccelerometer-SignalMagnitudeArea"                      
 [19] "timeBodyAccelerometer-Energy-X"                                 
 [20] "timeBodyAccelerometer-Energy-Y"                                 
 [21] "timeBodyAccelerometer-Energy-Z"                                 
 [22] "timeBodyAccelerometer-InterquartileRange-X"                     
 [23] "timeBodyAccelerometer-InterquartileRange-Y"                     
 [24] "timeBodyAccelerometer-InterquartileRange-Z"                     
 [25] "timeBodyAccelerometer-Entropy-X"                                
 [26] "timeBodyAccelerometer-Entropy-Y"                                
 [27] "timeBodyAccelerometer-Entropy-Z"                                
 [28] "timeBodyAccelerometer-AutoregressionCoefficients-X,1"           
 [29] "timeBodyAccelerometer-AutoregressionCoefficients-X,2"           
 [30] "timeBodyAccelerometer-AutoregressionCoefficients-X,3"           
 [31] "timeBodyAccelerometer-AutoregressionCoefficients-X,4"           
 [32] "timeBodyAccelerometer-AutoregressionCoefficients-Y,1"           
 [33] "timeBodyAccelerometer-AutoregressionCoefficients-Y,2"           
 [34] "timeBodyAccelerometer-AutoregressionCoefficients-Y,3"           
 [35] "timeBodyAccelerometer-AutoregressionCoefficients-Y,4"           
 [36] "timeBodyAccelerometer-AutoregressionCoefficients-Z,1"           
 [37] "timeBodyAccelerometer-AutoregressionCoefficients-Z,2"           
 [38] "timeBodyAccelerometer-AutoregressionCoefficients-Z,3"           
 [39] "timeBodyAccelerometer-AutoregressionCoefficients-Z,4"           
 [40] "timeBodyAccelerometer-Correlation-X,Y"                          
 [41] "timeBodyAccelerometer-Correlation-X,Z"                          
 [42] "timeBodyAccelerometer-Correlation-Y,Z"                          
 [43] "timeGravityAccelerometer-Mean-X"                                
 [44] "timeGravityAccelerometer-Mean-Y"                                
 [45] "timeGravityAccelerometer-Mean-Z"                                
 [46] "timeGravityAccelerometer-StandardDeviation-X"                   
 [47] "timeGravityAccelerometer-StandardDeviation-Y"                   
 [48] "timeGravityAccelerometer-StandardDeviation-Z"                   
 [49] "timeGravityAccelerometer-MedianAbsoluteDeviation-X"             
 [50] "timeGravityAccelerometer-MedianAbsoluteDeviation-Y"             
 [51] "timeGravityAccelerometer-MedianAbsoluteDeviation-Z"             
 [52] "timeGravityAccelerometer-MAX-X"                                 
 [53] "timeGravityAccelerometer-MAX-Y"                                 
 [54] "timeGravityAccelerometer-MAX-Z"                                 
 [55] "timeGravityAccelerometer-MIN-X"                                 
 [56] "timeGravityAccelerometer-MIN-Y"                                 
 [57] "timeGravityAccelerometer-MIN-Z"                                 
 [58] "timeGravityAccelerometer-SignalMagnitudeArea"                   
 [59] "timeGravityAccelerometer-Energy-X"                              
 [60] "timeGravityAccelerometer-Energy-Y"                              
 [61] "timeGravityAccelerometer-Energy-Z"                              
 [62] "timeGravityAccelerometer-InterquartileRange-X"                  
 [63] "timeGravityAccelerometer-InterquartileRange-Y"                  
 [64] "timeGravityAccelerometer-InterquartileRange-Z"                  
 [65] "timeGravityAccelerometer-Entropy-X"                             
 [66] "timeGravityAccelerometer-Entropy-Y"                             
 [67] "timeGravityAccelerometer-Entropy-Z"                             
 [68] "timeGravityAccelerometer-AutoregressionCoefficients-X,1"        
 [69] "timeGravityAccelerometer-AutoregressionCoefficients-X,2"        
 [70] "timeGravityAccelerometer-AutoregressionCoefficients-X,3"        
 [71] "timeGravityAccelerometer-AutoregressionCoefficients-X,4"        
 [72] "timeGravityAccelerometer-AutoregressionCoefficients-Y,1"        
 [73] "timeGravityAccelerometer-AutoregressionCoefficients-Y,2"        
 [74] "timeGravityAccelerometer-AutoregressionCoefficients-Y,3"        
 [75] "timeGravityAccelerometer-AutoregressionCoefficients-Y,4"        
 [76] "timeGravityAccelerometer-AutoregressionCoefficients-Z,1"        
 [77] "timeGravityAccelerometer-AutoregressionCoefficients-Z,2"        
 [78] "timeGravityAccelerometer-AutoregressionCoefficients-Z,3"        
 [79] "timeGravityAccelerometer-AutoregressionCoefficients-Z,4"        
 [80] "timeGravityAccelerometer-Correlation-X,Y"                       
 [81] "timeGravityAccelerometer-Correlation-X,Z"                       
 [82] "timeGravityAccelerometer-Correlation-Y,Z"                       
 [83] "timeBodyAccelerometerJerk-Mean-X"                               
 [84] "timeBodyAccelerometerJerk-Mean-Y"                               
 [85] "timeBodyAccelerometerJerk-Mean-Z"                               
 [86] "timeBodyAccelerometerJerk-StandardDeviation-X"                  
 [87] "timeBodyAccelerometerJerk-StandardDeviation-Y"                  
 [88] "timeBodyAccelerometerJerk-StandardDeviation-Z"                  
 [89] "timeBodyAccelerometerJerk-MedianAbsoluteDeviation-X"            
 [90] "timeBodyAccelerometerJerk-MedianAbsoluteDeviation-Y"            
 [91] "timeBodyAccelerometerJerk-MedianAbsoluteDeviation-Z"            
 [92] "timeBodyAccelerometerJerk-MAX-X"                                
 [93] "timeBodyAccelerometerJerk-MAX-Y"                                
 [94] "timeBodyAccelerometerJerk-MAX-Z"                                
 [95] "timeBodyAccelerometerJerk-MIN-X"                                
 [96] "timeBodyAccelerometerJerk-MIN-Y"                                
 [97] "timeBodyAccelerometerJerk-MIN-Z"                                
 [98] "timeBodyAccelerometerJerk-SignalMagnitudeArea"                  
 [99] "timeBodyAccelerometerJerk-Energy-X"                             
[100] "timeBodyAccelerometerJerk-Energy-Y"                             
[101] "timeBodyAccelerometerJerk-Energy-Z"                             
[102] "timeBodyAccelerometerJerk-InterquartileRange-X"                 
[103] "timeBodyAccelerometerJerk-InterquartileRange-Y"                 
[104] "timeBodyAccelerometerJerk-InterquartileRange-Z"                 
[105] "timeBodyAccelerometerJerk-Entropy-X"                            
[106] "timeBodyAccelerometerJerk-Entropy-Y"                            
[107] "timeBodyAccelerometerJerk-Entropy-Z"                            
[108] "timeBodyAccelerometerJerk-AutoregressionCoefficients-X,1"       
[109] "timeBodyAccelerometerJerk-AutoregressionCoefficients-X,2"       
[110] "timeBodyAccelerometerJerk-AutoregressionCoefficients-X,3"       
[111] "timeBodyAccelerometerJerk-AutoregressionCoefficients-X,4"       
[112] "timeBodyAccelerometerJerk-AutoregressionCoefficients-Y,1"       
[113] "timeBodyAccelerometerJerk-AutoregressionCoefficients-Y,2"       
[114] "timeBodyAccelerometerJerk-AutoregressionCoefficients-Y,3"       
[115] "timeBodyAccelerometerJerk-AutoregressionCoefficients-Y,4"       
[116] "timeBodyAccelerometerJerk-AutoregressionCoefficients-Z,1"       
[117] "timeBodyAccelerometerJerk-AutoregressionCoefficients-Z,2"       
[118] "timeBodyAccelerometerJerk-AutoregressionCoefficients-Z,3"       
[119] "timeBodyAccelerometerJerk-AutoregressionCoefficients-Z,4"       
[120] "timeBodyAccelerometerJerk-Correlation-X,Y"                      
[121] "timeBodyAccelerometerJerk-Correlation-X,Z"                      
[122] "timeBodyAccelerometerJerk-Correlation-Y,Z"                      
[123] "timeBodyGyroscope-Mean-X"                                       
[124] "timeBodyGyroscope-Mean-Y"                                       
[125] "timeBodyGyroscope-Mean-Z"                                       
[126] "timeBodyGyroscope-StandardDeviation-X"                          
[127] "timeBodyGyroscope-StandardDeviation-Y"                          
[128] "timeBodyGyroscope-StandardDeviation-Z"                          
[129] "timeBodyGyroscope-MedianAbsoluteDeviation-X"                    
[130] "timeBodyGyroscope-MedianAbsoluteDeviation-Y"                    
[131] "timeBodyGyroscope-MedianAbsoluteDeviation-Z"                    
[132] "timeBodyGyroscope-MAX-X"                                        
[133] "timeBodyGyroscope-MAX-Y"                                        
[134] "timeBodyGyroscope-MAX-Z"                                        
[135] "timeBodyGyroscope-MIN-X"                                        
[136] "timeBodyGyroscope-MIN-Y"                                        
[137] "timeBodyGyroscope-MIN-Z"                                        
[138] "timeBodyGyroscope-SignalMagnitudeArea"                          
[139] "timeBodyGyroscope-Energy-X"                                     
[140] "timeBodyGyroscope-Energy-Y"                                     
[141] "timeBodyGyroscope-Energy-Z"                                     
[142] "timeBodyGyroscope-InterquartileRange-X"                         
[143] "timeBodyGyroscope-InterquartileRange-Y"                         
[144] "timeBodyGyroscope-InterquartileRange-Z"                         
[145] "timeBodyGyroscope-Entropy-X"                                    
[146] "timeBodyGyroscope-Entropy-Y"                                    
[147] "timeBodyGyroscope-Entropy-Z"                                    
[148] "timeBodyGyroscope-AutoregressionCoefficients-X,1"               
[149] "timeBodyGyroscope-AutoregressionCoefficients-X,2"               
[150] "timeBodyGyroscope-AutoregressionCoefficients-X,3"               
[151] "timeBodyGyroscope-AutoregressionCoefficients-X,4"               
[152] "timeBodyGyroscope-AutoregressionCoefficients-Y,1"               
[153] "timeBodyGyroscope-AutoregressionCoefficients-Y,2"               
[154] "timeBodyGyroscope-AutoregressionCoefficients-Y,3"               
[155] "timeBodyGyroscope-AutoregressionCoefficients-Y,4"               
[156] "timeBodyGyroscope-AutoregressionCoefficients-Z,1"               
[157] "timeBodyGyroscope-AutoregressionCoefficients-Z,2"               
[158] "timeBodyGyroscope-AutoregressionCoefficients-Z,3"               
[159] "timeBodyGyroscope-AutoregressionCoefficients-Z,4"               
[160] "timeBodyGyroscope-Correlation-X,Y"                              
[161] "timeBodyGyroscope-Correlation-X,Z"                              
[162] "timeBodyGyroscope-Correlation-Y,Z"                              
[163] "timeBodyGyroscopeJerk-Mean-X"                                   
[164] "timeBodyGyroscopeJerk-Mean-Y"                                   
[165] "timeBodyGyroscopeJerk-Mean-Z"                                   
[166] "timeBodyGyroscopeJerk-StandardDeviation-X"                      
[167] "timeBodyGyroscopeJerk-StandardDeviation-Y"                      
[168] "timeBodyGyroscopeJerk-StandardDeviation-Z"                      
[169] "timeBodyGyroscopeJerk-MedianAbsoluteDeviation-X"                
[170] "timeBodyGyroscopeJerk-MedianAbsoluteDeviation-Y"                
[171] "timeBodyGyroscopeJerk-MedianAbsoluteDeviation-Z"                
[172] "timeBodyGyroscopeJerk-MAX-X"                                    
[173] "timeBodyGyroscopeJerk-MAX-Y"                                    
[174] "timeBodyGyroscopeJerk-MAX-Z"                                    
[175] "timeBodyGyroscopeJerk-MIN-X"                                    
[176] "timeBodyGyroscopeJerk-MIN-Y"                                    
[177] "timeBodyGyroscopeJerk-MIN-Z"                                    
[178] "timeBodyGyroscopeJerk-SignalMagnitudeArea"                      
[179] "timeBodyGyroscopeJerk-Energy-X"                                 
[180] "timeBodyGyroscopeJerk-Energy-Y"                                 
[181] "timeBodyGyroscopeJerk-Energy-Z"                                 
[182] "timeBodyGyroscopeJerk-InterquartileRange-X"                     
[183] "timeBodyGyroscopeJerk-InterquartileRange-Y"                     
[184] "timeBodyGyroscopeJerk-InterquartileRange-Z"                     
[185] "timeBodyGyroscopeJerk-Entropy-X"                                
[186] "timeBodyGyroscopeJerk-Entropy-Y"                                
[187] "timeBodyGyroscopeJerk-Entropy-Z"                                
[188] "timeBodyGyroscopeJerk-AutoregressionCoefficients-X,1"           
[189] "timeBodyGyroscopeJerk-AutoregressionCoefficients-X,2"           
[190] "timeBodyGyroscopeJerk-AutoregressionCoefficients-X,3"           
[191] "timeBodyGyroscopeJerk-AutoregressionCoefficients-X,4"           
[192] "timeBodyGyroscopeJerk-AutoregressionCoefficients-Y,1"           
[193] "timeBodyGyroscopeJerk-AutoregressionCoefficients-Y,2"           
[194] "timeBodyGyroscopeJerk-AutoregressionCoefficients-Y,3"           
[195] "timeBodyGyroscopeJerk-AutoregressionCoefficients-Y,4"           
[196] "timeBodyGyroscopeJerk-AutoregressionCoefficients-Z,1"           
[197] "timeBodyGyroscopeJerk-AutoregressionCoefficients-Z,2"           
[198] "timeBodyGyroscopeJerk-AutoregressionCoefficients-Z,3"           
[199] "timeBodyGyroscopeJerk-AutoregressionCoefficients-Z,4"           
[200] "timeBodyGyroscopeJerk-Correlation-X,Y"                          
[201] "timeBodyGyroscopeJerk-Correlation-X,Z"                          
[202] "timeBodyGyroscopeJerk-Correlation-Y,Z"                          
[203] "timeBodyAccelerometerMagnitude-Mean"                            
[204] "timeBodyAccelerometerMagnitude-StandardDeviation"               
[205] "timeBodyAccelerometerMagnitude-MedianAbsoluteDeviation"         
[206] "timeBodyAccelerometerMagnitude-MAX"                             
[207] "timeBodyAccelerometerMagnitude-MIN"                             
[208] "timeBodyAccelerometerMagnitude-SignalMagnitudeArea"             
[209] "timeBodyAccelerometerMagnitude-Energy"                          
[210] "timeBodyAccelerometerMagnitude-InterquartileRange"              
[211] "timeBodyAccelerometerMagnitude-Entropy"                         
[212] "timeBodyAccelerometerMagnitude-AutoregressionCoefficients1"     
[213] "timeBodyAccelerometerMagnitude-AutoregressionCoefficients2"     
[214] "timeBodyAccelerometerMagnitude-AutoregressionCoefficients3"     
[215] "timeBodyAccelerometerMagnitude-AutoregressionCoefficients4"     
[216] "timeGravityAccelerometerMagnitude-Mean"                         
[217] "timeGravityAccelerometerMagnitude-StandardDeviation"            
[218] "timeGravityAccelerometerMagnitude-MedianAbsoluteDeviation"      
[219] "timeGravityAccelerometerMagnitude-MAX"                          
[220] "timeGravityAccelerometerMagnitude-MIN"                          
[221] "timeGravityAccelerometerMagnitude-SignalMagnitudeArea"          
[222] "timeGravityAccelerometerMagnitude-Energy"                       
[223] "timeGravityAccelerometerMagnitude-InterquartileRange"           
[224] "timeGravityAccelerometerMagnitude-Entropy"                      
[225] "timeGravityAccelerometerMagnitude-AutoregressionCoefficients1"  
[226] "timeGravityAccelerometerMagnitude-AutoregressionCoefficients2"  
[227] "timeGravityAccelerometerMagnitude-AutoregressionCoefficients3"  
[228] "timeGravityAccelerometerMagnitude-AutoregressionCoefficients4"  
[229] "timeBodyAccelerometerJerkMagnitude-Mean"                        
[230] "timeBodyAccelerometerJerkMagnitude-StandardDeviation"           
[231] "timeBodyAccelerometerJerkMagnitude-MedianAbsoluteDeviation"     
[232] "timeBodyAccelerometerJerkMagnitude-MAX"                         
[233] "timeBodyAccelerometerJerkMagnitude-MIN"                         
[234] "timeBodyAccelerometerJerkMagnitude-SignalMagnitudeArea"         
[235] "timeBodyAccelerometerJerkMagnitude-Energy"                      
[236] "timeBodyAccelerometerJerkMagnitude-InterquartileRange"          
[237] "timeBodyAccelerometerJerkMagnitude-Entropy"                     
[238] "timeBodyAccelerometerJerkMagnitude-AutoregressionCoefficients1" 
[239] "timeBodyAccelerometerJerkMagnitude-AutoregressionCoefficients2" 
[240] "timeBodyAccelerometerJerkMagnitude-AutoregressionCoefficients3" 
[241] "timeBodyAccelerometerJerkMagnitude-AutoregressionCoefficients4" 
[242] "timeBodyGyroscopeMagnitude-Mean"                                
[243] "timeBodyGyroscopeMagnitude-StandardDeviation"                   
[244] "timeBodyGyroscopeMagnitude-MedianAbsoluteDeviation"             
[245] "timeBodyGyroscopeMagnitude-MAX"                                 
[246] "timeBodyGyroscopeMagnitude-MIN"                                 
[247] "timeBodyGyroscopeMagnitude-SignalMagnitudeArea"                 
[248] "timeBodyGyroscopeMagnitude-Energy"                              
[249] "timeBodyGyroscopeMagnitude-InterquartileRange"                  
[250] "timeBodyGyroscopeMagnitude-Entropy"                             
[251] "timeBodyGyroscopeMagnitude-AutoregressionCoefficients1"         
[252] "timeBodyGyroscopeMagnitude-AutoregressionCoefficients2"         
[253] "timeBodyGyroscopeMagnitude-AutoregressionCoefficients3"         
[254] "timeBodyGyroscopeMagnitude-AutoregressionCoefficients4"         
[255] "timeBodyGyroscopeJerkMagnitude-Mean"                            
[256] "timeBodyGyroscopeJerkMagnitude-StandardDeviation"               
[257] "timeBodyGyroscopeJerkMagnitude-MedianAbsoluteDeviation"         
[258] "timeBodyGyroscopeJerkMagnitude-MAX"                             
[259] "timeBodyGyroscopeJerkMagnitude-MIN"                             
[260] "timeBodyGyroscopeJerkMagnitude-SignalMagnitudeArea"             
[261] "timeBodyGyroscopeJerkMagnitude-Energy"                          
[262] "timeBodyGyroscopeJerkMagnitude-InterquartileRange"              
[263] "timeBodyGyroscopeJerkMagnitude-Entropy"                         
[264] "timeBodyGyroscopeJerkMagnitude-AutoregressionCoefficients1"     
[265] "timeBodyGyroscopeJerkMagnitude-AutoregressionCoefficients2"     
[266] "timeBodyGyroscopeJerkMagnitude-AutoregressionCoefficients3"     
[267] "timeBodyGyroscopeJerkMagnitude-AutoregressionCoefficients4"     
[268] "frequencyBodyAccelerometer-Mean-X"                              
[269] "frequencyBodyAccelerometer-Mean-Y"                              
[270] "frequencyBodyAccelerometer-Mean-Z"                              
[271] "frequencyBodyAccelerometer-StandardDeviation-X"                 
[272] "frequencyBodyAccelerometer-StandardDeviation-Y"                 
[273] "frequencyBodyAccelerometer-StandardDeviation-Z"                 
[274] "frequencyBodyAccelerometer-MedianAbsoluteDeviation-X"           
[275] "frequencyBodyAccelerometer-MedianAbsoluteDeviation-Y"           
[276] "frequencyBodyAccelerometer-MedianAbsoluteDeviation-Z"           
[277] "frequencyBodyAccelerometer-MAX-X"                               
[278] "frequencyBodyAccelerometer-MAX-Y"                               
[279] "frequencyBodyAccelerometer-MAX-Z"                               
[280] "frequencyBodyAccelerometer-MIN-X"                               
[281] "frequencyBodyAccelerometer-MIN-Y"                               
[282] "frequencyBodyAccelerometer-MIN-Z"                               
[283] "frequencyBodyAccelerometer-SignalMagnitudeArea"                 
[284] "frequencyBodyAccelerometer-Energy-X"                            
[285] "frequencyBodyAccelerometer-Energy-Y"                            
[286] "frequencyBodyAccelerometer-Energy-Z"                            
[287] "frequencyBodyAccelerometer-InterquartileRange-X"                
[288] "frequencyBodyAccelerometer-InterquartileRange-Y"                
[289] "frequencyBodyAccelerometer-InterquartileRange-Z"                
[290] "frequencyBodyAccelerometer-Entropy-X"                           
[291] "frequencyBodyAccelerometer-Entropy-Y"                           
[292] "frequencyBodyAccelerometer-Entropy-Z"                           
[293] "frequencyBodyAccelerometer-maxInds-X"                           
[294] "frequencyBodyAccelerometer-maxInds-Y"                           
[295] "frequencyBodyAccelerometer-maxInds-Z"                           
[296] "frequencyBodyAccelerometer-MeanFrequency-X"                     
[297] "frequencyBodyAccelerometer-MeanFrequency-Y"                     
[298] "frequencyBodyAccelerometer-MeanFrequency-Z"                     
[299] "frequencyBodyAccelerometer-Skewness-X"                          
[300] "frequencyBodyAccelerometer-Kurtosis-X"                          
[301] "frequencyBodyAccelerometer-Skewness-Y"                          
[302] "frequencyBodyAccelerometer-Kurtosis-Y"                          
[303] "frequencyBodyAccelerometer-Skewness-Z"                          
[304] "frequencyBodyAccelerometer-Kurtosis-Z"                          
[305] "frequencyBodyAccelerometer-BandsEnergy-1,8"                     
[306] "frequencyBodyAccelerometer-BandsEnergy-9,16"                    
[307] "frequencyBodyAccelerometer-BandsEnergy-17,24"                   
[308] "frequencyBodyAccelerometer-BandsEnergy-25,32"                   
[309] "frequencyBodyAccelerometer-BandsEnergy-33,40"                   
[310] "frequencyBodyAccelerometer-BandsEnergy-41,48"                   
[311] "frequencyBodyAccelerometer-BandsEnergy-49,56"                   
[312] "frequencyBodyAccelerometer-BandsEnergy-57,64"                   
[313] "frequencyBodyAccelerometer-BandsEnergy-1,16"                    
[314] "frequencyBodyAccelerometer-BandsEnergy-17,32"                   
[315] "frequencyBodyAccelerometer-BandsEnergy-33,48"                   
[316] "frequencyBodyAccelerometer-BandsEnergy-49,64"                   
[317] "frequencyBodyAccelerometer-BandsEnergy-1,24"                    
[318] "frequencyBodyAccelerometer-BandsEnergy-25,48"                   
[319] "frequencyBodyAccelerometer-BandsEnergy-1,8.1"                   
[320] "frequencyBodyAccelerometer-BandsEnergy-9,16.1"                  
[321] "frequencyBodyAccelerometer-BandsEnergy-17,24.1"                 
[322] "frequencyBodyAccelerometer-BandsEnergy-25,32.1"                 
[323] "frequencyBodyAccelerometer-BandsEnergy-33,40.1"                 
[324] "frequencyBodyAccelerometer-BandsEnergy-41,48.1"                 
[325] "frequencyBodyAccelerometer-BandsEnergy-49,56.1"                 
[326] "frequencyBodyAccelerometer-BandsEnergy-57,64.1"                 
[327] "frequencyBodyAccelerometer-BandsEnergy-1,16.1"                  
[328] "frequencyBodyAccelerometer-BandsEnergy-17,32.1"                 
[329] "frequencyBodyAccelerometer-BandsEnergy-33,48.1"                 
[330] "frequencyBodyAccelerometer-BandsEnergy-49,64.1"                 
[331] "frequencyBodyAccelerometer-BandsEnergy-1,24.1"                  
[332] "frequencyBodyAccelerometer-BandsEnergy-25,48.1"                 
[333] "frequencyBodyAccelerometer-BandsEnergy-1,8.2"                   
[334] "frequencyBodyAccelerometer-BandsEnergy-9,16.2"                  
[335] "frequencyBodyAccelerometer-BandsEnergy-17,24.2"                 
[336] "frequencyBodyAccelerometer-BandsEnergy-25,32.2"                 
[337] "frequencyBodyAccelerometer-BandsEnergy-33,40.2"                 
[338] "frequencyBodyAccelerometer-BandsEnergy-41,48.2"                 
[339] "frequencyBodyAccelerometer-BandsEnergy-49,56.2"                 
[340] "frequencyBodyAccelerometer-BandsEnergy-57,64.2"                 
[341] "frequencyBodyAccelerometer-BandsEnergy-1,16.2"                  
[342] "frequencyBodyAccelerometer-BandsEnergy-17,32.2"                 
[343] "frequencyBodyAccelerometer-BandsEnergy-33,48.2"                 
[344] "frequencyBodyAccelerometer-BandsEnergy-49,64.2"                 
[345] "frequencyBodyAccelerometer-BandsEnergy-1,24.2"                  
[346] "frequencyBodyAccelerometer-BandsEnergy-25,48.2"                 
[347] "frequencyBodyAccelerometerJerk-Mean-X"                          
[348] "frequencyBodyAccelerometerJerk-Mean-Y"                          
[349] "frequencyBodyAccelerometerJerk-Mean-Z"                          
[350] "frequencyBodyAccelerometerJerk-StandardDeviation-X"             
[351] "frequencyBodyAccelerometerJerk-StandardDeviation-Y"             
[352] "frequencyBodyAccelerometerJerk-StandardDeviation-Z"             
[353] "frequencyBodyAccelerometerJerk-MedianAbsoluteDeviation-X"       
[354] "frequencyBodyAccelerometerJerk-MedianAbsoluteDeviation-Y"       
[355] "frequencyBodyAccelerometerJerk-MedianAbsoluteDeviation-Z"       
[356] "frequencyBodyAccelerometerJerk-MAX-X"                           
[357] "frequencyBodyAccelerometerJerk-MAX-Y"                           
[358] "frequencyBodyAccelerometerJerk-MAX-Z"                           
[359] "frequencyBodyAccelerometerJerk-MIN-X"                           
[360] "frequencyBodyAccelerometerJerk-MIN-Y"                           
[361] "frequencyBodyAccelerometerJerk-MIN-Z"                           
[362] "frequencyBodyAccelerometerJerk-SignalMagnitudeArea"             
[363] "frequencyBodyAccelerometerJerk-Energy-X"                        
[364] "frequencyBodyAccelerometerJerk-Energy-Y"                        
[365] "frequencyBodyAccelerometerJerk-Energy-Z"                        
[366] "frequencyBodyAccelerometerJerk-InterquartileRange-X"            
[367] "frequencyBodyAccelerometerJerk-InterquartileRange-Y"            
[368] "frequencyBodyAccelerometerJerk-InterquartileRange-Z"            
[369] "frequencyBodyAccelerometerJerk-Entropy-X"                       
[370] "frequencyBodyAccelerometerJerk-Entropy-Y"                       
[371] "frequencyBodyAccelerometerJerk-Entropy-Z"                       
[372] "frequencyBodyAccelerometerJerk-maxInds-X"                       
[373] "frequencyBodyAccelerometerJerk-maxInds-Y"                       
[374] "frequencyBodyAccelerometerJerk-maxInds-Z"                       
[375] "frequencyBodyAccelerometerJerk-MeanFrequency-X"                 
[376] "frequencyBodyAccelerometerJerk-MeanFrequency-Y"                 
[377] "frequencyBodyAccelerometerJerk-MeanFrequency-Z"                 
[378] "frequencyBodyAccelerometerJerk-Skewness-X"                      
[379] "frequencyBodyAccelerometerJerk-Kurtosis-X"                      
[380] "frequencyBodyAccelerometerJerk-Skewness-Y"                      
[381] "frequencyBodyAccelerometerJerk-Kurtosis-Y"                      
[382] "frequencyBodyAccelerometerJerk-Skewness-Z"                      
[383] "frequencyBodyAccelerometerJerk-Kurtosis-Z"                      
[384] "frequencyBodyAccelerometerJerk-BandsEnergy-1,8"                 
[385] "frequencyBodyAccelerometerJerk-BandsEnergy-9,16"                
[386] "frequencyBodyAccelerometerJerk-BandsEnergy-17,24"               
[387] "frequencyBodyAccelerometerJerk-BandsEnergy-25,32"               
[388] "frequencyBodyAccelerometerJerk-BandsEnergy-33,40"               
[389] "frequencyBodyAccelerometerJerk-BandsEnergy-41,48"               
[390] "frequencyBodyAccelerometerJerk-BandsEnergy-49,56"               
[391] "frequencyBodyAccelerometerJerk-BandsEnergy-57,64"               
[392] "frequencyBodyAccelerometerJerk-BandsEnergy-1,16"                
[393] "frequencyBodyAccelerometerJerk-BandsEnergy-17,32"               
[394] "frequencyBodyAccelerometerJerk-BandsEnergy-33,48"               
[395] "frequencyBodyAccelerometerJerk-BandsEnergy-49,64"               
[396] "frequencyBodyAccelerometerJerk-BandsEnergy-1,24"                
[397] "frequencyBodyAccelerometerJerk-BandsEnergy-25,48"               
[398] "frequencyBodyAccelerometerJerk-BandsEnergy-1,8.1"               
[399] "frequencyBodyAccelerometerJerk-BandsEnergy-9,16.1"              
[400] "frequencyBodyAccelerometerJerk-BandsEnergy-17,24.1"             
[401] "frequencyBodyAccelerometerJerk-BandsEnergy-25,32.1"             
[402] "frequencyBodyAccelerometerJerk-BandsEnergy-33,40.1"             
[403] "frequencyBodyAccelerometerJerk-BandsEnergy-41,48.1"             
[404] "frequencyBodyAccelerometerJerk-BandsEnergy-49,56.1"             
[405] "frequencyBodyAccelerometerJerk-BandsEnergy-57,64.1"             
[406] "frequencyBodyAccelerometerJerk-BandsEnergy-1,16.1"              
[407] "frequencyBodyAccelerometerJerk-BandsEnergy-17,32.1"             
[408] "frequencyBodyAccelerometerJerk-BandsEnergy-33,48.1"             
[409] "frequencyBodyAccelerometerJerk-BandsEnergy-49,64.1"             
[410] "frequencyBodyAccelerometerJerk-BandsEnergy-1,24.1"              
[411] "frequencyBodyAccelerometerJerk-BandsEnergy-25,48.1"             
[412] "frequencyBodyAccelerometerJerk-BandsEnergy-1,8.2"               
[413] "frequencyBodyAccelerometerJerk-BandsEnergy-9,16.2"              
[414] "frequencyBodyAccelerometerJerk-BandsEnergy-17,24.2"             
[415] "frequencyBodyAccelerometerJerk-BandsEnergy-25,32.2"             
[416] "frequencyBodyAccelerometerJerk-BandsEnergy-33,40.2"             
[417] "frequencyBodyAccelerometerJerk-BandsEnergy-41,48.2"             
[418] "frequencyBodyAccelerometerJerk-BandsEnergy-49,56.2"             
[419] "frequencyBodyAccelerometerJerk-BandsEnergy-57,64.2"             
[420] "frequencyBodyAccelerometerJerk-BandsEnergy-1,16.2"              
[421] "frequencyBodyAccelerometerJerk-BandsEnergy-17,32.2"             
[422] "frequencyBodyAccelerometerJerk-BandsEnergy-33,48.2"             
[423] "frequencyBodyAccelerometerJerk-BandsEnergy-49,64.2"             
[424] "frequencyBodyAccelerometerJerk-BandsEnergy-1,24.2"              
[425] "frequencyBodyAccelerometerJerk-BandsEnergy-25,48.2"             
[426] "frequencyBodyGyroscope-Mean-X"                                  
[427] "frequencyBodyGyroscope-Mean-Y"                                  
[428] "frequencyBodyGyroscope-Mean-Z"                                  
[429] "frequencyBodyGyroscope-StandardDeviation-X"                     
[430] "frequencyBodyGyroscope-StandardDeviation-Y"                     
[431] "frequencyBodyGyroscope-StandardDeviation-Z"                     
[432] "frequencyBodyGyroscope-MedianAbsoluteDeviation-X"               
[433] "frequencyBodyGyroscope-MedianAbsoluteDeviation-Y"               
[434] "frequencyBodyGyroscope-MedianAbsoluteDeviation-Z"               
[435] "frequencyBodyGyroscope-MAX-X"                                   
[436] "frequencyBodyGyroscope-MAX-Y"                                   
[437] "frequencyBodyGyroscope-MAX-Z"                                   
[438] "frequencyBodyGyroscope-MIN-X"                                   
[439] "frequencyBodyGyroscope-MIN-Y"                                   
[440] "frequencyBodyGyroscope-MIN-Z"                                   
[441] "frequencyBodyGyroscope-SignalMagnitudeArea"                     
[442] "frequencyBodyGyroscope-Energy-X"                                
[443] "frequencyBodyGyroscope-Energy-Y"                                
[444] "frequencyBodyGyroscope-Energy-Z"                                
[445] "frequencyBodyGyroscope-InterquartileRange-X"                    
[446] "frequencyBodyGyroscope-InterquartileRange-Y"                    
[447] "frequencyBodyGyroscope-InterquartileRange-Z"                    
[448] "frequencyBodyGyroscope-Entropy-X"                               
[449] "frequencyBodyGyroscope-Entropy-Y"                               
[450] "frequencyBodyGyroscope-Entropy-Z"                               
[451] "frequencyBodyGyroscope-maxInds-X"                               
[452] "frequencyBodyGyroscope-maxInds-Y"                               
[453] "frequencyBodyGyroscope-maxInds-Z"                               
[454] "frequencyBodyGyroscope-MeanFrequency-X"                         
[455] "frequencyBodyGyroscope-MeanFrequency-Y"                         
[456] "frequencyBodyGyroscope-MeanFrequency-Z"                         
[457] "frequencyBodyGyroscope-Skewness-X"                              
[458] "frequencyBodyGyroscope-Kurtosis-X"                              
[459] "frequencyBodyGyroscope-Skewness-Y"                              
[460] "frequencyBodyGyroscope-Kurtosis-Y"                              
[461] "frequencyBodyGyroscope-Skewness-Z"                              
[462] "frequencyBodyGyroscope-Kurtosis-Z"                              
[463] "frequencyBodyGyroscope-BandsEnergy-1,8"                         
[464] "frequencyBodyGyroscope-BandsEnergy-9,16"                        
[465] "frequencyBodyGyroscope-BandsEnergy-17,24"                       
[466] "frequencyBodyGyroscope-BandsEnergy-25,32"                       
[467] "frequencyBodyGyroscope-BandsEnergy-33,40"                       
[468] "frequencyBodyGyroscope-BandsEnergy-41,48"                       
[469] "frequencyBodyGyroscope-BandsEnergy-49,56"                       
[470] "frequencyBodyGyroscope-BandsEnergy-57,64"                       
[471] "frequencyBodyGyroscope-BandsEnergy-1,16"                        
[472] "frequencyBodyGyroscope-BandsEnergy-17,32"                       
[473] "frequencyBodyGyroscope-BandsEnergy-33,48"                       
[474] "frequencyBodyGyroscope-BandsEnergy-49,64"                       
[475] "frequencyBodyGyroscope-BandsEnergy-1,24"                        
[476] "frequencyBodyGyroscope-BandsEnergy-25,48"                       
[477] "frequencyBodyGyroscope-BandsEnergy-1,8.1"                       
[478] "frequencyBodyGyroscope-BandsEnergy-9,16.1"                      
[479] "frequencyBodyGyroscope-BandsEnergy-17,24.1"                     
[480] "frequencyBodyGyroscope-BandsEnergy-25,32.1"                     
[481] "frequencyBodyGyroscope-BandsEnergy-33,40.1"                     
[482] "frequencyBodyGyroscope-BandsEnergy-41,48.1"                     
[483] "frequencyBodyGyroscope-BandsEnergy-49,56.1"                     
[484] "frequencyBodyGyroscope-BandsEnergy-57,64.1"                     
[485] "frequencyBodyGyroscope-BandsEnergy-1,16.1"                      
[486] "frequencyBodyGyroscope-BandsEnergy-17,32.1"                     
[487] "frequencyBodyGyroscope-BandsEnergy-33,48.1"                     
[488] "frequencyBodyGyroscope-BandsEnergy-49,64.1"                     
[489] "frequencyBodyGyroscope-BandsEnergy-1,24.1"                      
[490] "frequencyBodyGyroscope-BandsEnergy-25,48.1"                     
[491] "frequencyBodyGyroscope-BandsEnergy-1,8.2"                       
[492] "frequencyBodyGyroscope-BandsEnergy-9,16.2"                      
[493] "frequencyBodyGyroscope-BandsEnergy-17,24.2"                     
[494] "frequencyBodyGyroscope-BandsEnergy-25,32.2"                     
[495] "frequencyBodyGyroscope-BandsEnergy-33,40.2"                     
[496] "frequencyBodyGyroscope-BandsEnergy-41,48.2"                     
[497] "frequencyBodyGyroscope-BandsEnergy-49,56.2"                     
[498] "frequencyBodyGyroscope-BandsEnergy-57,64.2"                     
[499] "frequencyBodyGyroscope-BandsEnergy-1,16.2"                      
[500] "frequencyBodyGyroscope-BandsEnergy-17,32.2"                     
[501] "frequencyBodyGyroscope-BandsEnergy-33,48.2"                     
[502] "frequencyBodyGyroscope-BandsEnergy-49,64.2"                     
[503] "frequencyBodyGyroscope-BandsEnergy-1,24.2"                      
[504] "frequencyBodyGyroscope-BandsEnergy-25,48.2"                     
[505] "frequencyBodyAccelerometerMagnitude-Mean"                       
[506] "frequencyBodyAccelerometerMagnitude-StandardDeviation"          
[507] "frequencyBodyAccelerometerMagnitude-MedianAbsoluteDeviation"    
[508] "frequencyBodyAccelerometerMagnitude-MAX"                        
[509] "frequencyBodyAccelerometerMagnitude-MIN"                        
[510] "frequencyBodyAccelerometerMagnitude-SignalMagnitudeArea"        
[511] "frequencyBodyAccelerometerMagnitude-Energy"                     
[512] "frequencyBodyAccelerometerMagnitude-InterquartileRange"         
[513] "frequencyBodyAccelerometerMagnitude-Entropy"                    
[514] "frequencyBodyAccelerometerMagnitude-maxInds"                    
[515] "frequencyBodyAccelerometerMagnitude-MeanFrequency"              
[516] "frequencyBodyAccelerometerMagnitude-Skewness"                   
[517] "frequencyBodyAccelerometerMagnitude-Kurtosis"                   
[518] "frequencyBodyAccelerometerJerkMagnitude-Mean"                   
[519] "frequencyBodyAccelerometerJerkMagnitude-StandardDeviation"      
[520] "frequencyBodyAccelerometerJerkMagnitude-MedianAbsoluteDeviation"
[521] "frequencyBodyAccelerometerJerkMagnitude-MAX"                    
[522] "frequencyBodyAccelerometerJerkMagnitude-MIN"                    
[523] "frequencyBodyAccelerometerJerkMagnitude-SignalMagnitudeArea"    
[524] "frequencyBodyAccelerometerJerkMagnitude-Energy"                 
[525] "frequencyBodyAccelerometerJerkMagnitude-InterquartileRange"     
[526] "frequencyBodyAccelerometerJerkMagnitude-Entropy"                
[527] "frequencyBodyAccelerometerJerkMagnitude-maxInds"                
[528] "frequencyBodyAccelerometerJerkMagnitude-MeanFrequency"          
[529] "frequencyBodyAccelerometerJerkMagnitude-Skewness"               
[530] "frequencyBodyAccelerometerJerkMagnitude-Kurtosis"               
[531] "frequencyBodyGyroscopeMagnitude-Mean"                           
[532] "frequencyBodyGyroscopeMagnitude-StandardDeviation"              
[533] "frequencyBodyGyroscopeMagnitude-MedianAbsoluteDeviation"        
[534] "frequencyBodyGyroscopeMagnitude-MAX"                            
[535] "frequencyBodyGyroscopeMagnitude-MIN"                            
[536] "frequencyBodyGyroscopeMagnitude-SignalMagnitudeArea"            
[537] "frequencyBodyGyroscopeMagnitude-Energy"                         
[538] "frequencyBodyGyroscopeMagnitude-InterquartileRange"             
[539] "frequencyBodyGyroscopeMagnitude-Entropy"                        
[540] "frequencyBodyGyroscopeMagnitude-maxInds"                        
[541] "frequencyBodyGyroscopeMagnitude-MeanFrequency"                  
[542] "frequencyBodyGyroscopeMagnitude-Skewness"                       
[543] "frequencyBodyGyroscopeMagnitude-Kurtosis"                       
[544] "frequencyBodyGyroscopeJerkMagnitude-Mean"                       
[545] "frequencyBodyGyroscopeJerkMagnitude-StandardDeviation"          
[546] "frequencyBodyGyroscopeJerkMagnitude-MedianAbsoluteDeviation"    
[547] "frequencyBodyGyroscopeJerkMagnitude-MAX"                        
[548] "frequencyBodyGyroscopeJerkMagnitude-MIN"                        
[549] "frequencyBodyGyroscopeJerkMagnitude-SignalMagnitudeArea"        
[550] "frequencyBodyGyroscopeJerkMagnitude-Energy"                     
[551] "frequencyBodyGyroscopeJerkMagnitude-InterquartileRange"         
[552] "frequencyBodyGyroscopeJerkMagnitude-Entropy"                    
[553] "frequencyBodyGyroscopeJerkMagnitude-maxInds"                    
[554] "frequencyBodyGyroscopeJerkMagnitude-MeanFrequency"              
[555] "frequencyBodyGyroscopeJerkMagnitude-Skewness"                   
[556] "frequencyBodyGyroscopeJerkMagnitude-Kurtosis"                   
[557] "angle(tBodyAccelerometerMean,gravity)"                          
[558] "angle(tBodyAccelerometerJerkMean),gravityMean)"                 
[559] "angle(tBodyGyroscopeMean,gravityMean)"                          
[560] "angle(tBodyGyroscopeJerkMean,gravityMean)"                      
[561] "angle(X,gravityMean)"                                           
[562] "angle(Y,gravityMean)"                                           
[563] "angle(Z,gravityMean)" 
```
```
