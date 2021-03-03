//
//  ContentView.swift
//  ViewMods
//
//  Created by Professor Foster on 3/3/21.
//

import SwiftUI

struct CapsuleText: View {
    var givenText: String

    var body: some View {
        Text(givenText)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
    }
}

struct ContentView: View {
    //@State private var counter = 0
    @State private var useRedText = false
    @State private var blurAmount: CGFloat = 0
    
    var motto1 = Text("Ad Astra Per Aspera")
    
//    var blurButton = Button("asdf")
    
    var body: some View {
        VStack {
            CapsuleText(givenText: "Hello World")
            CapsuleText(givenText: "Game Over")
            motto1
                .bold()
            Button("Hello world") {
                self.useRedText.toggle()     // switch the boolean's value
                self.blurAmount += 1
                if blurAmount > 20 {
                    blurAmount = 0
                }
            }
            .accentColor(.white)
            .padding()
            
            // ternary operator is a condensed if statement.
            // test ? do this if true : do this if false
            .background(useRedText ? Color.red : Color.blue)
            .cornerRadius(10)
            .blur(radius: blurAmount)
        }
        
        
//        Button("Hello banana") {
//            //Text("I have been pressed \(counter) times.")
//        }
//        .accentColor(.white)
//        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//        .background(Color.green)
//        .cornerRadius(50)
//        .frame(width: 250, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//        .background(Color.gray)
//        .cornerRadius(100)
        
        
        
        
        
        
        
        
        
        
//        Text("Views and Modifiers!")
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
//            .background(Color.red)
//            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
