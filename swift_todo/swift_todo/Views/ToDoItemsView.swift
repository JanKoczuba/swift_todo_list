//
//  ToDOItems.swift
//  swift_todo
//
//  Created by Jan Koczuba on 17/07/2023.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoItemsView: View {
    @StateObject var viewModel: ToDoItemsViewViewModel
    @FirestoreQuery var items: [ToDoItem]
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(
            wrappedValue:  ToDoItemsViewViewModel (userId: userId)
        )
    }
    
    var body: some View {
        NavigationView{
            VStack {
                List(items){ item in
                    ToDoItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button{
                    viewModel.showingNewItemView = true
                }label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

struct ToDOItems_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemsView(userId: "")
    }
}
