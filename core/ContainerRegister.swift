//
//  ContainerRegister.swift
//  DepdencyInjection (iOS)
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import Foundation
import Swinject



var  container : Container = {
    let container = Container()
    //Data Source
    container.register(LocalDataSourceProvider.self){
        _ in
        return CoreLocalSourceDataStack()
    }
    //Repostories
    container.register(RepositoryColor.self){
        resolver in
        let  repositoryColor =  RepositoryImplementColor(localDataSourceProvider: resolver.resolve(LocalDataSourceProvider.self)!)
        return repositoryColor
    }
    
    //Interactor
    
    container.register(ColorInteractor.self){
        resolver in
        let  diInteractor = ColorInteractor(repositoryColor: resolver.resolve(RepositoryColor.self)!)
        return diInteractor
    }
    
    //Presenter
    container.register(ColorPresenter.self){
        resolver in
        let diPresenter = ColorPresenter(interactor: resolver.resolve(ColorInteractor.self)!)
        return diPresenter
    }
    
    return container
}()


//ColorProviding -abs class into youtube video
//ColorProvider -implementation class into youtube video
