import cv2

camera = cv2.VideoCapture(0) # Inicia a captura de vídeo da câmera (0 é geralmente a webcam padrão)

while True: # Loop para capturar e exibir os frames da câmera continuamente

    sucesso, frame = camera.read() # Captura um frame da câmera. 'sucesso' indica se a captura foi bem-sucedida e 'frame' contém a imagem capturada.

    if not sucesso: 
        break

    cv2.imshow("Camera", frame) # Exibe o frame capturado em uma janela chamada "Camera"

    if cv2.waitKey(1) == ord("q"): # Aguarda por 1 milissegundo e verifica se a tecla 'q' foi pressionada para sair do loop
        break

camera.release() 

cv2.destroyAllWindows() 