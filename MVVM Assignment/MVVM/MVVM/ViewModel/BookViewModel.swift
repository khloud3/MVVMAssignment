//
//  BookViewModel.swift
//  MVVM
//
//  Created by khloud on 04/11/1444 AH.
//

import SwiftUI
extension BooksView {
//    الواجة تأخذ المين
    @MainActor class BookViewModel :ObservableObject{
    @Published var count = 0
        @Published var allBooks : [Book] = []
    
        func decrement(){
            count -= 1
        }
        func removeBook(){
            let randomBook = ["1","2","3"]
            let book = randomBook.randomElement()!
            _ = Book(title: book, describtionB1: "ljik\(allBooks.count-1)!")      
            }
        }

}



