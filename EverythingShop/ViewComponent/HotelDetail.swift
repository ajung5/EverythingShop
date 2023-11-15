//
//  HotelDetail.swift
//  EverythingShop
//
//  Created by Agung Nawawi on 15/11/23.
//

import SwiftUI

struct HotelDetail: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .top) {
                    Image("hotel1")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 390, height: 320)
                        .clipped()
                    
                    HStack {
                        Image(systemName: "arrow.left")
                            .font(.title3)
                            .padding(11)
                            .background(
                                Circle()
                                    .fill(Color(.systemBackground))
                            )
                        Spacer()
                    }
                    .padding()
                    .padding(.top, 44)
                }
            }
            .frame(width: 390, height: 320)
            .clipped()
            
            // #MARK: Detail and description
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .firstTextBaseline) {
                    Text("Singapore Marina Bay")
                        .font(.system(size: 29, weight: .semibold, design: .default))
                    Spacer()
                    HStack(alignment: .firstTextBaseline, spacing: 3) {
                        Image(systemName: "star.fill")
                            .symbolRenderingMode(.multicolor)
                        Text("4.6")
                            .foregroundStyle(.secondary)
                    }
                    .font(.system(.subheadline, weight: .medium))
                }
                Text("Singapore, SG")
                    .font(.system(.callout, weight: .medium))
                Text("A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in")
                    .font(
                        .system(.callout)
                        .width(.condensed))
                    .padding(.vertical)
            }
            .padding(.horizontal, 24)
            .padding(.top, 12)
            
            // #MARK: Highlight
            VStack(alignment: .leading, spacing: 15) {
                Text("HIGHLIGHTS")
                    .kerning(2.0)
                    .font(.system(size: 24, weight: .medium, design: .default))
                    .foregroundStyle(.secondary)
                
                ForEach(0..<5) { _ in // Replace with your data model here
                        HStack(spacing: 9) {
                            Image(systemName: "leaf")
                                .foregroundColor(.green)
                                .frame(width: 20)
                                .clipped()
                            Text("Eco Certified")
                                .clipped()
                            Spacer()
                        }
                        .font(.subheadline)
                    }
            }
            .padding(.horizontal, 24)
            
            // MARK: Price
            VStack(spacing: 14) {
                HStack {
                    Text("$149")
                        .font(.headline)
                    Text("per night")
                }
                
                Text("RESERVE")
                    .font(.system(.title3, weight: .medium))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 24)
                    .background(.orange)
                    .foregroundStyle(.white)
                    .mask {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                    }
            }
            .padding(.vertical, 28)
        }
    }
}

#Preview {
    HotelDetail()
}
