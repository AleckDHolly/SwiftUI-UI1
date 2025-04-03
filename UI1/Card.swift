//
//  Card.swift
//  UI1
//
//  Created by Aleck David Holly on 2025-04-03.
//

import SwiftUI

struct Card: View {
    let image: ImageResource
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .frame(maxWidth: .infinity)
                .clipped()
                
                
            
            HStack {
                Image(systemName: "hexagon")
                    .padding(10)
                    .background(.ultraThinMaterial)
                    .clipShape(Circle())
                    .padding(.trailing, 10)
                
                VStack(alignment: .leading) {
                    Text("Best Offer")
                        .foregroundStyle(.secondary)
                    Text("10.75 ETH")
                        .fontWeight(.bold)
                }
                
                Spacer()
                Divider()
                Spacer()
                
                Image(systemName: "hexagon")
                    .padding(10)
                    .background(.ultraThinMaterial)
                    .clipShape(Circle())
                    .padding(.trailing, 10)
                
                VStack(alignment: .leading) {
                    Text("Ending in:")
                        .foregroundStyle(.secondary)
                    Text("3:10:05")
                        .fontWeight(.bold)
                }
                
            }
            .padding(10)
            .frame(height: 65)
            .frame(maxWidth: .infinity)
            .background(.ultraThickMaterial)
        }
        .clipShape(CustomShape())
        .frame(height: 300)
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

#Preview {
    Card(image: .audi)
}
