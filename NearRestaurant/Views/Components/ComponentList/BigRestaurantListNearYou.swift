//
//  BigRestaurantListNearYou.swift
//  NearRestaurant
//
//  Created by Salmdo on 7/4/23.
//

import SwiftUI

struct VerticalRestaurantList: View {
    @EnvironmentObject var restaurantListVM: RestaurantListViewModel
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
              LongButtonWithIcon(text: "SORT BY", icon: "text.alignleft")
              LongButtonWithIcon(text: "FILTERS", icon: "slider.horizontal.3")
            }
            ScrollView(.vertical) {
                LazyVStack {
                    ForEach(restaurantListVM.restaurantList, id: \.id) { restaurant in
                        RestaurantItemHorizontal(restaurantVM: restaurant)
                    }
                }
            }
            
        }.padding()
    }
}

struct BigRestaurantListNearYou_Previews: PreviewProvider {
    static var previews: some View {
        VerticalRestaurantList().environmentObject(RestaurantListViewModel())
    }
}
