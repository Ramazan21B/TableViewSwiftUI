//
//  ContentView.swift
//  Swift Ui
//
//  Created by Aitzhan Ramazan on 19.08.2024.
//

import SwiftUI

struct ContentView: View {
 
    @State var a = ""
    @State var b = ""
    @State var sum = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Sum = \(sum)")
                .padding(.all)
            TextField("Enter a", text: $a)
                .padding(.all)
                .frame(width: 100)
            
            TextField("Enter b", text: $b)
                .padding(.all)
                .frame(width: 100)
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                sum = Int(a)! + Int(b)!
            }
            .foregroundColor(.green)
            .padding(.all)
            
            
        }
      
    
    }
}

#Preview {
    ContentView()
}
