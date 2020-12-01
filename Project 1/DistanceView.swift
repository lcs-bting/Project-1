//
//  DistanceView.swift
//  Project 1
//
//  Created by Bill Ting on 2020-11-20.
//

import SwiftUI

struct DistanceView: View {
    @State private var fromUnitType = 2
    @State private var toUnitType = 2
    @State private var currentValue = ""
    
    let lengthStyles = [ "Meters", "Kilometers", "Feet", "Yards", "Miles"]

    let conversionFactorsToBaseUnitToMetres = [1, 1000, 0.3048, 0.9144, 1609.34]
    let conversionFactorsFromMetersToResultValue = [1, 0.001, 3.28084, 1.09361, 0.000621371]
    
    var result: Double {
        let baseValue = Double(currentValue)! * conversionFactorsToBaseUnitToMetres[fromUnitType]
        print(baseValue)
        
        return 0
    }
    
    
    var body: some View {
        Form {
            Section(header: Text("What Is The Current Value?")) {
                TextField("Amount", text: $currentValue)
                    .keyboardType(.decimalPad)
            }
            
            Section(header: Text("What Unit Is The Current Value In?")) {
                Picker("Length Style", selection: $fromUnitType) {
                    ForEach(0 ..< lengthStyles.count) {
                        Text("\(self.lengthStyles[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("Convert To What Unit?")) {
                Picker("Length Style", selection: $toUnitType) {
                    ForEach(0 ..< lengthStyles.count) {
                        Text("\(self.lengthStyles[$0])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("Result")) {
                Text("\(result)")
            }
        }
        .navigationBarTitle("Distance Converter")
    }
}

struct DistanceView_Previews: PreviewProvider {
    static var previews: some View {
        DistanceView()
    }
}
