//
//  ContentView.swift
//  Project 1
//
//  Created by Bill Ting on 2020-11-04.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                NavigationLink(
                    destination: DistanceView(),
                    label: {
                        Text("Distance Units")
                    })
                
                NavigationLink(
                    destination: VolumeView(),
                    label: {
                        Text("Volume Units")
                    })
                
                NavigationLink(
                    destination: TemperatureView(),
                    label: {
                        Text("Temperature Units")
                    })
                
                NavigationLink(
                    destination: TimeView(),
                    label: {
                        Text("Time Units")
                    })
                
                
            }
            .navigationTitle("Unit Converter")
            
            
            
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
