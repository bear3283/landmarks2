//
//  FavoriteButton.swift
//  Landmarks2
//
//  Created by bear on 4/1/25.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var inSet: Bool
    
    var body: some View {
        Button{
            inSet.toggle( )
        } label: {
            Label("Toggle Favorite", systemImage: inSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(inSet ? .yellow : .gray)
        }
    }
}


#Preview {
    FavoriteButton(inSet: .constant(true))
}
