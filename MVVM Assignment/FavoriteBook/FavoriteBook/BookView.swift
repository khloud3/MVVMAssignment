//
//  ContentView.swift
//  FavoriteBook
//
//  Created by khloud on 04/11/1444 AH.
//

import SwiftUI

struct BookView: View {
    @StateObject private var vm = ViewModel ()
    var body: some View {
        VStack {

            List {
                ForEach (vm.filteredItems) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text (item.title)
                                . font (.headline)
                            Text (item.description)
                                .font (.subheadline)
                        }
                        Spacer()
                        Image (systemName: vm.contains(item) ? "heart.fill":"heart" )
                            .foregroundColor(.red)
                            .onTapGesture {
                                vm.toggleFav (item: item)
                            }
                    }
                }
            }
            .cornerRadius(10)
            
            Button(" Favorites", action: vm.sortFavs)
                .padding ()
        }
    }
    
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
