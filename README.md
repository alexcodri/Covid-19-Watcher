# Covid-19-Watcher
COVID-19 tracking app made using SwiftUI
## 1. Introduction
The application was made to follow the number of COVID-19 cases all around the world, using SwiftUI.  
## 2. Describing the functionalities & Demo. 
The application presents 6 cards containing data regarding all confirmed, critical, recovered and death cases and also a recovery and death %.  
There is also a list containing all countries existing in RapidAPI's API, sorted in descending order by confirmed cases.  
The application also presents a map with pins that offer visual information regarding the name of the country, confirmed and death cases.  
The application is both dark and white mode compliant, using Apple's guidelines for this implementation.  
## Demo  
![](COVID-19-Watcher.gif)
## 3. Implementation  
The application is made using SwfitUI, using Alamofire and SwfityJSON. Data is provided by RapidAPI's Covid-19 API.  
The user interface is based mainly on VStacks and HStacks.  
<img width="323" alt="1  Main screen" src="https://user-images.githubusercontent.com/55602310/85225146-bc7ef980-b3d7-11ea-8a6e-ec4abd3a7152.png">  
From top to bottom, the application uses a *NavigationView* which incapsulates a *VStack*.  
The search bar allows the user to find a country easily. Once the searchbar is dismissed, the list of countries comes back to its initial sorting.  

<img width="323" alt="2 Searchbar" src="https://user-images.githubusercontent.com/55602310/85225159-d1f42380-b3d7-11ea-9a35-8b28cccf1fcd.png">  

The *VStack* contains another *VStack* that has two *HStacks*, each one containing three cards. Each card presents a number and its meaning.  
After presenting the cards, there is another *HStack* that contains 4 items, the Country name, confirmed cases, deaths and recovered number.
After the labels, there is a *VStack* that contains a *HStack* with each country and it's cases. Upon selecting a country, there user will be shown to a mode detailed screen containing statistics.  
<img width="323" alt="3  Country info" src="https://user-images.githubusercontent.com/55602310/85225189-05cf4900-b3d8-11ea-94a7-3f11e2aeb026.png">  
The map contains the same information, but was implemented to present a more detaliated view.  
<img width="323" alt="4  Mapview" src="https://user-images.githubusercontent.com/55602310/85225195-1253a180-b3d8-11ea-9a92-6003f7544e19.png">  
