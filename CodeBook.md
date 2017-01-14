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


* **tBodyAccMean.X**  
   **tBodyAccMean.Y**  
   **tBodyAccMean.Z**  
   *Numeric, [-1,1]*  
   Average of body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tBodyAccStd.X**  
   **tBodyAccStd.Y**  
   **tBodyAccStd.Z**  
   *Numeric, [-1,1]*  
   Standard deviation of body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tGravityAccMean.X**  
   **tGravityAccMean.Y**  
   **tGravityAccMean.Z**  
   *Numeric, [-1,1]*  
   Average of gravity acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tGravityAccStd.X**  
   **tGravityAccStd.Y**  
   **tGravityAccStd.Z**  
   *Numeric, [-1,1]*  
   Standard deviation of gravity acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tBodyAccJerkMean.X**  
   **tBodyAccJerkMean.Y**  
   **tBodyAccJerkMean.Z**  
   *Numeric, [-1,1]*  
   Average of the Jerk signal calculated on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 2](#note2).

* **tBodyAccJerkStd.X**  
   **tBodyAccJerkStd.Y**  
   **tBodyAccJerkStd.Z**  
   *Numeric, [-1,1]*  
   Standard deviation of the Jerk signal calculated on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 2](#note2).

* **tBodyGyroMean.X**  
   **tBodyGyroMean.Y**  
   **tBodyGyroMean.Z**  
   *Numeric, [-1,1]*  
   Average of body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tBodyGyroStd.X**  
   **tBodyGyroStd.Y**  
   **tBodyGyroStd.Z**  
   *Numeric, [-1,1]*  
   Standard deviation of body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 1](#note1).

* **tBodyGyroJerkMean.X**  
   **tBodyGyroJerkMean.Y**  
   **tBodyGyroJerkMean.Z**  
   *Numeric, [-1,1]*  
   Average of the Jerk signal calculated on the body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 2](#note2).

* **tBodyGyroJerkStd.X**  
   **tBodyGyroJerkStd.Y**  
   **tBodyGyroJerkStd.Z**  
   *Numeric, [-1,1]*  
   Standard deviation of the Jerk signal calculated on the body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].  
   Details: see [note 2](#note2).

* **tBodyAccMagMean**
   *Numeric, [-1,1]*  
   Average of the magnitude of the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tBodyAccMagStd**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tGravityAccMagMean**
   *Numeric, [-1,1]*  
   Average of the magnitude of the gravity acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tGravityAccMagStd**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the gravity acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tBodyAccJerkMagMean**
   *Numeric, [-1,1]*  
   Average of the magnitude of the Jerk signal calculated on the gravity acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **tBodyAccJerkMagStd**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Jerk signal calculated on the gravity acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **tBodyGyroMagMean**
   *Numeric, [-1,1]*  
   Average of the magnitude of the angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tBodyGyroMagStd**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **tBodyGyroJerkMagMean**
   *Numeric, [-1,1]*  
   Average of the magnitude of the Jerk signal calculated on the angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **tBodyGyroJerkMagStd**
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Jerk signal calculated on the angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **fBodyAccMean.X**  
   **fBodyAccMean.Y**  
   **fBodyAccMean.Z**  
   *Numeric, [-1,1]*  
   Average of Fast Fourier Transform (FFT) applied on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyAccStd.X**  
   **fBodyAccStd.Y**  
   **fBodyAccStd.Z**  
   *Numeric, [-1,1]*  
   Standard deviation of Fast Fourier Transform (FFT) applied on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyAccJerkMean.X**  
   **fBodyAccJerkMean.Y**  
   **fBodyAccJerkMean.Z**  
   *Numeric, [-1,1]*  
   Average of Fast Fourier Transform (FFT) applied on the Jerk signal calculated on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyAccJerkStd.X**  
   **fBodyAccJerkStd.Y**  
   **fBodyAccJerkStd.Z**  
   *Numeric, [-1,1]*  
   Standard deviation of Fast Fourier Transform (FFT) applied on the Jerk signal calculated on the body acceleration 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyGyroMean.X**  
   **fBodyGyroMean.Y**  
   **fBodyGyroMean.Z**  
   *Numeric, [-1,1]*  
   Average of Fast Fourier Transform (FFT) applied on the body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyGyroStd.X**  
   **fBodyGyroStd.Y**  
   **fBodyGyroStd.Z**  
   *Numeric, [-1,1]*  
   Standard deviation of Fast Fourier Transform (FFT) applied on the body angular velocity 3-axial signal (each axis is on a different variable), normalized and bounded within [-1,1].

* **fBodyAccMagMean**  
   *Numeric, [-1,1]*  
   Average of the magnitude of the Fast Fourier Transform (FFT) applied on the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **fBodyAccMagStd**  
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Fast Fourier Transform (FFT) applied on the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **fBodyBodyAccJerkMagMean**  
   *Numeric, [-1,1]*  
   Average of the magnitude of the Fast Fourier Transform (FFT) applied on the Jerk signal applied on the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **fBodyBodyAccJerkMagStd**  
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Fast Fourier Transform (FFT) applied on the Jerk signal applied on the body acceleration signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **fBodyBodyGyroMagMean**  
   *Numeric, [-1,1]*  
   Average of the magnitude of the Fast Fourier Transform (FFT) applied on the body angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **fBodyBodyGyroMagStd**  
   *Numeric, [-1,1]*  
   Standard deviation of the magnitude of the Fast Fourier Transform (FFT) applied on the body angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 3](#note3).

* **fBodyBodyGyroJerkMagMean**  
   *Numeric, [-1,1]*  
   Average of the magnitude of the Fast Fourier Transform (FFT) applied on the Jerk signal applied on the body angular velocity signal, normalized and bounded within [-1,1].  
   Details: see [note 2](#note2) and [note 3](#note3).

* **fBodyBodyGyroJerkMagStd**  
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