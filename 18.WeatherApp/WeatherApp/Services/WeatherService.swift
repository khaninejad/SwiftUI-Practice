//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Payam on 1/9/21.
//

import Foundation
class WeatherService{
    func getWeather(city: String, completion: @escaping (Weather?) -> ()){
        
        guard let URL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=e30eee9a429d7d995eb6b2d84c55d02c")else{
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: URL) { data, response, error in
            guard let data = data, error == nil else{
                completion(nil)
                return
            }
            
            let weatherReponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            
            if let weatherReponse = weatherReponse{
                let weather = weatherReponse.main
                    completion(weather)
            }else{
                completion(nil)
            }
        }.resume()
        
    }
}
