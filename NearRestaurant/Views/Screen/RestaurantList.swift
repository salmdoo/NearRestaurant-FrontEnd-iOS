//
//  RestaurantList.swift
//  NearRestaurant
//
//  Created by Salmdo on 6/30/23.
//

import SwiftUI

struct RestaurantList: View {
    @State private var selectedItem: String = ""
    private var optionList = ["List", "Map"]
    
    var body: some View {
        VStack {
           BigRestaurantListNearYou()
        }
        .toolbar {
            ToolbarItem(placement: .navigation)  {
                Picker("Choose item", selection: $selectedItem) {
                    ForEach(optionList, id: \.self) { item in
                        InfoTag(textStr: item)
                    }
                }.pickerStyle(.segmented)

            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "ellipsis")
                    .foregroundColor(Color(hex: CustomColor.mainRed))
            }
    }

    }
}

struct RestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantList().environmentObject(RestaurantListViewModel())
    }
}
