//
//  Structures.swift
//  CEM_App_Group#8
//
//  Created by 서정원 on 2023/05/09.
//

import Foundation

class Structures: ObservableObject {
    let structures: [Structure]
    init() {
        if let url = Bundle.main.url(forResource: "structures", withExtension: "json"),
           let data = try? Data(contentsOf: url){
            if let structuresCheck = try? JSONDecoder().decode([Structure].self, from: data) {
                self.structures = structuresCheck
            } else {
                self.structures = [Structure.exampleStructure]
            }
        } else {
            self.structures = [Structure.exampleStructure]
        }
    }
}


