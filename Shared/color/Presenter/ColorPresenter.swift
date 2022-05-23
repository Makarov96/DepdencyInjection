//
//  ColorPresenter.swift
//  DepdencyInjection (iOS)
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import Foundation
import SwiftUI



class ColorPresenter: ObservableObject{
    private let interactor: ColorInteractor
    @Published var dynamicColorPresenter: Color = Color.white
    
    init(interactor:ColorInteractor){
        self.interactor = interactor
       _ = self.interactor.$dynamicColorInteractor.assign(to: \.dynamicColorPresenter, on: self)
    }
    
    func changeColor()-> some View{
        Button(action: interactor.getRandomColor, label: {
            Image(systemName: "lasso.and.sparkles")
        }).tint(.red)
    }
}
