//
//  ContentView.swift
//  Shared
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var routerRandomColor: ColorRouter = ColorRouter()

    var body: some View {
        routerRandomColor.colorView()
    }

  
 
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
