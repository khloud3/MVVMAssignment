//
//  ItemsViewModel.swift
//  MVVM
//
//  Created by khloud on 04/11/1444 AH.
//

import SwiftUI
extension ContentView {
   
    @MainActor class ItemsViewModel :ObservableObject{
    @Published var count = 1
        @Published var allItems : [Items] = []
//        @AppStorage("items") var items: [String] = []
//      
    
        func increment(){
            count -= 1
        }
        func addItem(){
            let randomItems = ["Burger","Ries","Seafood"]
            let item = randomItems.randomElement()!
        let newItem = Items( image:"book1" ,name: item, description: "pp ddd\(allItems.count-1)!")
          withAnimation{
               allItems.insert(newItem, at: 0)
                               
                               }
            
        }
        
        func removeItem(){
            allItems.remove(at: 0)
        }
        
        func checkAvailability(){
            
        }


}
}
