//
//  ContentView.swift
//  Game from 0
//
//  Created by bsamh on 28/11/2023.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView: View {
    @StateObject private var gameViewModel = GameViewModel()
    
    
    
        @State private var isPlacementEnabled = false
        @State private var selectedModel: model?
        @State private var modelConfirmedPlacement: model?
        
        private var Models: [model] = {
            let filemanager = FileManager.default
            
            guard let path = Bundle.main.resourcePath, let files = try? filemanager.contentsOfDirectory(atPath: path) else {
                return []
            }
            var availableModels: [model] = []
            for filename in files where
            filename.hasSuffix(".usdz"){
                let modelName = filename.replacingOccurrences(of: ".usdz", with: "")
                let Model = model(ModelName: modelName)
                availableModels.append(Model)
            }
            return availableModels
        }()
        
        var body: some View {
            ZStack(alignment: .bottom) {
               ARViewContainer(modelConfirmedForPlacement: self.$modelConfirmedPlacement)
                
                if self.isPlacementEnabled {
                    PlacementButtonView(isPlacementEnabled: self.$isPlacementEnabled, selectedModel: self.$selectedModel, modelConfirmedForPlacement: self.$modelConfirmedPlacement)
                } else {
                    ModelPickerView(isPlacementEnabled: self.$isPlacementEnabled, selectedModel: self.$selectedModel, Models: self.Models)
                }
            }
        }
    }
    
   struct ARViewContainer: UIViewRepresentable {
        @Binding var modelConfirmedForPlacement: model?
        
        func makeUIView(context: Context) -> ARView {
            let arView = ARView(frame: .zero)
            // ... (unchanged)
            return arView
        }
        
        func updateUIView(_ uiView: ARView, context: Context) {
            if let Model = self.modelConfirmedForPlacement {
                if let modelEntity = Model.modelEntity {
                    let anchorEntity = AnchorEntity(plane: .horizontal)
                    anchorEntity.addChild(modelEntity.clone(recursive: true))
                    
                    let scaleFactor: Float = 0.1
                    anchorEntity.scale = [scaleFactor, scaleFactor, scaleFactor]
                    
                    uiView.scene.addAnchor(anchorEntity)
                } else {
                    print("DEBUG: Unable to load modelEntity for \(Model.ModelName)")
                }
                
                DispatchQueue.main.async {
                    self.modelConfirmedForPlacement = nil
                }
            }
        }
    }
    
    struct ModelPickerView: View {
        @Binding var isPlacementEnabled: Bool
        @Binding var selectedModel: model?
        
        var Models: [model]
        
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(0 ..< self.Models.count) { index in
                        Button(action: {
                            print("DEBUG: selected Model with name: \(self.Models[index].ModelName)")
                            
                            self.selectedModel = self.Models[index]
                            
                            self.isPlacementEnabled = true
                            var scale: CGFloat {.zero}
                        })//Button
                        {
                            Image(uiImage: self.Models[index].image)
                                .resizable()
                                .frame(width:50, height: 48)
                                .aspectRatio(1/1, contentMode: .fit)
                            
                            
                        } .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            print("DEBUG: Countinue to code game.")
                           // self.modelConfirmedForPlacement = self.selectedModel
                            //self.resetPlacementParameters()
                        }) {
                            NavigationLink(destination: GameCodePage()
                                .navigationBarBackButtonHidden(true)) {
                                    Text("Start")
                                        .frame(width: 100, height: 40)
                                        .font(.title)
                                        .background(Color.white.opacity(0.75))
                                    //  .cornerRadius(30)
                                        .padding(20)
                                }
                               
                        }
                       
                    }
                    
                }
                .padding(20)
                
            }
        }
    }
    
struct PlacementButtonView: View {
    @Binding var isPlacementEnabled: Bool
    @Binding var selectedModel: model?
    @Binding var modelConfirmedForPlacement: model?
    
    var body: some View {
            HStack {
                Button(action: {
                    print("DEBUG: model placement cancelled.")
                    self.resetPlacementParameters()
                }) {
                    Image(systemName: "xmark")
                        .frame(width: 40, height: 40)
                        .font(.title)
                        .background(Color.white.opacity(0.75))
                        .cornerRadius(30)
                        .padding(20)
                }
                
                Button(action: {
                    print("DEBUG: model placement confirmed.")
                    self.modelConfirmedForPlacement = self.selectedModel
                    self.resetPlacementParameters()
                }) {
                    Image(systemName: "checkmark")
                        .frame(width: 40, height: 40)
                        .font(.title)
                        .background(Color.white.opacity(0.75))
                        .cornerRadius(30)
                        .padding(20)
                
                    
                }
            }
        }
    
        func resetPlacementParameters() {
            self.isPlacementEnabled = false
            self.selectedModel = nil
        }
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


