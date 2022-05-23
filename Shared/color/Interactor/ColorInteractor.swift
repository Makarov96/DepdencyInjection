//
//  ColorInteractor.swift
//  DepdencyInjection (iOS)
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import Foundation
import SwiftUI


class ColorInteractor{
    
    private let repositoryColor: RepositoryColor;
    @Published var dynamicColorInteractor:Color = Color.white
    
    init(repositoryColor: RepositoryColor){
        self.repositoryColor = repositoryColor;
        setUp()
    }
    
    
    
    func getRandomColor(){
        self.repositoryColor.getColor()
    }
    
    func setUp()-> Void{
        _ = self.repositoryColor.dynamicColor.assign(to:\.dynamicColorInteractor, on: self)
        
    }
    
}
