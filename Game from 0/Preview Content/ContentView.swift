//
//  ContentView.swift
//  Game from 0
//
//  Created by bsamh on 28/11/2023.
//

import SwiftUI
import RealityKit
import ARKit
import CloudKit

struct ContentView: View {
    // State object for managing the game's view model
    @StateObject private var gameViewModel = GameViewModel()
    
    
    // State variables for managing model placement
        @State private var isPlacementEnabled = false
        @State private var selectedModel: model?
        @State private var modelConfirmedPlacement: model?
    
    
    // Computed property to load 3D models from the app's resource directory
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
        
    // Main body of the view
        var body: some View {
            // ZStack for stacking views
            ZStack(alignment: .bottom) {
                // ARViewContainer for managing AR-related functionality
               ARViewContainer(modelConfirmedForPlacement: self.$modelConfirmedPlacement)
                
                // Conditional rendering based on model placement state
                if self.isPlacementEnabled {
                    // PlacementButtonView for confirming or canceling model placement
                    PlacementButtonView(isPlacementEnabled: self.$isPlacementEnabled, selectedModel: self.$selectedModel, modelConfirmedForPlacement: self.$modelConfirmedPlacement)
                } else {
                    // ModelPickerView for choosing 3D models
                    ModelPickerView(isPlacementEnabled: self.$isPlacementEnabled, selectedModel: self.$selectedModel, Models: self.Models)
                }
            }
        }
    }
// ARViewContainer struct for encapsulating AR view functionality
   struct ARViewContainer: UIViewRepresentable {
       // Binding for the confirmed model for placement
        @Binding var modelConfirmedForPlacement: model?
        
       // Creates and returns an instance of ARView
        func makeUIView(context: Context) -> ARView {
            let arView = ARView(frame: .zero)
            // ... (unchanged)
            return arView
        }
        
       // Updates the AR view with the confirmed 3D model when available
       func updateUIView(_ uiView: ARView, context: Context) {
           if let model = self.modelConfirmedForPlacement {
               if let modelEntity = model.modelEntity {
                   print("DEBUG: adding model to scene - \(model.ModelName)")
                   
                   // Perform a raycast to find a horizontal surface
                   
                   let results = uiView.raycast(from: uiView.center, allowing: .estimatedPlane, alignment: .horizontal)
                   
                   if let firstResult = results.first {
                       // Extract translation from the world transform
                         firstResult.worldTransform.columns.3
                       let anchorEntity = AnchorEntity(plane: .horizontal)
                       anchorEntity.addChild(modelEntity.clone(recursive: true))
                       //     let anchorEntity = AnchorEntity(world: [translation.x, translation.y, translation.z])
                       let scaleFactor: Float = 0.1
                       
                       anchorEntity.scale = [scaleFactor, scaleFactor, scaleFactor]
                       
                       
                       // Create an anchor at the hit location
                       anchorEntity.addChild(modelEntity)
                       
                       // Add the anchor to the ARView's scene
                       uiView.scene.addAnchor(anchorEntity)
                       
                       // Reset the confirmed model
                   }
                   
                   else {
                       print("DEBUG: Unable to load modelEntity for \(model.ModelName)")
                   }
               } 
               
               DispatchQueue.main.async {
                   self.modelConfirmedForPlacement = nil
               }
           }
       }

    }
    
// ModelPickerView struct for choosing 3D models
    struct ModelPickerView: View {
        // Bindings for model placement state and selected model
        @Binding var isPlacementEnabled: Bool
        @Binding var selectedModel: model?
        
        // Array of available 3D models
        var Models: [model]
        
        // Main body of the view
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    // Iterate over available models
                    ForEach(0 ..< self.Models.count) { index in
                        // Button for each model, sets selected model and enables placement
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
                    
                  /*  Button(action: {
                        print("DEBUG: selected Model with name: \(self.Models[index].ModelName)")
                        
                        self.selectedModel = self.Models[index]
                        
                        self.isPlacementEnabled = true
                        var scale: CGFloat {.zero}
                        //self.resetPlacementParameters()
                    }) {
                                HStack{
                                    Text("٢ عملات ")
                                    Image(systemName:"xmark")
                                    Image("coin")
                                    
                                }
                                       // .imageScale(.large)
                                   // image(Systemname:"Xmark")
                                        .frame(width: 140, height: 40)
                                        .font(.title3)
                                        .background(Color.white.opacity(0.75))
                                        .foregroundColor(.black)
                                      .cornerRadius(30)
                                        .padding(20)
                                }*/
                            
                           
                    
                        
                        Button(action: {
                            print("DEBUG: Countinue to code game.")
                           // self.modelConfirmedForPlacement = self.selectedModel
                            //self.resetPlacementParameters()
                        }) {
                            NavigationLink(destination: GameCodePage()
                                .navigationBarBackButtonHidden(true)) {
                                    HStack{
                                        Text("Done")
                                        //Image(systemName:"xmark")
                                       // Text("٢ لاعبين")
                                       // Image(systemName: "person.2")
                                    }
                                           // .imageScale(.large)
                                       // image(Systemname:"Xmark")
                                            .frame(width: 140, height: 40)
                                            .font(.title3)
                                            .background(Color.white.opacity(0.75))
                                            .foregroundColor(.blue)
                                          .cornerRadius(30)
                                            .padding(20)
                                    }
                                
                               
                        }
                       
                    }
                    
                }
                .padding(20)
                
            }
        }
    }

// PlacementButtonView struct for confirming or canceling model placement
    
struct PlacementButtonView: View {
    // Bindings for model placement state and selected/confirmed models
    @Binding var isPlacementEnabled: Bool
    @Binding var selectedModel: model?
    @Binding var modelConfirmedForPlacement: model?
    
    // Main body of the view
    var body: some View {
            HStack {
                // Button for canceling model placement
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
                
                // Button for confirming model placement
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
    
    // Function to reset model placement parameters
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

