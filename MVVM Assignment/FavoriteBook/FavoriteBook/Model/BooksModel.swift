//
//  BooksModel.swift
//  FavoriteBook
//
//  Created by khloud on 04/11/1444 AH.
//

import Foundation
struct Item: Identifiable, Codable {
    var id: Int
    var title: String
    var description: String
    var isFaved: Bool
    

static var sampleItems: [Item] {
    var tempList = [Item]()
                    
                    for i in 1...7 {
        let id = i
        let title = "Book \(i)"
        let description = "The Author"
        tempList.append(Item(id: id, title: title, description: description, isFaved: false))
    }
              return tempList
                    }
                    }
