# iosdesignpatternsOBJC
Design Patterns for iOS (Objetive-C)

This is an Objetive-C project that shows some iOS design patterns
Despite swift is the preffered language now, I wanted to recap a bit some Objective-C.

# MVC
Model View Controller

In the example app, the Model is the Maths Object, the View is the visual representation of the Calculator and the Controller is the ViewController that interracts with both the View and the Model.

The controller is thus resposnible to change the view, request info from the Model and get this info.
The Model does the mathematical calculations and all the work.
The view just displays what the controller says.

![alt text](https://raw.githubusercontent.com/Andrei0795/iosdesignpatternsOBJC/master/img1.png)
![alt text](https://raw.githubusercontent.com/Andrei0795/iosdesignpatternsOBJC/master/img2.png)
![alt text](https://raw.githubusercontent.com/Andrei0795/iosdesignpatternsOBJC/master/img3.png)


# Delegation

Delegation is one of the most important design patterns in iOS. I wanted to represent it through a practical example. Say you have an app that requires the address of the user and they have to enter it from a different screen. When they return to the previous screen, they must be told if everything is fine or not. The address object is thus changed in the second screen and sent through delegation to the first screen.


![alt text](https://raw.githubusercontent.com/Andrei0795/iosdesignpatternsOBJC/master/img3.png)
![alt text](https://raw.githubusercontent.com/Andrei0795/iosdesignpatternsOBJC/master/img4.png)
