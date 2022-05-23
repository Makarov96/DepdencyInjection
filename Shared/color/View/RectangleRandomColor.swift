//
//  RectangleRandomColor.swift
//  DepdencyInjection (iOS)
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import SwiftUI

struct RectangleRandomColor: View {
    
    @StateObject var colorPresenter: ColorPresenter
    
 
    var body: some View {
        VStack{
            Rectangle()
                .fill(colorPresenter.dynamicColorPresenter)
                .frame(width: 200, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer(minLength: 30)
            colorPresenter.changeColor()
        }
    }
}

