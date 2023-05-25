//
//  ContentView.swift
//  MVVM
//
//  Created by khloud on 04/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
   
    @StateObject private var vm = ItemsViewModel()
    var body: some View {
        VStack {
            List(vm.allItems){ item in
                Text(item.name)
                Text(item.description)
                
            }
            Button("Add Food"){
                vm.addItem()
            }
            Button("Remove "){
                vm.removeItem()
            }
        }
            
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
