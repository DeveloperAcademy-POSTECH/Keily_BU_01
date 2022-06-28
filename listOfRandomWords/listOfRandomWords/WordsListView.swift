//
//  WordsListView.swift
//  listOfRandomWords
//
//  Created by yeekim on 2022/06/28.
//

import SwiftUI

struct WordsListView: View {
    @Binding var count: Int
    @State var words: [String] = []
    
    var body: some View {
        VStack {
            Text("랜덤 단어 \(count)개")
            List(words, id:\.self) { item in
                VStack(alignment: .leading) {
                    Text(item)
                }
            }
            Button("reload data!") {
                // rewrite a list of words
                Task {
                    await loadData()
                }
            }
        }
        // MARK: 싱크차이는 어떻게 해결할 수 있을까?
        .task{
            await loadData()
        }
    }
    
    func loadData() async {
        do {
            // take an url
            guard let url = URL(string: "https://random-word-api.herokuapp.com/word?number=\(count)")
            else {
                print("Invalid URL")
                return
            }
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            let decoded = try decoder.decode([String].self, from: data)
            words = decoded
        }
        catch {
            
        }
    }
}

//struct WordsListView_Previews: PreviewProvider {
//    static var previews: some View {
//        WordsListView()
//    }
//}
