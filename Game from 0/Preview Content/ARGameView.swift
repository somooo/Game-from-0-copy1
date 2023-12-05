//
//  ARGameView.swift
//  Game from 0
//
//  Created by bsamh on 28/11/2023.
//

import Foundation
import SwiftUI
import ARKit

struct ARGameView: View {
    @State private var modelConfirmedForPlacement: model?

    var body: some View {
        ARViewContainer(modelConfirmedForPlacement: $modelConfirmedForPlacement)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ARGameView_Previews: PreviewProvider {
    static var previews: some View {
        ARGameView()
    }
}
