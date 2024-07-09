//
//  Model.swift
//  Dubizzle_Clone_SwiftUI
//
//  Created by Sai Charan Thummalapudi on 7/8/24.
//

import Foundation
struct PropertyOptions {
    var propertyIcon : String
    var name: String
}

let propObjsArr = [PropertyOptions(propertyIcon: "apartment1", name: "Property for Rent"),
                   PropertyOptions(propertyIcon: "apartment3", name: "Property for Sale"),
                   PropertyOptions(propertyIcon: "apartment4", name: "Off-Plan Properties"),
                   PropertyOptions(propertyIcon: "door", name: "Rooms for Rent"),
                   PropertyOptions(propertyIcon: "car", name: "Motors"),
                   PropertyOptions(propertyIcon: "wedding-suit", name: "Jobs"),
                   PropertyOptions(propertyIcon: "sofa", name: "Classifieds"),
                   PropertyOptions(propertyIcon: "gardening", name: "Furniture & Garden"),
                   PropertyOptions(propertyIcon: "diversity", name: "Community")]



struct Properties {
    var iconImage : String
    var location : String
    var rental: String
    var typeOfProp: String
}

let propArr = [Properties(iconImage:"house", location: "100 NYC, NY", rental: "$2,500", typeOfProp: "Villa"),
               Properties(iconImage:"house", location: "100 NYC, NY", rental: "$1,600", typeOfProp: "3BHK"),
               Properties(iconImage:"house", location: "100 NYC, NY", rental: "$7,500", typeOfProp: "Town House"),
               Properties(iconImage:"house", location: "100 NYC, NY", rental: "$12,500", typeOfProp: "2BHK")]

