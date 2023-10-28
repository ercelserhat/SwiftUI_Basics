//
//  ContentView.swift
//  ParallaxCarousel
//
//  Created by Serhat on 28.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    let horizontalPadding: CGFloat = 30
    let cornerRadiusConstant: CGFloat = 10
    let paddingConstant: CGFloat = 10
    
    var body: some View {
        ZStack{
            VStack{
                Text("Visited Places")
                    .fontWeight(.bold)
                    .frame(height: 100)
                
                GeometryReader(){geometry in
                    let size = geometry.size
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 5){
                            ForEach(Card.cards) { card in
                                GeometryReader(){ proxy in
                                    let minX = min(proxy.frame(in: .scrollView).minX * 1.4, proxy.size.width * 1.4)
                                    Image(card.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .offset(x: -minX)
                                        .frame(width: proxy.size.width * 2.5)
                                        .frame(width: proxy.size.width)
                                        .frame(height: proxy.size.height)
                                        .overlay{
                                            titleOverlayForCard(card)
                                        }
                                        .clipShape(.rect(cornerRadius: cornerRadiusConstant))
                                        .shadow(color: .black.opacity(0.5), radius: cornerRadiusConstant, x: -1, y: paddingConstant)
                                }
                                .frame(width: size.width - 2*horizontalPadding - 2*paddingConstant, height: size.height - horizontalPadding)
                                .scrollTransition(.interactive, axis: .horizontal) { view, phase in
                                    view.scaleEffect(phase.isIdentity ? 1 : 0.95)
                                }
                            }
                        }
                        .padding(.horizontal, horizontalPadding )
                        .scrollTargetLayout()
                        .frame(height: size.height, alignment: .top)
                    }
                    .scrollTargetBehavior(.viewAligned)
                    .scrollIndicators(.hidden)
                }
                
                Text("Parallax Scroll Animation")
                    .font(.title.bold())
                    .frame(height: 100)
                
                Spacer()
            }
        }
    }
    
    
    @ViewBuilder
    private func titleOverlayForCard(_ card: Card) -> some View {
        ZStack(alignment: .bottomLeading){
            LinearGradient(colors: [
                .clear,
                .clear,
                .clear,
                .clear,
                .clear,
                .black.opacity(0.1),
                .black.opacity(0.5),
                .black
            ], startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading , spacing: 5) {
                Text(card.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Text(card.subTitle)
                    .font(.callout)
                    .foregroundStyle(.white.opacity(0.7))
            }
            .padding(paddingConstant)
        }
    }
}

#Preview {
    ContentView()
}
