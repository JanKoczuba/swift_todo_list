//
//  ToDoItemViewViewModel.swift
//  swift_todo
//
//  Created by Jan Koczuba on 20/07/2023.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation


class ToDoItemViewViewModel: ObservableObject{
    
    init() {}
    
    func toogleIsDone(item: ToDoItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        guard let userId = Auth.auth().currentUser?.uid else{
            return
        }
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
        
    }
}
