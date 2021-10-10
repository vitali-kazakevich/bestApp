//
//  LoginView.swift
//  BestApp
//
//  Created by Vitali Kazakevich on 10/10/21.
//

import SwiftUI

struct LoginView<ViewModel>: View where ViewModel: LoginViewModelProtocol {
    
    @ObservedObject var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack() {
            Image(systemName: "bolt.heart.fill")
                .resizable(resizingMode: .stretch)
                .foregroundColor(Color.red)
                .frame(width: 100.0, height: 100.0)
            Spacer().frame(height: 50.0)
            TextField("Login", text: $viewModel.login)
                .font(.headline)
            Divider()
            SecureField("Password", text: $viewModel.password)
                .font(.headline)
                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            Divider()
            Spacer().frame(height: 50.0)
            Button("Submit") { viewModel.submit() }
            .frame(width: 200.0, height: 40.0)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
        }
        .padding(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: MockViewModel())
    }
}

private class MockViewModel: LoginViewModelProtocol {
    var isLoggedIn = false
    var login = "Vitali"
    var password = "1234"
    func submit() {}
}
