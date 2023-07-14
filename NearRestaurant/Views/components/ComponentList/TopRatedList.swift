//
//  TopRatedList.swift
//  NearRestaurant
//
//  Created by Salmdo on 7/4/23.
//

import SwiftUI

struct TopRatedList: View {
    @ObservedObject var topRatedListVM = TopRatedListViewModel()
    var body: some View {
        VStack {
            HStack {
                Text("Top Rated")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Text("See all")
                    .font(.headline)
                    .foregroundColor(.red)
                Image(systemName: "chevron.forward")
                    .foregroundColor(.red)
            }
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
            
            ScrollView {
                ForEach(topRatedListVM.topRatedListVM, id: \.id) { restaurant in
                    RestaurantItem(restaurantVM: restaurant)
                }
            }
        }
        
        .onAppear(){
            topRatedListVM.fetchTop5Restaurant()
        }
    }
}

struct TopRatedList_Previews: PreviewProvider {
    static var previews: some View {
        TopRatedList()
    }
}
