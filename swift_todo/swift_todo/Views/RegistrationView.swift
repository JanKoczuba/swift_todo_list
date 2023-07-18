//
//  RegistrationView.swift
//  swift_todo
//
//  Created by Jan Koczuba on 17/07/2023.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = "";
    @State var password = "";
    
    var body: some View {
        VStack {
            HeaderView(title: "To Do List",
                       angle: 15,
                       background: Color.orange)
            
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(title: "Register Account", background: .green){
                    //Action
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
