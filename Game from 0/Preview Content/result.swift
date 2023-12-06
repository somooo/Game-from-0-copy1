//
// g.swift
// my app
//
// Created by نورة on 02/07/1445 AH.
//

import SwiftUI
import CloudKit

struct result: View {
    @State var isRotating = false
    @State var isHidden = false
    var body: some View {
        NavigationView{
        //zstack1
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
                .blur(radius: 5)
            
            Image("resultGlassCard")
            
            //Vstack1
            VStack{
                //Hstack1
                HStack(spacing: 100, content: {
                    Text("اللاعب ١")
                        .font(.title2)
                    //Hstack2
                    HStack{
                        Text("10 عملات")
                        Image("coin")
                    }//Hstack2
                })//Hstack1
                
                //Hstack3
                HStack(spacing: 100, content: {
                    Text("اللاعب  ٢")
                        .font(.title2)
                    //Hstack4
                    HStack{
                        Text("7 عملات")
                        Image("coin")
                    }//Hstack4
                })//Hstack3
                
                //Hstack5
                HStack(spacing: 100, content: {
                    Text("اللاعب ٣")
                        .font(.title2)
                    //Hstack6
                    HStack{
                        Text("3 عملات ")
                        Image("coin")
                    }//Hstack6
                })//Hstack5
                
                .padding(.bottom,90)
                
                
                
            }//Vstack1
            .fontWeight(.bold)
            .font(.headline)
            .multilineTextAlignment(.center)
            
            Text("مبروك🏆🎊")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom,450)
                .position(x:220 ,y:430)
            
                NavigationLink(destination: startPage()    .navigationBarBackButtonHidden(true)) {
                    Image(systemName: "house")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                    }//text
                .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
                    .position(x:214 ,y:520)
                    
                    
                    
                } // .padding(.top,40)
                
            }//zstack1
        
        
        
        
        
    }//var body: some View
}//struct result: View


#Preview {
    result()
}
