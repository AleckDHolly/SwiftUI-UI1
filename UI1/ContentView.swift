//
//  ContentView.swift
//  UI1
//
//  Created by Aleck David Holly on 2025-04-02.
//

import SwiftUI

struct ContentView: View {
    let images: [ImageResource] = [.porsche, .nike, .audi]
    @Namespace private var namespace
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    TopElements()
                    
                    Title()
                    
                    Categories()
                    
                    ForEach(images.indices, id: \.self) { index in
                        NavigationLink {
                            NFTView(image: images[index])
                                .navigationBarBackButtonHidden()
                                .navigationTransition(.zoom(sourceID: "zoom\(index)", in: namespace))
                        } label: {
                            Card(image: images[index])
                                .matchedTransitionSource(id: "zoom\(index)", in: namespace)
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.ultraThinMaterial.opacity(0.2))
            .background(LinearGradient(stops: [.init(color: .navyBlue, location: 0.1), .init(color: .black, location: 1)], startPoint: .topLeading, endPoint: .bottom))
        }
    }
}

#Preview {
    ContentView()
}
