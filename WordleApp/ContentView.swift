//
//  ContentView.swift
//  WordleApp
//
//  Created by Kevin Xu on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    
    // keep array of valid words
    @State var validWords = [String]()
    @State var alreadyComputed = false
    
    // configure the cell appearance
    let borderWidth = 1.0
    let boxSize = 50.0
    
    // hard coded word for testing
    @State var hardCodedWord = "APPLE"
    
    // has the player won?
    @State var hasWon = false

    // which row of graphic to update, tracks wrong guesses
    @State var currentLevel = -1
    
    // stores the current guess
    @State var guessesStored = ""
    
    // array that keeps track of all the guesses
    @State var guesses = [String](repeating: "     ", count: 6)
    
    // keeps track of what color the cells should be in each row
    @State var colors = [[Color]](repeating: [Color](repeating: Color.black, count: 5), count: 6)
    
    
    @State var clearGuesses = [String](repeating: "     ", count: 6)
    @State var clearColors = [[Color]](repeating: [Color](repeating: Color.black, count: 5), count: 6)

    
    
    var body: some View {
        VStack() {
            // fold is cmd option left
            // option + hover = documentation
            
            HStack {
                Text(guesses[0][0])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[0][0])
                    )
                Text(guesses[0][1])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[0][1])
                    )
                Text(guesses[0][2])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[0][2])
                    )
                Text(guesses[0][3])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[0][3])
                    )
                Text(guesses[0][4])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[0][4])
                    )
            }
                
            // level 2
                
            HStack {
                Text(guesses[1][0])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[1][0])
                    )
                Text(guesses[1][1])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[1][1])
                    )
                Text(guesses[1][2])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[1][2])
                    )
                Text(guesses[1][3])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[1][3])
                    )
                Text(guesses[1][4])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[1][4])
                    )
            }
                    
            // level 3
                    
            HStack {
                Text(guesses[2][0])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[2][0])
                    )
                Text(guesses[2][1])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[2][1])
                    )
                Text(guesses[2][2])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[2][2])
                    )
                Text(guesses[2][3])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[2][3])
                    )
                Text(guesses[2][4])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[2][4])
                    )
            }
                        
            // level 4
                        
            HStack {
                Text(guesses[3][0])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[3][0])
                    )
                Text(guesses[3][1])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[3][1])
                    )
                Text(guesses[3][2])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[3][2])
                    )
                Text(guesses[3][3])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[3][3])
                    )
                Text(guesses[3][4])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[3][4])
                    )
            }
                
            // level 5
            
            HStack {
                Text(guesses[4][0])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[4][0])
                    )
                Text(guesses[4][1])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[4][1])
                    )
                Text(guesses[4][2])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[4][2])
                    )
                Text(guesses[4][3])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[4][3])
                    )
                Text(guesses[4][4])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[4][4])
                    )
            }
                                
            // level 6
            
            HStack {
                Text(guesses[5][0])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[5][0])
                    )
                Text(guesses[5][1])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[5][1])
                    )
                Text(guesses[5][2])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[5][2])
                    )
                Text(guesses[5][3])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[5][3])
                    )
                Text(guesses[5][4])
                    .padding()
                    .fixedSize()
                    .frame(width: boxSize, height: boxSize)
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .fill(colors[5][4])
                    )
            }

            TextField("Enter Guess", text: $guessesStored)
                .multilineTextAlignment(.center)
                .padding()
            
            Button {
                print("Length is", guessesStored.trimmingCharacters(in: .whitespacesAndNewlines).length)
                if alreadyComputed && currentLevel != 5 && !hasWon && guessesStored.trimmingCharacters(in: .whitespacesAndNewlines).length == 5 {
                    print("PRESSED")
                    currentLevel += 1
                    guesses[currentLevel] = guessesStored.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
                    if analyze(level: currentLevel) == 1 {
                        // correctly guessed word
                        hasWon = true
                        print("YOU WON!")
                    }
                    else if currentLevel == 5 {
                        print("YOU LOST!")
                    }
                }
                guessesStored = ""
            } label: {
                Text("Submit")
            }
            .padding()
            
            Button {
                currentLevel = -1
                hasWon = false
                guesses = clearGuesses
                colors = clearColors
                if !alreadyComputed {
                    addValidWords()
                    alreadyComputed = true
                }
                chooseWord()
            } label: {
                Text("New Game")
            }
            .padding()
        }
        .padding()
    }
    
    func chooseWord() {
        let idx = Int.random(in: 0..<validWords.count)
        hardCodedWord = validWords[idx].uppercased()
        print(hardCodedWord)
    }
    
    func analyze(level: Int) -> Int {
        // compares guesses to answer
        var idxOther = [Int] ()
        var hardCodedWordDict: [String: Int] = [:]
        for i in 0...4 {
            if guesses[currentLevel][i] == hardCodedWord[i] {
                colors[level][i] = Color.green
            }
            else {
                idxOther.append(i)
                if hardCodedWordDict[hardCodedWord[i]] == nil {
                    hardCodedWordDict[hardCodedWord[i]] = 1
                }
                else {
                    hardCodedWordDict[hardCodedWord[i]] = hardCodedWordDict[hardCodedWord[i]]! + 1
                }
            }
        }
        // determine which cells are yellow or black
        
        if idxOther.count == 0 {
            return 1
        }
        for idx in idxOther {
            if hardCodedWordDict[guesses[currentLevel][idx]] == nil || hardCodedWordDict[guesses[currentLevel][idx]]! <= 0 {
                // should be gray
                colors[level][idx] = Color.gray
            }
            else {
                hardCodedWordDict[guesses[currentLevel][idx]]! -= 1
                colors[level][idx] = Color.yellow
            }
        }
        return 0
    }
    
    func addValidWords()  {
        do {
            // This solution assumes  you've got the file in your bundle
            if let path = Bundle.main.path(forResource: "validwords", ofType: "txt"){
                let data = try String(contentsOfFile:path, encoding: String.Encoding.utf8)
                let arrayOfStrings = data.components(separatedBy: "\n")
                validWords = arrayOfStrings
            }
        } catch let err as NSError {
            // do something with Error
            print(err)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
