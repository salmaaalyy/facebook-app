//
//  ContentView.swift
//  Facebook
//
//  Created by Salma Aly on 7/20/21.
//

import SwiftUI

struct FBPostModel: Hashable {
    let name: String
    let post: String
}

let posts: [FBPostModel] = [
        FBPostModel(name: "Person 1",
                    post: "Hey guys! This is my first post! I want to create a cool app!"),
        FBPostModel(name: "Person 2",
                    post: "i'm so bored"),
        FBPostModel(name: "Person 3",
                    post: "woo")
    ]
let fbBlue = UIColor (red: 23/255,
                      green: 120/255,
                      blue: 242/255,
                      alpha: 1)
struct ContentView: View {
    @Binding var text: String
    
    let stories = ["pic1", "pic2", "pic3", "pic4", "pic5", "pic6"]
  
    
    var body: some View {
        VStack{
            HStack{
                Text("facebook")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(fbBlue))
                
                Spacer()
                
                Image (systemName: "person.circle")
                    .resizable()
                    .frame(width: 45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(fbBlue))
            }
            .padding()
            
            TextField("Serach...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(13)
                .padding(.horizontal, 15)
                
            ZStack {
                Color(.secondarySystemBackground)

                ScrollView(.vertical) {
                    VStack {
                        StoriesView(stories: stories)

                        ForEach(posts, id: \.self) { model in
                            FBPost(model: model)
                            Spacer()
                        }
                    }
                }
            }
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
