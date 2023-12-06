


import SwiftUI
import CloudKit

// Define GameViewModel before using it in JoinGameView
class GameViewModel: ObservableObject {
    @Published var GameCode: String = ""
    @Published var CoinsCollected: Int = 0
}

struct JoinGameView: View {
    @State private var enteredCode: String = ""
    @State private var playerName: String = ""
    @ObservedObject var gameViewModel: GameViewModel
    @State private var isJoiningGame = false

    var body: some View {
        NavigationView {
            ZStack{
                
                Image("timerGlass")
                    .resizable()
                .frame(width: 370,height: 500)
                VStack {
                    Text("Enter Game Code:")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.bottom, -30.0)
                    
                    TextField("Game Code", text: $enteredCode)
                        .padding(35.0)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Enter Your Name:")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.bottom, -30.0)
                    
                    TextField("Your Name", text: $playerName)
                        .padding(35.0)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true), isActive: $isJoiningGame) {
                        Text("Join Game")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                    }
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding()
                    .onTapGesture {
                        joinGame()
                    }
                }}
            
        }
    }

    private func joinGame() {
        // Use CloudKit to find the game session with the entered code
        // Update the gameViewModel with the session details
        // For simplicity, assume a CloudKit record type named "GameSession"
        let recordType = "Game"
        let predicate = NSPredicate(format: "GameCode == %@", enteredCode)
        let query = CKQuery(recordType: recordType, predicate: predicate)

        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            if let error = error {
                print("Error querying CloudKit: \(error.localizedDescription)")
                // Handle the error as needed
            } else if let record = records?.first {
                // Save player's name to CloudKit
                savePlayerNameToCloudKit(playerName)
                
                DispatchQueue.main.async {
                 //   gameViewModel.update(with: record)
                    isJoiningGame = true
                }
            } else {
                print("Game session not found.")
                // Handle the case where the game session is not found
            }
        }
    }
    
    private func savePlayerNameToCloudKit(_ playerName: String) {
        // Save player's name to CloudKit
        let recordType = "Player"
        let playerRecord = CKRecord(recordType: recordType)
        playerRecord["playerName"] = playerName
        
        CKContainer.default().publicCloudDatabase.save(playerRecord) { _, error in
            if let error = error {
                print("Error saving player's name to CloudKit: \(error.localizedDescription)")
                // Handle the error as needed
            } else {
                print("Player's name saved to CloudKit.")
            }
        }
    }
}

struct JoinGameView_Previews: PreviewProvider {
    static var previews: some View {
        JoinGameView(gameViewModel: GameViewModel())
    }
}
