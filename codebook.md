CodeBook
This codebook describes the variables in the tidy dataset generated from the Human Activity Recognition Using Smartphones dataset.

Identifier Variables
subject: An identifier for the subject who performed the activity. Integer values ranging from 1 to 30.

activity_name: The descriptive name of the activity performed by the subject. Six possible activities: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING".

Feature Variables
The feature variables represent the mean of various measurements related to accelerometer and gyroscope readings. The original features are normalized and bounded within [-1,1]. These features are extracted from the time and frequency domains. Each feature variable name follows a specific naming convention for clarity:

Prefixes:

time_: Indicates time domain features.
frequency_: Indicates frequency domain features.
Suffixes:

_acceleration_: Indicates acceleration measurements.
_angular_velocity_: Indicates angular velocity measurements.
_magnitude_: Indicates magnitude measurements.
Descriptive names:

Variable names are descriptive and provide information about the measurement type and axis (if applicable).
Example feature variable names:

time_body_acceleration_x_mean: Mean of body acceleration in the X-axis over time.
frequency_angular_velocity_y_std: Standard deviation of angular velocity in the Y-axis over frequency.
Variable Units
All feature variables are unitless, as they represent normalized values. The original dataset does not provide explicit units for these measurements.
