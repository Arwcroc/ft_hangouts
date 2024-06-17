//
//  MessageView.swift
//  ft_hangouts
//
//  Created by Téo Froissart on 04/06/2024.
//

import Foundation
import SwiftUI

struct Conversation {
    let user1: String
    let user2: String
    var messages: [Message]
}

extension Color {
    static let grey = Color(red: 209/255, green: 209/255, blue: 214/255)
}

struct MessageView : View {
    @State private var presentingContactView = false
    
    var body: some View {
        NavigationView {
            VStack{
                ZStack {
                    Color.grey.ignoresSafeArea()
                    NavigationLink(destination: ContactView()) {
                        Button(action: {
                            presentingContactView = true
                        }) {
                            VStack {
                                Image(.sansTitre2001)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .padding(.top, 50)
                                Text("Fabriste")
                                    .font(.system(size: 14))
                                    .padding(.top, 1)
                                    .padding(.bottom, 10)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                }
                .frame(height: 50)
                Spacer()
            }
        }
        .sheet(isPresented: $presentingContactView) {
            ContactView()
                .frame(height: 400)
                .presentationDetents([.height(400)])
//                .presentationBackground(.thinMaterial)
        }
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
