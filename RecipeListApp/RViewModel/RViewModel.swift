//
//  RViewModel.swift
//  RecipeListApp
//
//  Created by Ayush Prasad on 23/03/23.
//

import Foundation

class RviewModel : ObservableObject 
{
    @Published var recipe = [RecipeModel]()
    
    init(){
        // create instance of data service
        
        self.recipe = Services().getdata()
        
        // set recipes properties
    }
}
