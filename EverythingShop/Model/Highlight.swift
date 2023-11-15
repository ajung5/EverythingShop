//
//  Highlight.swift
//  EverythingShop
//
//  Created by Agung Nawawi on 15/11/23.
//

import Foundation


struct HighlightModel: Identifiable, Codable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var highlightList: [HighlightModel] = [
    HighlightModel(icon: "leaf.fill", title: "Eco Certified"),
    HighlightModel(icon: "train.side.front.car", title: "Close to Train"),
    HighlightModel(icon: "wifi", title: "Ultra-Fast Wi-Fi"),
    HighlightModel(icon: "apple.logo", title: "Apple Store Nearby"),
    HighlightModel(icon: "clock", title: "24/7 Room Service")
]
