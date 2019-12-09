//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Chris on 12/4/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        NavigationView{
            List(landmarkData) { landmark in
                //Nav link will send the row to the destination page
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
