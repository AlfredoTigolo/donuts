//
//  ContentView.swift
//  donuts
//
//  Created by alfredo tigolo on 10/28/20.
//  Copyright © 2020 alfredo tigolo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var msg = String ("I love donuts")
    
    var body: some View {
      
        Color.purple.edgesIgnoringSafeArea(.all)
        .overlay(
            VStack(spacing: 20) {
                Text(msg).font(.largeTitle)
                Text("Coding rules!").font(.title).foregroundColor(.green)
                Button(action: {
                    //print("Button Pressed")
                    //msg = "I love Code"
                    self.msg = "I love code"
                }) {
                    Image(systemName: "trash")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    }
                Button(action: {
                    //print("Button Pressed")
                    //msg = "I love Code"
                    self.msg = "I love code and donuts"
                }) {
                    Image(systemName: "play")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                    }
                
        })
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
       
}
}
