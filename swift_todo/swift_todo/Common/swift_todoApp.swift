//
//  swift_todoApp.swift
//  swift_todo
//
//  Created by Jan Koczuba on 17/07/2023.
//
import FirebaseCore
import SwiftUI

@main
struct swift_todoApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
