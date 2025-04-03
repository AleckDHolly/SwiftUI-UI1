//
//  NFTView.swift
//  UI1
//
//  Created by Aleck David Holly on 2025-04-03.
//

import SwiftUI

struct NFTView: View {
    let image: ImageResource
    @Environment(\.dismiss) private var dismiss
    @State private var liked: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left.circle")
                        .font(.largeTitle)
                        .padding()
                        .background(.ultraThinMaterial.opacity(0.75))
                        .clipShape(Circle())
                }
                .buttonStyle(.plain)
                
                Spacer()
                
                Button {
                    liked.toggle()
                } label: {
                    Image(systemName: liked ? "heart.fill" : "heart")
                        .foregroundStyle(liked ? .pink : .white)
                        .font(.largeTitle)
                        .padding()
                        .background(.ultraThinMaterial.opacity(0.75))
                        .clipShape(Circle())
                }
                .buttonStyle(.plain)
            }
            
            Spacer()
            
            HStack {
                HStack {
                    Image(.person)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipped()
                        .clipShape(Circle())
                    
                    VStack {
                        Text("Nolan Fisher")
                        Text("@nolan_fisher")
                    }
                }
                .padding(10)
                .background(.ultraThinMaterial.opacity(0.9))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Spacer()
                
                HStack {
                    Text("30K")
                    Image(systemName: "heart")
                        .padding(7.5)
                        .background(.thickMaterial)
                        .clipShape(.circle)
                }
                .padding(10)
                .background(.ultraThinMaterial.opacity(0.9))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.bottom, 30)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.ultraThinMaterial.opacity(0.6))
        .background(Image(image)
            .resizable()
            .ignoresSafeArea()
            .scaledToFill())
    }
}

#Preview {
    NFTView(image: .porsche)
}
