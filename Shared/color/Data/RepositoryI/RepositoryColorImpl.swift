//
//  RepositoryColorI.swift
//  DepdencyInjection (iOS)
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import Foundation
import SwiftUI

class RepositoryImplementColor: RepositoryColor{
    var dynamicColor: Published<Color>.Publisher
    


    private let localDataSourceProvider: LocalDataSourceProvider;

    init(localDataSourceProvider: LocalDataSourceProvider){
        self.localDataSourceProvider = localDataSourceProvider
        self.dynamicColor = self.localDataSourceProvider.dynamicColor
    }


    func getColor() {
        self.localDataSourceProvider.getColor()
     
    }
    
    
}
