//
//  Categories.swift
//  UI1
//
//  Created by Aleck David Holly on 2025-04-03.
//

import SwiftUI

struct Categories: View {
    private let items: [String] = ["For you", "Trending", "New", "Art"]
    @State private var selected: Int = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(items.indices, id: \.self) { index in
                    Button {
                        selected = index
                    } label: {
                        Text(items[index])
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                            .background(
                                selected == index ? AnyShapeStyle(.cyan) : AnyShapeStyle(.ultraThinMaterial))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    Categories()
}
