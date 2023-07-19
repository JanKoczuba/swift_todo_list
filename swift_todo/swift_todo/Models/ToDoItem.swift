//
//  ToDoItem.swift
//  swift_todo
//
//  Created by Jan Koczuba on 19/07/2023.
//

import Foundation


struct ToDoItem: Codable, Identifiable{
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}
