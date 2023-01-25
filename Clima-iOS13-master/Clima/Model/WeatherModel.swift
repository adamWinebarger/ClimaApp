//
//  WeatherModel.swift
//  Clima
//
//  Created by adam Winebarger on 12/4/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionID : Int
    let cityName : String
    let temperature : Double
    
    var temperatureString : String {
        return String(format: "%.0f", temperature)
    }
    
    var conditionName : String {
        switch conditionID {
            case 01:
                return "sun.min"
            case 02, 03, 801, 802:
                return "cloud.sun"
            case 200...232, 11:
                return "cloud.bolt"
            case 300...321, 9:
                return "cloud.drizzle"
            case 500...531, 10:
                return "cloud.heavyrain"
            case 600...622, 13:
                return "cloud.snow"
            case 701...781, 50:
                return "cloud.fog"
            case 800:
                return "sun.min"
            case 803...804, 4:
                return "cloud"
            default:
                return "cloud"
        }
    }
}
