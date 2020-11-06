//
//  ContentView.swift
//  Project 1
//
//  Created by Bill Ting on 2020-11-04.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTemperature = 1
    @State private var selectedLength = 2
    @State private var selectedTime = 1
    @State private var selectedVolume = 1
    
    let temperatureStyles = ["Celsius", "Fahrenheit", "Kelvin"]
    let lengthStyles = [ "Meters", "Kilometers", "Feet", "Yards", "Miles"]
    let timeStyles = [ "Seconds", "Minutes", "Hours", "Days"]
    let volumeStyles = [ "Milliliters", "Liters", "Cups", "Pints", "Gallons"]
    
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
                
                Section(header: Text("What Lengh Style Do You Prefer?")) {
                    Picker("Length Style", selection: $selectedLength) {
                        ForEach(0 ..< lengthStyles.count) {
                            Text("\(self.lengthStyles[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("What Time Styles Do You Prefer?")) {
                    Picker("Time Style", selection: $selectedTime) {
                        ForEach(0 ..< timeStyles.count) {
                            Text("\(self.timeStyles[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("What Volume Styles Do You Prefer?")) {
                    Picker("Volume Style", selection: $selectedVolume) {
                        ForEach(0 ..< volumeStyles.count) {
                            Text("\(self.volumeStyles[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
            }
        }
        .navigationBarTitle("Project 1")
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
