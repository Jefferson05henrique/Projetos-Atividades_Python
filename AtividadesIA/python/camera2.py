from ultralytics import YOLO  # Modelo YOLO
import cv2  # Processamento de imagem e vídeo


def main():
    print("--- Carregando modelo ---")
    modelo = YOLO("yolov8n.pt")

    # vídeo em tempo real
    captura = cv2.VideoCapture(0)

    if not captura.isOpened():
        print("Erro ao abrir a câmera.")
        return

    while captura.isOpened():
        sucesso, frame = captura.read()

        if not sucesso:
            break

        # Realiza a detecção
        resultados = modelo(frame, stream=True)

        for r in resultados:
            frame_anotado = r.plot()
            cv2.imshow("Detecção YOLO", frame_anotado)

        # Sai tecla q
        if cv2.waitKey(1) & 0xFF == ord("q"):
            break

    captura.release()
    cv2.destroyAllWindows()