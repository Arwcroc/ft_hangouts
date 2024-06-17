//
//  ContactView.swift
//  ft_hangouts
//
//  Created by Téo Froissart on 03/06/2024.
//

import Foundation
import SwiftUI

struct ContactView : View {
    @State private var isEditing = false
    @State private var firstName = "Fabriste"
    @State private var lastName = "Dupont"
    @State private var phone = "0612345678"
    @State private var email = "fabriste@example.com"
    
    var body: some View {
        NavigationView {
            VStack{
                ZStack {
                    Color.grey.ignoresSafeArea()
                    VStack {
                        Spacer()
                        Spacer()
                        Image(.sansTitre2001)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .padding(.top, 20)
                        Text(firstName)
                            .font(.system(size: 20))
                            .padding(.top, 1)
                            .padding(.bottom, 10)
                        HStack {
                            Button(action: {
                                isEditing.toggle()
                            }) {
                                Text(isEditing ? "Enregistrer" : "Modifier")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                                            }
                            .padding(.horizontal, 10)
                            Button(action: {
                            }) {
                                Text("Appel")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                            }
                            .padding(.horizontal, 10)
                            Button(action: {
                            }) {
                                Text("Supprimer")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background(Color.red)
                                    .cornerRadius(10)
                            }
                            .padding(.horizontal, 10)
                        }
                        Spacer()
                        if isEditing {
                            TextField("Prénom", text: $firstName)
                                .padding(4)
                                .background(Color.white)
                                .cornerRadius(5)
                                .frame(width: UIScreen.main.bounds.size.width * 0.95)
                            
                            TextField("Nom", text: $lastName)
                                .padding(4)
                                .background(Color.white)
                                .cornerRadius(5)
                                .frame(width: UIScreen.main.bounds.size.width * 0.95)
                            
                            TextField("Téléphone", text: $phone)
                                .padding(4)
                                .background(Color.white)
                                .cornerRadius(5)
                                .frame(width: UIScreen.main.bounds.size.width * 0.95)
                            
                            TextField("Email", text: $email)
                                .padding(4)
                                .background(Color.white)
                                .cornerRadius(5)
                                .frame(width: UIScreen.main.bounds.size.width * 0.95)
                        } else {
                            Text("Prénom: \(firstName)")
                            Text("Nom: \(lastName)")
                            Text("Téléphone: \(phone)")
                            Text("Email: \(email)")
                        }
                        Spacer()
                        Spacer()
                    }
                }
            }
        }
        .frame(height: 500)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
