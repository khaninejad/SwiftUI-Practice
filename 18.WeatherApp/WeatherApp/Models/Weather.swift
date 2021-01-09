//
//  Weather.swift
//  WeatherApp
//
//  Created by Payam on 12/25/20.
//

import Foundation

struct WeatherResponse:Decodable {
    let main : Weather
}
struct Weather :Decodable {
    var temp:Double?
    var humidity: Double?
}
