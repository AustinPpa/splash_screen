//
//  ContentView.swift
//  splashScreen
//
//  Created by Austin Xu on 2023/7/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.cyan
                .ignoresSafeArea()
            Text("Welcome to Austin's Corner")
                .padding()
                .font(.system(size: 30))
                .foregroundColor(.white)
                
        }
        
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
