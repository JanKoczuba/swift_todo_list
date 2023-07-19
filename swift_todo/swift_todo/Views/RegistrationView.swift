//
//  RegistrationView.swift
//  swift_todo
//
//  Created by Jan Koczuba on 17/07/2023.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewViewModel()

    var body: some View {
        VStack {
            HeaderView(title: "To Do List",
                       angle: 15,
                       background: Color.orange)
            
            Form {
                if !viewModel.errorMessage.isEmpty{
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(title: "Register Account", background: .green){
                    viewModel.register()
                }
                
            }.offset(y: -50)
            
            Spacer()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
