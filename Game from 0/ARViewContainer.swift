/*import SwiftUI
import RealityKit
import ARKit

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
                let anchorEntity = AnchorEntity()
                anchorEntity.addChild(modelEntity.clone(recursive: true))

                let raycastResult = uiView.raycast(from: uiView.center, allowing: .existingPlaneGeometry, alignment: .horizontal)
                if let firstResult = raycastResult.first {
                    anchorEntity.position = SIMD3(firstResult.worldTransform.columns.3.x,
                                                   firstResult.worldTransform.columns.3.y,
                                                   firstResult.worldTransform.columns.3.z)
                }

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

*/
