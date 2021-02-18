//
//  SearchPage.swift
//  SpotifyClone
//
//  Created by Ana Carolina on 18/02/21.
//

import SwiftUI

struct SearchPage: View {
    
    @State var search = ""
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        ScrollView {
            VStack(spacing: 18) {
                HStack {
                    Text("Search")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                    Spacer(minLength: 0)
                }
                HStack(spacing: 15) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                    TextField("Search", text: $search)
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(15)
                
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    ForEach(1...7, id: \.self) { index in
                        Image("album\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                            .cornerRadius(15)
                    }
                }
            }
            
            .padding()
            .padding(.bottom, 80)
        }
    }
}

struct SearchPage_Previews: PreviewProvider {
    static var previews: some View {
        SearchPage()
    }
}
