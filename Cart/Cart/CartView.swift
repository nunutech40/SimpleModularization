//
//  CartView.swift
//  Product
//
//  Created by Nunu Nugraha on 10/10/23.
//

import SwiftUI

public struct CartView<Destination: View> : View {
    let action: (() -> Destination)
    
    public init(action: @escaping (() -> Destination)) {
        self.action = action
    }
    
    public var body: some View {
        VStack {
            NavigationLink(destination: self.action()) {
                Text("Open Product Detail")
            }
        }.navigationTitle("Cart")
    }
}
