#Getting and Cleaning Data
##Course Project - Tidy Data Set Codebook

###Notes on the recorded values: 
+ For the recorded values in the data set (items 4 - 135), ***Time Domain*** values were recorded by capturing data at a constant rate of 50 Hz. ***Frequency Domain*** values were produced by applying a Fast Fourier Transform to the corresponding ***Time Domain*** values.
+ The recorded motions contain both body and gravity components. The gravity component of motion was assumed to be low frequency. So the body and motion components were separated using a Butterworth low-pass filter with a 0.3 Hz cutoff frequency.
+ Acceleration motions were categorized as linear (body) acceleration or angular (gyroscope) velocity. Jerk motion values are derived in time from these values.
+ The magnitude of the three-dimensional signal were calculated via taking the [Euclidean norm](http://en.wikipedia.org/wiki/Norm_(mathematics)#Euclidean_norm).

----------

1. **Subject** - Identifier for the participants in the study  
	+ *Numeric*:	1..30
2. **Activity** - Activities participants performed while their motion was recorded. 
	+ *Factor*: 1..6
		1. WALKING		
		2. WALKING_UPSTAIRS		
		3. WALKING_DOWNSTAIRS		
		4. SITTING
		5. STANDING		
		6. LAYING
3. **Source** - Data set source for the record
	+ *Character*: "test", "train"
		1. test - test data set
		2. train - training data set
4. **Time\_Domain\_Body\_Acceleration\_Mean\_along\_the\_X\_axis** - Mean of the recorded body acceleration along the X axis of motion
	+ *Numeric*
5. **Time\_Domain\_Body\_Acceleration\_Mean\_along\_the\_Y\_axis** - Mean of the recorded body acceleration along the Y axis of motion
	+ *Numeric*
6. **Time\_Domain\_Body\_Acceleration\_Mean\_along\_the\_Z\_axis** - Mean of the recorded body acceleration along the Z axis of motion
	+ *Numeric*
7. **Time\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_X\_axis** - Standard deviation of the recorded body acceleration along the X axis of motion
	+ *Numeric*
8. **Time\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_Y\_axis** - Standard deviation of the recorded body acceleration along the Y axis of motion
	+ *Numeric*
9. **Time\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_Z\_axis** - Standard deviation of the recorded body acceleration along the Z axis of motion
	+ *Numeric*
10. **Time\_Domain\_Gravity\_Acceleration\_Mean\_along\_the\_X\_axis** - Mean of the recorded gravity acceleration along the X axis of motion
	+ *Numeric*
11. **Time\_Domain\_Gravity\_Acceleration\_Mean\_along\_the\_Y\_axis** - Mean of the recorded gravity acceleration along the Y axis of motion
	+ *Numeric*
12. **Time\_Domain\_Gravity\_Acceleration\_Mean\_along\_the\_Z\_axis** - Mean of the recorded gravity acceleration along the Z axis of motion
	+ *Numeric*
13. **Time\_Domain\_Gravity\_Acceleration\_StandardDev\_along\_the\_X\_axis** - Standard deviation of the recorded gravity acceleration along the X axis of motion
	+ *Numeric*
14. **Time\_Domain\_Gravity\_Acceleration\_StandardDev\_along\_the\_Y\_axis** - Standard deviation of the recorded gravity acceleration along the Y axis of motion
	+ *Numeric*
15. **Time\_Domain\_Gravity\_Acceleration\_StandardDev\_along\_the\_Z\_axis** - Standard deviation of the recorded gravity acceleration along the Z axis of motion
	+ *Numeric*
16. **Time\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_X\_axis** - Mean of the body jerk along the X axis of motion
	+ *Numeric*
17. **Time\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_Y\_axis** - Mean of the body jerk along the Y axis of motion
	+ *Numeric*
18. **Time\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_Z\_axis** - Mean of the body jerk along the Z axis of motion
	+ *Numeric*
19. **Time\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_X\_axis** - Standard deviation of the body jerk along the X axis of motion
	+ *Numeric*
20. **Time\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_Y\_axis** - Standard deviation of the body jerk along the Y axis of motion
	+ *Numeric*
21. **Time\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_Z\_axis** - Standard deviation of the body jerk along the Z axis of motion
	+ *Numeric*
22. **Time\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_X\_axis** - Mean of the body angular velocity (gyroscope) along the X axis of motion
	+ *Numeric*
23. **Time\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_Y\_axis** - Mean of the body angular velocity (gyroscope) along the Y axis of motion
	+ *Numeric*
24. **Time\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_Z\_axis** - Mean of the body angular velocity (gyroscope) along the Z axis of motion
	+ *Numeric*
25. **Time\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_X\_axis** - Standard deviation of the body angular velocity (gyroscope) along the X axis of motion
	+ *Numeric*
26. **Time\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_Y\_axis** - Standard deviation of the body angular velocity (gyroscope) along the Y axis of motion
	+ *Numeric*
27. **Time\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_Z\_axis** - Standard deviation of the body angular velocity (gyroscope) along the Z axis of motion
	+ *Numeric*
28. **Time\_Domain\_Body\_GyroscopeJerk\_Mean\_along\_the\_X\_axis** - Mean of the body angular velocity (gyroscope) jerk along the X axis of motion
	+ *Numeric*
29. **Time\_Domain\_Body\_GyroscopeJerk\_Mean\_along\_the\_Y\_axis** - Mean of the body angular velocity (gyroscope) jerk along the Y axis of motion
	+ *Numeric*
30. **Time\_Domain\_Body\_GyroscopeJerk\_Mean\_along\_the\_Z\_axis** - Mean of the body angular velocity (gyroscope) jerk along the Z axis of motion
	+ *Numeric*
31. **Time\_Domain\_Body\_GyroscopeJerk\_StandardDev\_along\_the\_X\_axis** - Standard deviation of the body angular velocity (gyroscope) jerk along the X axis of motion
	+ *Numeric*
32. **Time\_Domain\_Body\_GyroscopeJerk\_StandardDev\_along\_the\_Y\_axis** - Standard deviation of the body angular velocity (gyroscope) jerk along the Y axis of motion
	+ *Numeric*
33. **Time\_Domain\_Body\_GyroscopeJerk\_StandardDev\_along\_the\_Z\_axis** - Standard deviation of the body angular velocity (gyroscope) jerk along the Z axis of motion
	+ *Numeric*
34. **Time\_Domain\_Body\_AccelerationMag\_Mean\_along\_all\_axes** - Mean of the magnitude of the body acceleration along all axes (calculated via the Euclidean norm)
	+ *Numeric*
35. **Time\_Domain\_Body\_AccelerationMag\_StandardDev\_along\_all\_axes** - Standard deviation of the magnitude of the body acceleration along all axes (calculated via the Euclidean norm)
	+ *Numeric*
36. **Time\_Domain\_Gravity\_AccelerationMag\_Mean\_along\_all\_axes** - Mean of the magnitude of the gravity acceleration along all axes (calculated via the Euclidean norm)
	+ *Numeric*
37. **Time\_Domain\_Gravity\_AccelerationMag\_StandardDev\_along\_all\_axes** - Standard deviation of the magnitude of the gravity acceleration along all axes (calculated via the Euclidean norm)
	+ *Numeric*
38. **Time\_Domain\_Body\_AccelerationJerkMag\_Mean\_along\_all\_axes** - Mean of the magnitude of the body jerk along all axes (calculated via the Euclidean norm)
	+ *Numeric*
39. **Time\_Domain\_Body\_AccelerationJerkMag\_StandardDev\_along\_all\_axes** - Standard deviation of the magnitude of the body jerk along all axes (calculated via the Euclidean norm)
	+ *Numeric*
40. **Time\_Domain\_Body\_GyroscopeMag\_Mean\_along\_all\_axes** - Mean of the angular (gyroscope) acceleration along all axes (calculated via the Euclidean norm)
	+ *Numeric*
41. **Time\_Domain\_Body\_GyroscopeMag\_StandardDev\_along\_all\_axes** - Standard deviation of the angular (gyroscope) acceleration along all axes (calculated via the Euclidean norm)
	+ *Numeric*
42. **Time\_Domain\_Body\_GyroscopeJerkMag\_Mean\_along\_all\_axes** - Mean of the angular (gyroscope) jerk along all axes (calculated via the Euclidean norm)
	+ *Numeric*
43. **Time\_Domain\_Body\_GyroscopeJerkMag\_StandardDev\_along\_all\_axes** - Standard deviation of the angular (gyroscope) jerk along all axes (calculated via the Euclidean norm)
	+ *Numeric*
44. **Freq\_Domain\_Body\_Acceleration\_Mean\_along\_the\_X\_axis** - Standard deviation of the frequency body acceleration along the X axis
	+ *Numeric*
45. **Freq\_Domain\_Body\_Acceleration\_Mean\_along\_the\_Y\_axis** - Mean of the frequency body acceleration along the Y axis
	+ *Numeric* 
46. **Freq\_Domain\_Body\_Acceleration\_Mean\_along\_the\_Z\_axis** - Mean of the frequency body acceleration along the Z axis
	+ *Numeric* 
47. **Freq\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_X\_axis** - Standard deviation of the frequency body acceleration along the X axis
	+ *Numeric* 
48. **Freq\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_Y\_axis** - Standard deviation of the frequency body acceleration along the Y axis
	+ *Numeric* 
49. **Freq\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_Z\_axis** - Standard deviation of the frequency body acceleration along the Z axis
	+ *Numeric* 
50. **Freq\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_X\_axis** - Mean of the frequency body jerk along the X axis
	+ *Numeric* 
51. **Freq\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_Y\_axis** - Mean of the frequency body jerk along the Y axis
	+ *Numeric* 
52. **Freq\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_Z\_axis** - Mean of the frequency body jerk along the Z axis
	+ *Numeric* 
53. **Freq\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_X\_axis** - Standard deviation of the frequency body jerk along the X axis
	+ *Numeric* 
54. **Freq\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_Y\_axis** - Standard deviation of the frequency body jerk along the Y axis
	+ *Numeric* 
55. **Freq\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_Z\_axis** - Standard deviation of the frequency body jerk along the Z axis
	+ *Numeric* 
56. **Freq\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_X\_axis** - Mean of the frequency angular (gyroscope) acceleration along the X axis
	+ *Numeric* 
57. **Freq\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_Y\_axis** - Mean of the frequency angular (gyroscope) acceleration along the Y axis
	+ *Numeric* 
58. **Freq\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_Z\_axis** - Mean of the frequency angular (gyroscope) acceleration along the Z axis
	+ *Numeric* 
59. **Freq\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_X\_axis** - Standard deviation of the frequency angular (gyroscope) acceleration along the X axis
	+ *Numeric* 
60. **Freq\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_Y\_axis** - Standard deviation of the frequency angular (gyroscope) acceleration along the Y axis
	+ *Numeric* 
61. **Freq\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_Z\_axis** - Standard deviation of the frequency angular (gyroscope) acceleration along the Z axis
	+ *Numeric* 
62. **Freq\_Domain\_Body\_AccelerationMag\_Mean\_along\_all\_axes** - Mean of the frequency body acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
63. **Freq\_Domain\_Body\_AccelerationMag\_StandardDev\_along\_all\_axes** - Standard deviation of the frequency body acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
64. **Freq\_Domain\_Body\_Acceleration\_Jerk\_Magnitude\_Mean\_along\_all\_axes** - Mean of the frequency body jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
65. **Freq\_Domain\_Body\_Acceleration\_Jerk\_Magnitude\_StandardDev\_along\_all\_axes** - Standard deviation of the frequency body jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
66. **Freq\_Domain\_Body\_Gyroscope\_Jerk\_Magnitude\_Mean\_along\_all\_axes** - Mean of the frequency body jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
67. **Freq\_Domain\_Body\_Gyroscope\_Jerk\_Magnitude\_StandardDev\_along\_all\_axes** - Standard deviation of the frequency angular (gyroscope) jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
68. **Freq\_Domain\_Body\_Body\_Gyroscope\_Jerk\_Magnitude\_Mean\_along\_all\_axes** - Mean of the frequency angular (gyroscope) jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
69. **Freq\_Domain\_Body\_Body\_Gyroscope\_Jerk\_Magnitude\_StandardDev\_along\_all\_axes** - Standard deviation of the frequency angular (gyroscope) jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
70. **Mean\_of\_Time\_Domain\_Body\_Acceleration\_Mean\_along\_the\_X\_axis** - Mean of the mean of the body acceleration along the X axis
	+ *Numeric* 
71. **Mean\_of\_Time\_Domain\_Body\_Acceleration\_Mean\_along\_the\_Y\_axis** - Mean of the mean of the body acceleration along the Y axis
	+ *Numeric* 
72. **Mean\_of\_Time\_Domain\_Body\_Acceleration\_Mean\_along\_the\_Z\_axis** - Mean of the mean of the body acceleration along the Z axis
	+ *Numeric* 
73. **Mean\_of\_Time\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_X\_axis** - Mean of the standard deviation of the body acceleration along the X axis
	+ *Numeric* 
74. **Mean\_of\_Time\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_Y\_axis** - Mean of the standard deviation of the body acceleration along the Y axis
	+ *Numeric* 
75. **Mean\_of\_Time\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_Z\_axis** - Mean of the standard deviation of the body acceleration along the Z axis
	+ *Numeric* 
76. **Mean\_of\_Time\_Domain\_Gravity\_Acceleration\_Mean\_along\_the\_X\_axis** - Mean of the mean of the gravity acceleration along the X axis
	+ *Numeric* 
77. **Mean\_of\_Time\_Domain\_Gravity\_Acceleration\_Mean\_along\_the\_Y\_axis** - Mean of the mean of the gravity acceleration along the Y axis
	+ *Numeric* 
78. **Mean\_of\_Time\_Domain\_Gravity\_Acceleration\_Mean\_along\_the\_Z\_axis** - Mean of the mean of the gravity acceleration along the Z axis
	+ *Numeric* 
79. **Mean\_of\_Time\_Domain\_Gravity\_Acceleration\_StandardDev\_along\_the\_X\_axis** - Mean of the standard deviation of the gravity acceleration along the X axis
	+ *Numeric* 
80. **Mean\_of\_Time\_Domain\_Gravity\_Acceleration\_StandardDev\_along\_the\_Y\_axis** - Mean of the standard deviation of the gravity acceleration along the Y axis
	+ *Numeric* 
81. **Mean\_of\_Time\_Domain\_Gravity\_Acceleration\_StandardDev\_along\_the\_Z\_axis** - Mean of the standard deviation of the gravity acceleration along the Z axis
	+ *Numeric* 
82. **Mean\_of\_Time\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_X\_axis** - Mean of the mean of the body jerk along the X axis
	+ *Numeric* 
83. **Mean\_of\_Time\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_Y\_axis** - Mean of the mean of the body jerk along the Y axis
	+ *Numeric* 
84. **Mean\_of\_Time\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_Z\_axis** - Mean of the mean of the body jerk along the Z axis
	+ *Numeric* 
85. **Mean\_of\_Time\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_X\_axis** - Mean of the standard deviation of the body jerk along the X axis
	+ *Numeric* 
86. **Mean\_of\_Time\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_Y\_axis** - Mean of the standard deviation of the body jerk along the Y axis
	+ *Numeric* 
87. **Mean\_of\_Time\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_Z\_axis** - Mean of the standard deviation of the body jerk along the Z axis
	+ *Numeric* 
88. **Mean\_of\_Time\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_X\_axis** - Mean of the mean of the angular (gyroscope) acceleration along the X axis
	+ *Numeric* 
89. **Mean\_of\_Time\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_Y\_axis** - Mean of the mean of the angular (gyroscope) acceleration along the Y axis
	+ *Numeric* 
90. **Mean\_of\_Time\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_Z\_axis** - Mean of the mean of the angular (gyroscope) acceleration along the Z axis
	+ *Numeric* 
91. **Mean\_of\_Time\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_X\_axis** - Mean of the standard deviation of the angular (gyroscope) acceleration along the X axis
	+ *Numeric* 
92. **Mean\_of\_Time\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_Y\_axis** - Mean of the standard deviation of the angular (gyroscope) acceleration along the Y axis
	+ *Numeric* 
93. **Mean\_of\_Time\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_Z\_axis** - Mean of the standard deviation of the angular (gyroscope) acceleration along the Z axis
	+ *Numeric* 
94. **Mean\_of\_Time\_Domain\_Body\_GyroscopeJerk\_Mean\_along\_the\_X\_axis** - Mean of the mean of the angular (gyroscope) jerk along the X axis
	+ *Numeric* 
95. **Mean\_of\_Time\_Domain\_Body\_GyroscopeJerk\_Mean\_along\_the\_Y\_axis** - Mean of the mean of the angular (gyroscope) jerk along the X axis
	+ *Numeric* 
96. **Mean\_of\_Time\_Domain\_Body\_GyroscopeJerk\_Mean\_along\_the\_Z\_axis** - Mean of the mean of the angular (gyroscope) jerk along the Z axis
	+ *Numeric* 
97. **Mean\_of\_Time\_Domain\_Body\_GyroscopeJerk\_StandardDev\_along\_the\_X\_axis** - Mean of the standard deviation of the angular (gyroscope) jerk along the X axis
	+ *Numeric* 
98. **Mean\_of\_Time\_Domain\_Body\_GyroscopeJerk\_StandardDev\_along\_the\_Y\_axis** - Mean of the standard deviation of the angular (gyroscope) jerk along the Y axis
	+ *Numeric* 
99. **Mean\_of\_Time\_Domain\_Body\_GyroscopeJerk\_StandardDev\_along\_the\_Z\_axis** - Mean of the standard deviation of the angular (gyroscope) jerk along the Z axis
	+ *Numeric* 
100. **Mean\_of\_Time\_Domain\_Body\_AccelerationMag\_Mean\_along\_all\_axes** - Mean of the mean of the body acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
101. **Mean\_of\_Time\_Domain\_Body\_AccelerationMag\_StandardDev\_along\_all\_axes** - Mean of the standard deviation of the frequency body acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
102. **Mean\_of\_Time\_Domain\_Gravity\_AccelerationMag\_Mean\_along\_all\_axes** - Mean of the mean of the gravity acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
103. **Mean\_of\_Time\_Domain\_Gravity\_AccelerationMag\_StandardDev\_along\_all\_axes** - Mean of the standard deviation of the gravity acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
104. **Mean\_of\_Time\_Domain\_Body\_AccelerationJerkMag\_Mean\_along\_all\_axes** - Mean of the mean of the body jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
105. **Mean\_of\_Time\_Domain\_Body\_AccelerationJerkMag\_StandardDev\_along\_all\_axes** - Mean of the standard deviation of the body jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
106. **Mean\_of\_Time\_Domain\_Body\_GyroscopeMag\_Mean\_along\_all\_axes** - Mean of the mean of the angular (gyroscope) acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
107. **Mean\_of\_Time\_Domain\_Body\_GyroscopeMag\_StandardDev\_along\_all\_axes** - Mean of the standard deviation of the angular (gyroscope) acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
108. **Mean\_of\_Time\_Domain\_Body\_GyroscopeJerkMag\_Mean\_along\_all\_axes** - Mean of the mean of the angular (gyroscope) jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
109. **Mean\_of\_Time\_Domain\_Body\_GyroscopeJerkMag\_StandardDev\_along\_all\_axes** - Mean of the standard deviation of the angular (gyroscope) jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
110. **Mean\_of\_Freq\_Domain\_Body\_Acceleration\_Mean\_along\_the\_X\_axis** - Mean of the mean of the frequency body acceleration along the X axis
	+ *Numeric* 
111. **Mean\_of\_Freq\_Domain\_Body\_Acceleration\_Mean\_along\_the\_Y\_axis** - Mean of the mean of the frequency body acceleration along the Y axis
	+ *Numeric* 
112. **Mean\_of\_Freq\_Domain\_Body\_Acceleration\_Mean\_along\_the\_Z\_axis** - Mean of the mean of the frequency body acceleration along the Z axis
	+ *Numeric* 
113. **Mean\_of\_Freq\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_X\_axis** - Mean of the standard deviation of the frequency body acceleration along the X axis
	+ *Numeric* 
114. **Mean\_of\_Freq\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_Y\_axis** - Mean of the standard deviation of the frequency body acceleration along the Y axis
	+ *Numeric* 
115. **Mean\_of\_Freq\_Domain\_Body\_Acceleration\_StandardDev\_along\_the\_Z\_axis** - Mean of the standard deviation of the frequency body acceleration along the Z axis
	+ *Numeric* 
116. **Mean\_of\_Freq\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_X\_axis** - Mean of the mean of the frequency body jerk along the X axis
	+ *Numeric* 
117. **Mean\_of\_Freq\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_Y\_axis** - Mean of the mean of the frequency body jerk along the Y axis
	+ *Numeric* 
118. **Mean\_of\_Freq\_Domain\_Body\_AccelerationJerk\_Mean\_along\_the\_Z\_axis** - Mean of the mean of the frequency body jerk along the Z axis
	+ *Numeric* 
119. **Mean\_of\_Freq\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_X\_axis** - Mean of the standard deviation of the frequency body jerk along the X axis
	+ *Numeric* 
120. **Mean\_of\_Freq\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_Y\_axis** - Mean of the standard deviation of the frequency body jerk along the Y axis
	+ *Numeric* 
121. **Mean\_of\_Freq\_Domain\_Body\_AccelerationJerk\_StandardDev\_along\_the\_Z\_axis** - Mean of the standard deviation of the frequency body jerk along the Z axis
	+ *Numeric* 
122. **Mean\_of\_Freq\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_X\_axis** - Mean of the mean of the frequency angular (gyroscope) acceleration along the X axis
	+ *Numeric* 
123. **Mean\_of\_Freq\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_Y\_axis** - Mean of the mean of the frequency angular (gyroscope) acceleration along the Y axis
	+ *Numeric* 
124. **Mean\_of\_Freq\_Domain\_Body\_Gyroscope\_Mean\_along\_the\_Z\_axis** - Mean of the mean of the frequency angular (gyroscope) acceleration along the Z axis
	+ *Numeric* 
125. **Mean\_of\_Freq\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_X\_axis** - Mean of the standard deviation of the frequency angular (gyroscope) acceleration along the X axis
	+ *Numeric* 
126. **Mean\_of\_Freq\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_Y\_axis** - Mean of the standard deviation of the frequency angular (gyroscope) acceleration along the Y axis
	+ *Numeric* 
127. **Mean\_of\_Freq\_Domain\_Body\_Gyroscope\_StandardDev\_along\_the\_Z\_axis** - Mean of the standard deviation of the frequency angular (gyroscope) acceleration along the Z axis
	+ *Numeric* 
128. **Mean\_of\_Freq\_Domain\_Body\_AccelerationMag\_Mean\_along\_all\_axes** - Mean of the mean of the frequency body acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
129. **Mean\_of\_Freq\_Domain\_Body\_AccelerationMag\_StandardDev\_along\_all\_axes** - Mean of the standard deviation of the frequency body acceleration magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
130. **Mean\_of\_Freq\_Domain\_Body\_Acceleration\_Jerk\_Magnitude\_Mean\_along\_all\_axes** - Mean of the mean of the body jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
131. **Mean\_of\_Freq\_Domain\_Body\_Acceleration\_Jerk\_Magnitude\_StandardDev\_along\_all\_axes** - Mean of the standard deviation of the frequency body jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
132. **Mean\_of\_Freq\_Domain\_Body\_Gyroscope\_Jerk\_Magnitude\_Mean\_along\_all\_axes** - Mean of the mean of the frequency angular (gyroscope) jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
133. **Mean\_of\_Freq\_Domain\_Body\_Gyroscope\_Jerk\_Magnitude\_StandardDev\_along\_all\_axes** - Mean of the standard deviation of the frequency angular (gyroscope) magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
134. **Mean\_of\_Freq\_Domain\_Body\_Body\_Gyroscope\_Jerk\_Magnitude\_Mean\_along\_all\_axes** - Mean of the mean of the frequency angular (gyroscope) magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
135. **Mean\_of\_Freq\_Domain\_Body\_Body\_Gyroscope\_Jerk\_Magnitude\_StandardDev\_along\_all\_axes.** - Mean of the standard deviation of the frequency angular (gyroscope) jerk magnitude along all axes (via the Euclidean norm)
	+ *Numeric* 
