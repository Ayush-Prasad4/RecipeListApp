//
//  DetailView.swift
//  RecipeListApp
//
//  Created by Ayush Prasad on 23/03/23.
//

import SwiftUI

struct DetailView: View {
    
    var recipe : RecipeModel
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Image(recipe.image).resizable()
                    .scaledToFill()
                
                VStack(alignment: .leading)
                {
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom,.top],5)
                    
                    ForEach(recipe.ingredients, id: \.self){
                        item in
                        
                        Text("-" + item)
                    }
                }.padding(.horizontal)
                
                Divider()
                
                VStack(alignment: .leading)
                {
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5)
                    }
                }.padding(.horizontal)
                
            }
        }.navigationBarTitle(recipe.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RviewModel()
        DetailView(recipe: model.recipe[0])
    }
}
