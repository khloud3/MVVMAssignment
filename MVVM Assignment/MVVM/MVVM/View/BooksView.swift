//
//  BooksView.swift
//  MVVM
//
//  Created by khloud on 04/11/1444 AH.
//

import SwiftUI

struct BooksView: View {
    @StateObject private var bk = BookViewModel()
    var body: some View{
    VStack {
        List(bk.allBooks){ book in
//            Text(book.)
            Text(book.title)
            Text(book.describtionB1)
            
        }
        Button("Remove Book"){
            bk.removeBook()
        }
        .listStyle(.automatic)
    }
    
    .padding()
}
}
    


struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView()
    }
}
