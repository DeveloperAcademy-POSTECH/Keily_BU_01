//
//  ContentView.swift
//  listOfRandomWords
//
//  Created by yeekim on 2022/06/28.
//

import SwiftUI

struct ContentView: View {
    @State var numbersOfWords = 10
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("영어 단어 가져오기")
                        .padding()
                }
                Stepper(value: $numbersOfWords) {
                    Text("불러올 단어의 갯수 : \(numbersOfWords)개")
                }
                .padding(.horizontal, 30)
                NavigationLink(destination: WordsListView(count:$numbersOfWords)) {
                    Text("단어생성!")
                }
                Spacer()
            }
        }
    }
}

struct Words: Codable {
    let words: [String]
}

struct Word: Codable {
    let word: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
