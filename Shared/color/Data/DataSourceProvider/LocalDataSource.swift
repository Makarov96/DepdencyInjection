//
//  LocalDataSource.swift
//  DepdencyInjection (iOS)
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import Foundation
import SwiftUI


protocol LocalDataSourceProvider{
    func getColor()-> Void;
    var dynamicColor: Published<Color>.Publisher{get}
}


class CoreLocalSourceDataStack{
    @Published var dynamicColorPublished:Color = Color.white;
    
    
    init(){
        publish()
    }
    private func getColorRandom()->Color{
        return Color(red: Double.random(in: 0...1), green: Double.random(in: 0...1), blue: Double.random(in: 0...1))
        
    }
    
    private func publish()->Void{
        dynamicColorPublished = getColorRandom()
    }
}


extension CoreLocalSourceDataStack:LocalDataSourceProvider{
    func getColor() {
        self.publish();
    }
    
    var dynamicColor: Published<Color>.Publisher {
        $dynamicColorPublished
    }
    
    
}
