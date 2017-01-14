# Code Book

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
   **tGravityAcc-mean()-Y**  
   **tGravityAcc-mean()-Z**  
   *Numeric, [-1,1]*  
   Average of gravity acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tGravityAcc-std()-X**  
   **tGravityAcc-std()-Y**  
   **tGravityAcc-std()-Z**  
   *Numeric, [-1,1]*  
   Standard deviation of gravity acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tBodyAccJerk-mean()-X**  
   **tBodyAccJerk-mean()-Y**  
   **tBodyAccJerk-mean()-Z**  
   *Numeric, [-1,1]*  
   Average of the Jerk signal calculated on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 2](#note2).

* **tBodyAccJerk-std()-X**  
   **tBodyAccJerk-std()-Y**  
   **tBodyAccJerk-std()-Z**  
   *Numeric, [-1,1]*  
   Standard deviation of the Jerk signal calculated on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 2](#note2).

* **tBodyGyro-mean()-X**  
   **tBodyGyro-mean()-Y**  
   **tBodyGyro-mean()-Z**  
   *Numeric, [-1,1]*  
   Average of body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tBodyGyro-std()-X**  
   **tBodyGyro-std()-Y**  
   **tBodyGyro-std()-Z**  
   *Numeric, [-1,1]*  
   Standard deviation of body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tBodyGyroJerk-mean()-X**  
   **tBodyGyroJerk-mean()-Y**  
   **tBodyGyroJerk-mean()-Z**  
   *Numeric, [-1,1]*  
   Average of the Jerk signal calculated on the body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 2](#note2).

* **tBodyGyroJerk-std()-X**  
   **tBodyGyroJerk-std()-Y**  
   **tBodyGyroJerk-std()-Z**  
   *Numeric, [-1,1]*  
   Standard deviation of the Jerk signal calculated on the body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 2](#note2).

* **tBodyAccMag-mean()**
   *Numeric, [-1,1]*  
   Average of the magnitude of the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tBodyAccMag-std()**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tGravityAccMag-mean()**
   *Numeric, [-1,1]*  
   Average of the magnitude of the gravity acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tGravityAccMag-std()**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the gravity acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tBodyAccJerkMag-mean()**
   *Numeric, [-1,1]*  
   Average of the magnitude of the Jerk signal calculated on the gravity acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **tBodyAccJerkMag-std()**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Jerk signal calculated on the gravity acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **tBodyGyroMag-mean()**
   *Numeric, [-1,1]*  
   Average of the magnitude of the angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tBodyGyroMag-std()**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tBodyGyroJerkMag-mean()**
   *Numeric, [-1,1]*  
   Average of the magnitude of the Jerk signal calculated on the angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **tBodyGyroJerkMag-std()**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Jerk signal calculated on the angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **fBodyAcc-mean()-X**  
   **fBodyAcc-mean()-Y**  
   **fBodyAcc-mean()-Z**  
   *Numeric, [-1,1]*  
   Average of Fast Fourier Transform (FFT) applied on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyAcc-std()-X**  
   **fBodyAcc-std()-Y**  
   **fBodyAcc-std()-Z**  
   *Numeric, [-1,1]*  
   Standard deviation of Fast Fourier Transform (FFT) applied on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyAccJerk-mean()-X**  
   **fBodyAccJerk-mean()-Y**  
   **fBodyAccJerk-mean()-Z**  
   *Numeric, [-1,1]*  
   Average of Fast Fourier Transform (FFT) applied on the Jerk signal calculated on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyAccJerk-std()-X**  
   **fBodyAccJerk-std()-Y**  
   **fBodyAccJerk-std()-Z**  
   *Numeric, [-1,1]*  
   Standard deviation of Fast Fourier Transform (FFT) applied on the Jerk signal calculated on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyGyro-mean()-X**  
   **fBodyGyro-mean()-Y**  
   **fBodyGyro-mean()-Z**  
   *Numeric, [-1,1]*  
   Average of Fast Fourier Transform (FFT) applied on the body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyGyro-std()-X**  
   **fBodyGyro-std()-Y**  
   **fBodyGyro-std()-Z**  
   *Numeric, [-1,1]*  
   Standard deviation of Fast Fourier Transform (FFT) applied on the body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyAccMag-mean()**  
   *Numeric, [-1,1]*  
   Average of the magnitude of the Fast Fourier Transform (FFT) applied on the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **fBodyAccMag-std()**  
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Fast Fourier Transform (FFT) applied on the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **fBodyBodyAccJerkMag-mean()**  
   *Numeric, [-1,1]*  
   Average of the magnitude of the Fast Fourier Transform (FFT) applied on the Jerk signal applied on the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **fBodyBodyAccJerkMag-std()**  
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Fast Fourier Transform (FFT) applied on the Jerk signal applied on the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **fBodyBodyGyroMag-mean()**  
   *Numeric, [-1,1]*  
   Average of the magnitude of the Fast Fourier Transform (FFT) applied on the body angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **fBodyBodyGyroMag-std()**  
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Fast Fourier Transform (FFT) applied on the body angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **fBodyBodyGyroJerkMag-mean()**  
   *Numeric, [-1,1]*  
   Average of the magnitude of the Fast Fourier Transform (FFT) applied on the Jerk signal applied on the body angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **fBodyBodyGyroJerkMag-std()**  
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Fast Fourier Transform (FFT) applied on the Jerk signal applied on the body angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).


---

<a name="note1">**Note 1**</a>:  
The accelerometer and gyroscope 3-axial signal were captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

<a name="note2">**Note 2**</a>:  
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

<a name="note3">**Note 3**</a>:  
The magnitude of these three-dimensional signals were calculated using the Euclidean norm.