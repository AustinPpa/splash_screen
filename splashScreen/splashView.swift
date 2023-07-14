//
//  splashView.swift
//  splashScreen
//
//  Created by Austin Xu on 2023/7/14.
//

import SwiftUI

struct splashView: View {
    @State var isActive: Bool = false
    @State private var size = 0.4
    @State private var opacity = 0.7
    var body: some View {
        if isActive == true{
            ContentView()
        }else{
            VStack{
                Image("mascot")
                Text("I'm a software developer")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.0)){
                    self.size = 1.1
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
        
    }
}

struct splashView_Previews: PreviewProvider {
    static var previews: some View {
        splashView()
    }
}
