//
//  DataService.swift
//  RecipeListApp
//
//  Created by Ayush Prasad on 23/03/23.
//

import Foundation

class Services {
    
    func getdata()->[RecipeModel]
    {
        // parse the local data
        
        // get url path to the json file
        
        let path = Bundle.main.path(forResource: "recipes", ofType: "json") // can be nil
        
        guard path != nil else {
            return [RecipeModel]()
        }
        // create a url object
        let url = URL(fileURLWithPath: path!) // we above already check its not nil so we can unwrrap
        // create a data object
        
        do{
            let data = try Data(contentsOf: url)
            
            //decode a data with json decoder
            let decoder = JSONDecoder()
            do{
                let servicerecipedata = try decoder.decode([RecipeModel].self, from : data)
                
                // add unique id
                for r in servicerecipedata{
                    r.id = UUID()
                    
                }
                // return recipes
                return servicerecipedata
            }
            catch{
                print(error)
            }
            
        }
        catch{
            print(error)
        }
        
        
        return [RecipeModel]()
    }
    
}
