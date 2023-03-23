//
//  ContentView.swift
//  RecipeListApp
//
//  Created by Ayush Prasad on 23/03/23.
//

import SwiftUI

struct ContentView: View {
    
    // refernce the viewmodel
    
    @ObservedObject var viewmodel = RviewModel()
    
    var body: some View {
        VStack {
            NavigationView{                List(viewmodel.recipe){ r in
                
                NavigationLink(destination: DetailView(recipe:r), label: {
                    HStack{
                        Image(r.image)
                            .resizable().scaledToFill()
                            .frame(width: 50 , height: 50 , alignment: .center)
                            .clipped()
                            .cornerRadius(10)
                        Text(r.name)
                    }
                })
            }.navigationBarTitle("All Recipes")
            }
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }}
