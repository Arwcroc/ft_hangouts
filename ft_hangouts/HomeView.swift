//
//  HomeView.swift
//  ft_hangouts
//
//  Created by Téo Froissart on 03/06/2024.
//

import Foundation
import SwiftUI

struct Message: Identifiable {
    var id = UUID()
    var photo: String
    var nameOrNumber: String
    var lastMessage: String
    var timestamp: String
}

struct HomeView: View {
    @State private var searchText = ""
    
    let messages = [
            Message(photo: "person.fill", nameOrNumber: "Milf Oeil", lastMessage: "Hello!", timestamp: "10:30 AM"),
            Message(photo: "person.fill", nameOrNumber: "0612345678", lastMessage: "Bastard!", timestamp: "Yesterday"),
            // Add more messages as needed
        ]
    
    var body: some View {
        NavigationView {
            VStack {
                // Search bar
                TextField("Rechercher...", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                
                List(messages) { message in
                    NavigationLink(destination: MessageView()) {
                        HStack {
                            Image(systemName: message.photo)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text(message.nameOrNumber)
                                    .font(.headline)
                                Text(message.lastMessage)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Text(message.timestamp)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 5)
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarItems(
                leading: Text("Messagerie")
                    .font(.largeTitle)
                    .bold(),
                trailing: HStack {
                    Button(action: {
                    }) {
                        Image(systemName: "person.badge.plus")
                            .imageScale(.large)
                    }
                    Button(action: {
                    }) {
                        Image(systemName: "square.and.pencil")
                            .imageScale(.large)
                    }
                }
            )
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(" ")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
