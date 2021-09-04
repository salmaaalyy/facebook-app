//
//  FBPostView.swift
//  Facebook
//
//  Created by Salma Aly on 7/20/21.
//

import Foundation
import SwiftUI

struct FBPost: View{
    @State var isLiked: Bool = false
    let model: FBPostModel
    
    var body : some View{
        VStack{
            HStack{
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .cornerRadius(25)
                VStack{
                    HStack{
                        Text(model.name)
                            .foregroundColor(Color(fbBlue))
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack{
                        Text("0 seconds ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }

                }
                Spacer()
            }
            Spacer()
            
            HStack{
                Text(model.post)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            HStack{
                Button(action: {
                    isLiked.toggle()
                }, label: {
                        Text(isLiked ? "Liked" : "Like")
                    })

                Spacer()

                Button(action: {
                }, label: {
                        Text("Comment")
                    })
                Spacer()

                Button(action: {
                }, label: {
                        Text("Share")
                    })
                }
                .padding()
            }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(7)
    }
}
