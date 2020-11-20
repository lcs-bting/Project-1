//
//  DistanceView.swift
//  Project 1
//
//  Created by Bill Ting on 2020-11-20.
//

import SwiftUI

struct DistanceView: View {
    @State private var fromUnitType = 2
    @State private var toUnitType =  2
    @State private var currentValue = ""
    
    let lengthStyles = [ "Meters", "Kilometers", "Feet", "Yards", "Miles"]
    
    var body: some View {
        NavigationView{
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
                
            }
        }
        .navigationBarTitle("Project 1")
    }
}

struct DistanceView_Previews: PreviewProvider {
    static var previews: some View {
        DistanceView()
    }
}
