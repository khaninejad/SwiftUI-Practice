//
//  ContentView.swift
//  WeatherApp
//
//  Created by Payam on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var weatherVM : WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    var body: some View {
        VStack(alignment: .center){
           
            TextField("Enter city name", text:self.$weatherVM.cityName){
                self.weatherVM.search()
            }.font(.custom("Arial", size: 50))
            .padding()
            .fixedSize()
            
            Text(self.weatherVM.temprature).font(.custom("Arial", size: 100))
                .padding()
                .foregroundColor(Color.white)
                .offset(y: 100)
            
        }.frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
