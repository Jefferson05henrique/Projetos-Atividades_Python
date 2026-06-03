from ultralytics import YOLO
import cv2

def main():
    modelo = YOLO("yolov8n.pt")

    captura = cv2.VideoCapture(0)

    while captura.isOpened():
        sucesso, frame = captura.read()

        if not sucesso:
            break

        resultados = modelo(frame, classes=[0], stream=True)

        for r in resultados:
            frame_anotado = r.plot()

            if len(r.boxes) > 0:
                cv2.putText(
                    frame_anotado,
                    "INVASOR DETECTADO",
                    (20, 40),
                    cv2.FONT_HERSHEY_SIMPLEX,
                    1,
                    (0, 0, 255),
                    2
                )

            cv2.imshow("Detector de Invasor", frame_anotado)

        if cv2.waitKey(1) & 0xFF == ord("q"):
            break

    captura.release()
    cv2.destroyAllWindows()

if __name__ == "__main__":
    main()


if __name__ == "__main__":
    main()