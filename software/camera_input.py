import cv2

# Open the default camera (camera index 0)
cap = cv2.VideoCapture(2)

# Check if the camera opened successfully
if not cap.isOpened():
    print("Error: Could not open camera.")
    exit()

# Loop to continuously read frames from the camera
while True:
    # Read a frame from the camera
    ret, frame = cap.read()

    # If frame reading was unsuccessful, exit the loop
    if not ret:
        break

    # Display the captured frame in a window
    cv2.imshow('Camera Feed', frame)

    # Break the loop if the 'q' key is pressed
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# Release the camera and destroy all windows
cap.release()
cv2.destroyAllWindows()
