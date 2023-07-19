//
//  ToDOItems.swift
//  swift_todo
//
//  Created by Jan Koczuba on 17/07/2023.
//

import SwiftUI

struct ToDoItemsView: View {
    @StateObject var viewModel = ToDoItemsViewViewModel()
    
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView{
            VStack {
                
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
