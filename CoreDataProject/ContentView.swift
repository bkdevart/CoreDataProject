//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Brandon Knox on 4/25/21.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        List {
            ForEach([2, 4, 6, 8, 10], id: \.self) {
                Text("\($0) is even")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
