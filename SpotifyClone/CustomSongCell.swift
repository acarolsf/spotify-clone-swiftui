//
//  CustomSongCell.swift
//  SpotifyClone
//
//  Created by Ana Carolina on 18/02/21.
//

import SwiftUI

struct CustomSongCell: View {
    var body: some View {
        HStack {
            Image(systemName: "timelapse").padding(.trailing, 10)
            Text("Tittle")
            
            Spacer()
            Image(systemName: "ellipsis")
        }
        .padding(15)
        .background(Color.black)
        .foregroundColor(.white)
    }
}

struct CustomSongCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomSongCell()
    }
}
