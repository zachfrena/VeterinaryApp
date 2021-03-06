# Project Overview
Our goal was to create a web application for the school of Veterinary Medicine at the University of Calgary to help manage their animals and process requests for delivering
animals to teaching staff.

Functionality:

1. Manage animals
    
    a. Create animal profile (Every animal can have different properties based on type but some properties are the same for example (Name, sex, age, RFID))
    
    b. Search animals
    
    c. Ongoing care process (Annual check and vaccination)


2. User Management
    
    a. Add users
    
    b. Access control
    
    c. Manage users (block, suspend, etc)

## WHO - Developers
- Zachary Frena
- Marko Mijovic
- Meet Pandya
------
## WHAT - Project Structure
All of the backend code is located in **Backend** folder
The API code is split into 4 packages - **Controller**, **Exception**, **Helper**, **Model**
### Controller Package
- Contains 6 classes that are Spring Framework's **@RestController** classes to handle request at different endpoints
- The **TestController** class as the name suggests is only for testing dummy endpoints to see how the request and response looks
### Exception Package
- Contains 3 classes responsible for handling Exceptions in a custom to make sure client receives meaningful responses
### Helper Package
- Contains 3 classes with different purposes to act as a Helper Classes throughout the code
- In future, this package could have additional classes created as the project comes to completion
### Model Package
- Contains all the classes related to all the Model objects required for this project
### BackendApplication.java
- This class contains the **Main** method where Spring Application is initialized and the server is started
### Postman Folder
- This folder contains Postman json files that have a bunch of GET & POST requests for the API

### Frontend Folder
- This folder contains all the Frontend code related to React part of this application

| React Endpoint   | Endpoint Details                  |
|------------------|-----------------------------------|
| /                | Login Page                        |
| /home            | Home Page with Search Animal view |
| /addAnimal       | Add Animal Page View              |
| /diagnosis       | Add Animal Diagnosis              |
| /uploadPhoto     | Upload Animal Photo               |
| /viewAlerts      | View Existing Disease Alerts      |
| /updateAnimal    | Update Animal's personal Info     |
| /treatment       | Treatment Request Page            |
| /prescription    | Prescription Page                 |
| /updateHealth    | Update Animal Health              |
| /borrowAnimal    | Request to Borrow Animal          |
| /requestsPending | Requests Pending Page             |
| /animalProfile   | Animal Profile Page               |
| /manageUsers     | Manage Users in the System        |

--------------------------------------------------------
## HOW
- In order to run the code, you just need to run the **BackendApplication.java** and it will start the spring server
- If you are using an IDE like IntelliJ or Eclipse, after cloning the repo, make sure to create a Configuration that's pointed to **BackendApplication.java**
## WHY
- This was the Final Project for ENSF607 course at University of Calgary
- The project is designed for the Vet Department at University of Calgary
