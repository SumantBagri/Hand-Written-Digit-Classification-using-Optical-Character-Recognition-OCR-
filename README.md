# Hand-Written-Digit-Classification-using-Optical-Character-Recognition-OCR-
Hand written digits(ranging from 0-9) are classified using a pre-trained text recognition module, OCR (Optical Character Recognition), available on Matlab. The process involves capturing an image using the ArduCAM peripheral for Arduino and subsequently performing image processing for digit calssification on Matlab.   

Hardware Used: ArduCAM Mini
Software Used: ArduCAM library availaible online
		
NOTE: The libraries required to run the camera are in the "lib" folder

Flow for Digit Classification:
1) Capture digit image using ArduCAM Mini
2) Open the matlab code "classifier.m"
3) The stored image is then imported into the matlab code
4) Digits are classified using Optical Character Recognition (OCR) after processing the image
5) Matlab will display the final processed image and print out the digit in the command prompt 

There are some image files that I have captured using the camera for each of 5 digits - {0,5,6,8,9}. They are in the folder "digit_(number)"

After giving the path for the image in the "imread('path_to_image')" function, run the code and it will print stuff as mentioned in the flow above
