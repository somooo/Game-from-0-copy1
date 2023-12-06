//
// g.swift
// my app
//
// Created by نورة on 02/07/1445 AH.
//
import SwiftUI
struct result: View {
  @State var isRotating = false
  @State var isHidden = false
  var body: some View {
    NavigationView {
        ZStack {
            
            Image("purpleBack")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
            
                .navigationTitle("Results")
                .font(.title3)
                .navigationBarTitleDisplayMode(.inline)
              
            
         ZStack{
          RoundedRectangle(cornerRadius: 25)
                 .fill(Color(hue: 1.0, saturation: 0.03, brightness: 0.975, opacity: 0.444))
           .frame(width: 371, height: 650)
             
             VStack{
                 
                 HStack(spacing: 190, content: {
               
                     Text("Player 1")
                         .font(.title)
                     Text("10 Coins")
                 })
                 HStack(spacing: 190, content: {
               
                     Text("Player 1")
                         .font(.title)
                     Text("7 Coins")
                 })
                 HStack(spacing: 190, content: {
               
                     Text("Player 1")
                         .font(.title)
                     Text("7 Coins")
                 })
                 
                 HStack(spacing: 190, content: {
               
                     Text("Player 1")
                         .font(.title)
                     Text("3 Coins")
                 })
                 HStack(spacing: 190, content: {
               
                     Text("Player 1")
                         .font(.title)
                     Text("1 Coin")
                         
                 })
                 }
             .padding(.bottom,90)
             
             
             }
            .fontWeight(.bold)
            .font(.headline)
            .multilineTextAlignment(.center)
          Text("Winners")
                .font(.largeTitle)
            .fontWeight(.heavy)
            .padding(.bottom,450)
          NavigationLink(destination:startPage()    .navigationBarBackButtonHidden(true)) {
            Text("Start A New Game")
              .fontWeight(.bold)
              .font(.caption)
              .padding()
              .background(Color.blue)
              .cornerRadius(40)
              .foregroundColor(.white)
              .padding(.top,290)
              .overlay(
                RoundedRectangle(cornerRadius: 40)
                  .stroke(Color.purple, lineWidth: 0)
              )
              
          }
      
             
        }  .padding(.top,40)
      }
       
    }

  }



#Preview {
    result()
}

