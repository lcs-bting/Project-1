//
//  ContentView.swift
//  Project 1
//
//  Created by Bill Ting on 2020-11-04.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTemperature = 1
    
    let temperatureStyles = ["Celsius", "Fahrenheit", "Kelvin"]
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("What Temperature Styles Do You Prefer?")) {
                    Picker("Temperature Style", selection: $selectedTemperature) {
                        ForEach(0 ..< temperatureStyles.count) {
                            Text("\(self.temperatureStyles[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
            }
        }
        .navigationBarTitle("WeSplit")
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
