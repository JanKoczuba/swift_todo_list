//
//  ToDoItemsViewViewModel.swift
//  swift_todo
//
//  Created by Jan Koczuba on 19/07/2023.
//

import FirebaseFirestore
import Foundation

class ToDoItemsViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
    
    
}
