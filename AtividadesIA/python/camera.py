import cv2

camera = cv2.VideoCapture(0)

sucesso, frame = camera.read()

if sucesso:
    cv2.imshow("Camera", frame)

    cv2.waitKey(0)

camera.release()

cv2.destroyAllWindows()