//
//  TimeView.swift
//  Project 1
//
//  Created by Bill Ting on 2020-11-20.
//

import SwiftUI


struct TimeView: View {
    @State private var fromUnitType = 1
    @State private var toUnitType =  1
    @State private var currentValue = ""
    
    let timeStyles = [ "Seconds", "Minutes", "Hours", "Days"]
    
    var body: some View {
        
            Form {
                Section(header: Text("What Is The Current Value?")) {
                    TextField("Amount", text: $currentValue)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("What Unit Is The Current Value In?")) {
                    Picker("Length Style", selection: $fromUnitType) {
                        ForEach(0 ..< timeStyles.count) {
                            Text("\(self.timeStyles[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Convert To What Unit?")) {
                    Picker("Length Style", selection: $toUnitType) {
                        ForEach(0 ..< timeStyles.count) {
                            Text("\(self.timeStyles[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
            }
        
        .navigationBarTitle("Time converter")
    }
}



struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
