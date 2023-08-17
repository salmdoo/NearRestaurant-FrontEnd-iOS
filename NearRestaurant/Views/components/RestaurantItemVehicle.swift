//
//  RestaurantItem1.swift
//  NearRestaurant
//
//  Created by Salmdo on 6/29/23.
//

import SwiftUI

struct RestaurantItemVehicle: View {
    var restaurantVM: RestaurantViewModel
    
    var body: some View {
        NavigationLink {
            RestaurantDetailsScreen()
        } label: {
            VStack (alignment: .leading, spacing: 7) {
                ZStack(alignment: .top) {
                    CustomImage(urlString: restaurantVM.image, width: 160, height: 130)
                    
                    HStack(alignment: .top) {
                        InfoTag(showStar: true, textStr: "3.4", showStroke: true)
                        Spacer()
                        LikeIconRestaurant(showStroke: true, padding: 7)
                    }.padding(10)
                }
                Text(restaurantVM.name)
                    .font(.headline)
                    .foregroundColor(.black)
                Text(restaurantVM.address)
                    .font(.caption2)
                    .foregroundColor(.gray)
                InfoTag(textStr: restaurantVM.distance, showStroke: true)
                
            }
            .fixedSize()
        }

        
    }
}

struct RestaurantItemVehicle_Previews: PreviewProvider {
  
   let restaurantListVM = RestaurantListViewModel()
   static var previews: some View {
       RestaurantItemVehicle(restaurantVM: RestaurantViewModel(restaurant: Restaurant(categoryId: "", categoryName: "", restaurantInfo: RestaurantInfo(_id: "", name: "Bakc name", address: "123 Nblio Holay", services: ["WIFI"], rate: 4.5, distance: 12, longDescription: "Long and long", shortDescription: "Short", timeOpen: "08am-12am", dayOfWeek: "Mon to Fri", image: "https://s3.us-west-2.amazonaws.com/images.unsplash.com/application-1688213434869-d9e3e4ed414dimage"))))

   }
}

