//
//  RecipeModel.swift
//  RecipeListApp
//
//  Created by Ayush Prasad on 23/03/23.
//

// Strucutre and classes
import Foundation

class RecipeModel :  Decodable , Identifiable {

    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
    
   
    
}
