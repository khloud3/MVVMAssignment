//
//  BookViewModel.swift
//  FavoriteBook
//
//  Created by khloud on 04/11/1444 AH.
//

import SwiftUI

extension BookView {
    final class ViewModel: ObservableObject {
        @Published var items = [Item]()
        @Published var showingFavs = false
        @Published var savedItems: Set<Int> = [1, 7]
        var filteredItems: [Item] {
            if showingFavs {
                
                return items.filter { savedItems.contains ($0 .id)}
            }else{
                return items
            }
        }
        private var db = Database ()
   
        init (){
    
            self.savedItems = db.load()
        self.items = Item.sampleItems
       
        }

        func sortFavs() {
            withAnimation {
                showingFavs.toggle ()
            }
        }
            func contains (_ item: Item) -> Bool {
                savedItems.contains(item.id)
            }
        func toggleFav(item :Item){
            if contains (item) {
            savedItems.remove(item.id)
            } else {
                savedItems.insert (item.id)
            }
            db.save (items: savedItems)
        }
    }
}




//extension BookView {
//    @MainActor class BookViewModel :ObservableObject{
//        @Published var allBooks : [Books] = []
//
//        func addBookk(){
//            let randomBook = ["Burger","Ries","Seafood"]
//            let book = randomBook.randomElement()!
//
//            let newBook = Books(title: book, describtion: "mhgh\(allBooks)!")
//            withAnimation{
//
//                allBooks.insert(newBook, at: 0)
//            }
//        }
//    }
//}
