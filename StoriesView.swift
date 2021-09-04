//
//  StoriesView.swift
//  Facebook
//
//  Created by Salma Aly on 7/20/21.
//

import Foundation
import SwiftUI

struct StoriesView: View {
    let stories: [String]
    var body: some View {
        
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 5) {
                    ForEach(stories, id: \.self) { name in
                        Image(name)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 140, height: 200, alignment: .center)
                            .background(Color(fbBlue))
                            .clipped()
                    }
                }
                .padding()
            }
        }
}
