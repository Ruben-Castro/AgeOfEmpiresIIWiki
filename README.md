# Age Of Empires II Wiki

## Description 
This project uses the age of Empires II API to create a wiki (https://age-of-empires-2-api.herokuapp.com/docs/#/resources/get_technologies)
The views in this project were entirely designed using swift UI This project follows MVVM design pattern. 
The main goal of this project was to get a feel for swiftUI passing data, basic networking etc. 

## What I learned 

### swiftUI
 - I learned how to work with navigationViews and Navigations Links 
 - How to combine navigation Links and Lists
 - How to pass data between views 
 - HStack, VStack, and how to combined them to make more complex layouts 
 - Observable Objects and how they are crucial for refreshing our views. 
 - How to use modifiers to change text appearance, align Vstack and Hstack etc. 
 - How to use Spacers to acheive desired look.
 - How to modify the size of an image 
 
### Data Models 
 - How to make more complex data models 
 - How to parse JSON easily with Decodable 
 - How to use identifiable to allow swift UI to display my dataModels within a list 
 
 ### View Model
  - How to update view via a view Model 
  - How to write basic Networking Code in swif
  
  
  ### How to Improve this Project 
  - Refractor networking Code. It does not follow DRY principles. Im pretty sure there is a less repetative way of doing this probably by writing a function.
    Additionally the try! should be replaced by something safer probably a do with a catch.
  - Im not particularly happy with the main views just like the networking code it does not follow DRY principles and I feel like I wrote the same code over and over for CivilizationView, unitsView and Home View. maybe I can write a Generic View. My main concern is how to handle the navigation link since this is unique for each of those views I tried passing it as an optional view variable but that didnt work.
  - I would like to have unique images for each civ, unit, and technology However the api I used did not return any images and storing multiple images in the assets folder would be tedious aswell as a waste of application memory. Possible backend project for the future. 
 
