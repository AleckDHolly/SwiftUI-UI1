//
//  Title.swift
//  UI1
//
//  Created by Aleck David Holly on 2025-04-03.
//

import SwiftUI

struct Title: View {
    var body: some View {
        VStack {
            Text("Explore and discover")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("exclusive NFTs")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(LinearGradient(
                    colors: [.primary, .cyan],
                    startPoint: .leading,
                    endPoint: .trailing))
        }
        .padding()
    }
}

#Preview {
    Title()
}
