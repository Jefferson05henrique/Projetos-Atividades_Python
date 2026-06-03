from ultralytics import YOLO #ver a imgagem
import cv2 #se preocupa com a imagem 


def main():
    print("---carregando modelo--- ")
    modelo =YOLO("yolov8n.pt")
    
    #adicionando uma imagem online para análise
    url_imagem ="https://arkpad.com.br/wp-content/uploads/2020/07/casas-pequenas-1.jpg"
    
    print("----Realizando a inferencia na imagem ----")
    resultado = modelo(url_imagem,show=True)#mostrar resultado
    
    #Fecha as janela aberta
    cv2.waitKey(0)
    cv2.destroyAllWindows()
    
    
if __name__=="__main__":
    main()
