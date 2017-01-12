# Code Book

---

**Note from Coursera:** 

_The repository should contain a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information._

---

* **subject**  
   *Integer, 1:30*  
   Anonymous ID of the subject who participated in the experiment.

* **activity**  
   *Factor, 6 levels*  
   Explains the activity the subject was doing when the measures were taken.  
   Possible values:  
  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS
  * SITTING
  * STANDING
  * LAYING


* **tBodyAcc-mean()-X**  
   **tBodyAcc-mean()-Y**  
   **tBodyAcc-mean()-Z**  
   *Numeric, [-1,1]*  
   Average of body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tBodyAcc-std()-X**  
   **tBodyAcc-std()-Y**  
   **tBodyAcc-std()-Z**  
   *Numeric, [-1,1]*  
   Standard deviation of body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tGravityAcc-mean()-X**
* **tGravityAcc-mean()-Y**
* **tGravityAcc-mean()-Z**
   
   Abc

* **tGravityAcc-std()-X**
* **tGravityAcc-std()-Y**
* **tGravityAcc-std()-Z**
   
   Abc

* **tBodyAccJerk-mean()-X**
* **tBodyAccJerk-mean()-Y**
* **tBodyAccJerk-mean()-Z**
   
   Abc

* **tBodyAccJerk-std()-X**
* **tBodyAccJerk-std()-Y**
* **tBodyAccJerk-std()-Z**
   
   Abc

* **tBodyGyro-mean()-X**
* **tBodyGyro-mean()-Y**
* **tBodyGyro-mean()-Z**
   
   Abc

* **tBodyGyro-std()-X**
* **tBodyGyro-std()-Y**
* **tBodyGyro-std()-Z**
   
   Abc

* **tBodyGyroJerk-mean()-X**
* **tBodyGyroJerk-mean()-Y**
* **tBodyGyroJerk-mean()-Z**
   
   Abc

* **tBodyGyroJerk-std()-X**
* **tBodyGyroJerk-std()-Y**
* **tBodyGyroJerk-std()-Z**
   
   Abc

* **tBodyAccMag-mean()**

   Abc

* **tBodyAccMag-std()**

   Abc

* **tGravityAccMag-mean()**

   Abc

* **tGravityAccMag-std()**

   Abc

* **tBodyAccJerkMag-mean()**

   Abc

* **tBodyAccJerkMag-std()**

   Abc

* **tBodyGyroMag-mean()**

   Abc

* **tBodyGyroMag-std()**

   Abc

* **tBodyGyroJerkMag-mean()**

   Abc

* **tBodyGyroJerkMag-std()**

   Abc

* **fBodyAcc-mean()-X**
* **fBodyAcc-mean()-Y**
* **fBodyAcc-mean()-Z**
   
   Abc

* **fBodyAcc-std()-X**
* **fBodyAcc-std()-Y**
* **fBodyAcc-std()-Z**
   
   Abc

* **fBodyAccJerk-mean()-X**
* **fBodyAccJerk-mean()-Y**
* **fBodyAccJerk-mean()-Z**
   
   Abc

* **fBodyAccJerk-std()-X**
* **fBodyAccJerk-std()-Y**
* **fBodyAccJerk-std()-Z**
   
   Abc

* **fBodyGyro-mean()-X**
* **fBodyGyro-mean()-Y**
* **fBodyGyro-mean()-Z**
   
   Abc

* **fBodyGyro-std()-X**
* **fBodyGyro-std()-Y**
* **fBodyGyro-std()-Z**
   
   Abc

* **fBodyAccMag-mean()**

   Abc

* **fBodyAccMag-std()**

   Abc

* **fBodyBodyAccJerkMag-mean()**

   Abc

* **fBodyBodyAccJerkMag-std()**

   Abc

* **fBodyBodyGyroMag-mean()**

   Abc

* **fBodyBodyGyroMag-std()**

   Abc

* **fBodyBodyGyroJerkMag-mean()**

   Abc

* **fBodyBodyGyroJerkMag-std()**

   Abc


---

<a name="note1">**Note 1**</a>:  
The accelerometer 3-axial signal was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.