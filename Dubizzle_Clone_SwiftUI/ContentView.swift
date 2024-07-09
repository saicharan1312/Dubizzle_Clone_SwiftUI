//
//  ContentView.swift
//  Dubizzle_Clone_SwiftUI
//
//  Created by Sai Charan Thummalapudi on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                
                SearchBar()
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: Array(repeating: .init(.fixed(70), spacing: 70, alignment: .center), count: 3)) {
                        ForEach(propObjsArr.indices, id: \.self) { i in
                            //struct to set the options
                            SetOptions(i: i)
                                .padding(3)
                        }
                    }
                    .padding()
                    
                    SetVerification()
                    
                    HStack {
                        Text("Popular in Residential for Rent")
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                            .padding()
                        Spacer()
                        Image(systemName: "arrow.right")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(propArr.indices, id: \.self) { i in
                                
                                SetPopularProperties(i: i)
                            }
                        }.padding(.leading,10)
                    }
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct SetOptions: View {
    @State var i: Int
    var body: some View {
        VStack{
            Image(propObjsArr[i].propertyIcon)
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
            
            
            Text(propObjsArr[i].name)
                .foregroundColor(.black)
                .font(.system(size: 16))
                .fontWeight(.medium)
                .cornerRadius(7)
                .padding(.horizontal,3)
        }
        .frame(width: 128, height: 135)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 0.6))
        
    }
}

struct SetVerification: View {
    var body: some View {
    HStack {
        Image(systemName: "checkmark.seal.fill")
            .font(.largeTitle)
            .frame(width: 85, height: 150, alignment: .center)
            .foregroundColor(.blue)
            .background(Color.lightBlue)
        
        
        VStack{
            Spacer()
            Text("Become a verified seller")
                .font(.system(size: 18))
                .fontWeight(.medium)
                
            Spacer()
            Text("Build Trust")
                .font(.system(size: 16))
                .padding(.leading,-100)
            Spacer()
            Text("Get increased visibility")
                .font(.system(size: 16))
                .padding(.leading,-38)
            Spacer()
            Text("Unlock Exclusive rewards")
                .font(.system(size: 16))
                .padding(.leading,-15)
            Spacer()
            Text("Get Started")
                .font(.system(size: 16))
                .fontWeight(.semibold)
                .foregroundColor(.blue)
                .padding(.leading,-100)
            
        }.frame(width: 250, height: 100 , alignment: .leading)
        
        Image(systemName: "arrow.right")
            .font(.title2)
            .frame(width: 50, height: 150, alignment: .center)
            .foregroundColor(.black)
    }
    .frame(width: 400, height: 150)
    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 0.5))
    }
}

struct SetPopularProperties: View {
    @State var i: Int
    var body: some View {
        VStack{
            Image(propArr[i].iconImage)
                .resizable()
                .frame(width: 155, height: 155)
                .padding(.bottom,2.5)
            
            
            Text(propArr[i].rental)
                .foregroundColor(.black)
                .font(.system(size: 17))
                .cornerRadius(7)
            
            Text(propArr[i].typeOfProp)
                .foregroundColor(.black)
                .font(.system(size: 17))
                .cornerRadius(7)
                .frame(width: 155, height: 10, alignment: .center)
            
            Text(propArr[i].location)
                .foregroundColor(.black)
                .font(.system(size: 17))
                .cornerRadius(7)
                .padding(.bottom,5)
            
        }
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1).shadow(color: .gray, radius: 2, x: 0, y: 0))
        .padding(.trailing,5)
    }
}

extension Color {
    static let lightBlue = Color(red: 0.9, green: 0.9, blue: 0.99)
}

struct SearchBar: View {
    @State private var searchText = ""
    var body: some View {
        HStack {
            HStack{
            Image(systemName: "house.fill")
                .font(.title3)
                .foregroundColor(.red)
                .padding(.leading,5)
                
            TextField("Search for a property", text: $searchText)
                .font(.system(size: 20, weight: .medium, design: .default))
                .frame(width: 320, height: 40)
            }.overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 0.5).shadow( radius: 2, x: 0, y: 2))
            
            Button(action: {}) {
                Image(systemName: "bell")
                    .font(.title2)
                    .foregroundColor(.red)
            }
        }
        .frame(width: 400, height: 40)
    }
}
