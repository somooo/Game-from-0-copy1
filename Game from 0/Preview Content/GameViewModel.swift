//
//  GameViewModel.swift
//  Game from 0
//
//  Created by bsamh on 28/11/2023.
//

import UIKit
import RealityKit
import Combine
import CoreLocation


class Game: ObservableObject {
    @Published var GameCreator: String = ""
    @Published var GameCode: String = ""
    @Published var Players: [String] = []
    @Published var CoinPosition: [CLLocationCoordinate2D] = []
}

class Player: ObservableObject {
    
    @Published var CoinPosition: [CLLocationCoordinate2D] = []
    @Published var CoinsCollected: Int = 0
    @Published var GameCode: String = ""
    @Published var PlayerID: String = ""
    @Published var PlayerName: String = ""
}
    
class CoinPosition: ObservableObject {
    
    
    @Published var CoinPosition: [CLLocationCoordinate2D] = []
    @Published var coinID: String = ""

    
class Results: ObservableObject {
    @Published var CoinsCollected: Int = 0
    @Published var gameCode: String = ""
    @Published var GameCreator: String = ""
    @Published var playerID: String = ""
    @Published var PlayerName: String = ""
    }
    
}
