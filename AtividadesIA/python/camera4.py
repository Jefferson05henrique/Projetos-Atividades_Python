import cv2

camera = cv2.VideoCapture(0)

while True:

    sucesso, frame = camera.read()

    if not sucesso:
        break

    cv2.putText(
    frame,
    "JEFIN",
    (150,150),
    cv2.FONT_HERSHEY_SIMPLEX,
    1,
    (0,0,255),
    2
    )

    cv2.rectangle( # Desenha um retângulo vermelho no frame, com o canto superior esquerdo em (100, 100) e o canto inferior direito em (300, 300), com espessura de 2 
    frame,
    (100,100),
    (300,300),
    (0,0,255),
    2
    )

    cv2.imshow("Camera", frame)

    if cv2.waitKey(1) == ord("q"):
        break

camera.release()

cv2.destroyAllWindows()