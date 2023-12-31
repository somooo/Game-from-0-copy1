//
//  GameProgressView.swift
//  Game from 0
//
//  Created by bsamh on 28/11/2023.
//
import SwiftUI
import Foundation
import CloudKit

struct GameProgressView: View {
    @ObservedObject var Game: GameViewModel

    var body: some View {
        VStack {
            Text("Game Code: \(Game.GameCode)")
                .font(.title)

            Text("Player Progress: \(Game.CoinsCollected)")
                .font(.headline)
                .padding()

            // Add more UI elements as needed
        }
        .padding()
    }
}


