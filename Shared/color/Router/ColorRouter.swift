//
//  ColorRouter.swift
//  DepdencyInjection (iOS)
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import Foundation
import SwiftUI

class ColorRouter{
    
    func colorView()-> some View{
        return RectangleRandomColor(colorPresenter: container.resolve(ColorPresenter.self)!)
    }
}
