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

From top to bottom, the application uses a *NavigationView* which incapsulates a *VStack*.  

The search bar allows the user to find a country easily. Once the searchbar is dismissed, the list of countries comes back to its initial sorting.  



The *VStack* contains another *VStack* that has two *HStacks*, each one containing three cards. Each card presents a number and its meaning.  

After presenting the cards, there is another *HStack* that contains 4 items, the Country name, confirmed cases, deaths and recovered number.
After the labels, there is a *VStack* that contains a *HStack* with each country and it's cases.  

The map contains the same information, but was implemented to present a more detaliated view.  

