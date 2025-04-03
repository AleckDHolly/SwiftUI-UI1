//
//  TopElements.swift
//  UI1
//
//  Created by Aleck David Holly on 2025-04-03.
//

import SwiftUI

struct TopElements: View {
    var body: some View {
        HStack {
            Image(.person)
                .resizable()
                .scaledToFill()
                .frame(width: 75, height: 75)
                .clipShape(.circle)
                .overlay {
                    Circle().stroke(LinearGradient(colors: [.cyan, .white], startPoint: .top, endPoint: .bottom), lineWidth: 4)
                }
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .frame(width: 75, height: 75)
                .background(.ultraThinMaterial)
                .clipShape(.circle)
            
            Image(systemName: "hexagon")
                .frame(width: 75, height: 75)
                .background(.ultraThinMaterial)
                .clipShape(.circle)
        }
        .padding()
    }
}

#Preview {
    TopElements()
}
