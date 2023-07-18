//
//  LoginView.swift
//  swift_todo
//
//  Created by Jan Koczuba on 17/07/2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack {
                HeaderView(title: "To Do List",
                           angle: -15,
                           background: Color.pink)
                
                
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
                    TLButton(title: "Log In", background: .blue){
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                VStack{
                    NavigationLink("Create New Account", destination: RegistrationView())
                }.padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
