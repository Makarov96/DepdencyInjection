//
//  RepositoryColor.swift
//  DepdencyInjection (iOS)
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import Foundation
import SwiftUI


protocol RepositoryColor{
    
    func getColor()-> Void;
    var dynamicColor: Published<Color>.Publisher{get}
    
}
