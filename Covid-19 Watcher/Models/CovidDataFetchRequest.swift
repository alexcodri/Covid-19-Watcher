//
//  CovidDataFetchRequest.swift
//  Covid-19 Watcher
//
//  Created by Alex Codreanu on 20/06/2020.
//  Copyright © 2020 Alex Codreanu. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CovidDataFetchRequest: ObservableObject {
    
    @Published var allCountryData: [TotalCountryData] = []
    @Published var totalData: TotalDataModel = dummyTotalData
    
    //global definition for headers because DRY
    let header: HTTPHeaders = [
        "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
        "x-rapidapi-key": "d172e810e7msh47584ae043c146dp12d8eejsnb0b3c42c4a59"
    ]
    
    //this class will fetch the data from the API
    init() {
        getCurrentTotal()
        getAllCountriesData()
    }
    
    func getCurrentTotal(){
        AF.request("https://covid-19-data.p.rapidapi.com/totals?format=undefined", headers: header).responseJSON{ response in
            let result = response.data;
            
            if result != nil {
                let jsonData = JSON(result!)
                let recovered = jsonData[0]["recovered"].intValue
                let confirmed = jsonData[0]["confirmed"].intValue
                let critical = jsonData[0]["critical"].intValue
                let deaths = jsonData[0]["deaths"].intValue
                
                self.totalData = TotalDataModel(confirmed: confirmed, critical:critical,deaths:deaths,recovered:recovered)
            } else {
                self.totalData = dummyTotalData
            }
        }
    }
    
    func getAllCountriesData(){
        AF.request("https://covid-19-data.p.rapidapi.com/country/all?format=undefined", headers: header).responseJSON{ response in
            
            let result = response.value;
            var allCountries: [TotalCountryData] = []
            if result != nil {
                
                let dataDictionary = result as! [Dictionary<String,AnyObject>]
                
                for countryData in dataDictionary {
                    let country = countryData["country"] as? String ?? "Error"
                    let longitude = countryData["longitude"] as? Double ?? 0.0
                    let latitude = countryData["latitude"] as? Double ?? 0.0
                    let recovered = countryData["recovered"] as? Int64 ?? 0
                    let confirmed = countryData["confirmed"] as? Int64 ?? 0
                    let critical = countryData["critical"] as? Int64 ?? 0
                    let deaths = countryData["deaths"] as? Int64 ?? 0
                    
                    let countryObject = TotalCountryData(countryName: country, confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered, longitude: longitude, latitude: latitude)
                    
                    allCountries.append(countryObject)
                }
            }
            //sorting the data by all confirmed cases bringing the country with the most confirmed cases on top
            self.allCountryData = allCountries.sorted(by: {$0.confirmed > $1.confirmed})
            
        }
    }
}
