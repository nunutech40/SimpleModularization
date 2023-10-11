//
//  CartView.swift
//  Product
//
//  Created by Nunu Nugraha on 10/10/23.
//


import SwiftUI
import Common
import Core


public struct ProductView<
  Destination: View,
  UseCase: UseCaseType
>: View where UseCase.Request == String, UseCase.Response == String {
    
    let action: (() -> Destination)
    let presenter: GetProductPresenter<String, String, UseCase>
    
    public init(
        presenter: GetProductPresenter<String, String, UseCase>,
        action: @escaping (() -> Destination)
        ) {
        self.presenter = presenter
        self.action = action
    }
    
    public var body: some View {
        VStack {
            Image("dicoding-logo-square")
                .resizable()
                .frame(width: 240, height: 240)
            Text("hi, im changing my name from Dicoding to \(presenter.execute(request: "Dicoding"))")
            
            
            Text("This Is Only Testing")
            Spacer()
            
            
            NavigationLink(destination: self.action()) {
                Text("Open Cart")
            }
        }.navigationTitle("product_title".localized(identifier: "com.dicoding.acedemy.Product"))
    }
}

