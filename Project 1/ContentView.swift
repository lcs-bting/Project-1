//
//  ContentView.swift
//  Project 1
//
//  Created by Bill Ting on 2020-11-04.
//

import SwiftUI

struct ContentView: View {
    
    let temperatures = ["Celsius", "Fahrenheit", "Kelvin"]
    @State private var selectedTemperature = 0
    
    var body: some View {
        VStack {
            Picker("Select the user", selection: $selectedTemperature) {
                ForEach(0 ..< temperatures.count) {
                    Text(self.temperatures[$0])
                }
            }
            Text("You chose: Temperature # \(temperatures[selectedTemperature])")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
