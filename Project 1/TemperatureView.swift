//
//  TemperatureView.swift
//  Project 1
//
//  Created by Bill Ting on 2020-11-20.
//

import SwiftUI


struct TemperatureView: View {
    @State private var fromUnitType = 1
    @State private var toUnitType =  1
    @State private var currentValue = ""
    
    let temperatureStyles = [ "Celsius", "Fahrenheit", "Kelvin"]
    
    var body: some View {
        
            Form {
                Section(header: Text("What Is The Current Value?")) {
                    TextField("Amount", text: $currentValue)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("What Unit Is The Current Value In?")) {
                    Picker("Length Style", selection: $fromUnitType) {
                        ForEach(0 ..< temperatureStyles.count) {
                            Text("\(self.temperatureStyles[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Convert To What Unit?")) {
                    Picker("Length Style", selection: $toUnitType) {
                        ForEach(0 ..< temperatureStyles.count) {
                            Text("\(self.temperatureStyles[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
            }
        
        .navigationBarTitle("Temperature Converter")
    }
}



struct TemperatureView_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureView()
    }
}
