//
//  SimpleTodoApp.swift
//  SimpleTodo
//
//  Created by としや on 2021/10/21.
//

import SwiftUI

@main
struct SimpleTodoApp: App {
    let persistentContainer = CoreDataManager.shared.persistentContainer
//    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
