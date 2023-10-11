//
//  ContentView.swift
//  App
//
//  Created by Nunu Nugraha on 10/10/23.
//
import SwiftUI
import Common
import Product
import Cart

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("I love Quicksand")
                    .font(.custom("Quicksand-Regular", size: 20))
                Text("I love Quicksand")
                    .font(.custom("Quicksand-Bold", size: 20))
                Text("I love Quicksand")
                    .font(.custom("Quicksand-Light", size: 20))
                Text("Hi, i'm using Normal Text")
                Text("Hi, i'm using framework's Sunny Spells as Font")
                    .font(.custom("SunnySpells-Regular", size: 20))
                Image("banner-landscape", bundle: Bundle(identifier: "com.dicoding.acedemy.Common"))
                    .resizable()
                    .frame(width: 240, height: 100)
                Image("dicoding-logo-square") // logo aplikasi biasanya mengambil assets dari App utama
                    .resizable()
                    .frame(width: 240, height: 240)
                NavigationLink(destination: ProductView(
                    presenter: getProductPresenter,
                    action: {
                        CartView(action: { ProductDetailView() })
                    }
                )) {
                    Text("Open Product")
                }
            }
        }.navigationTitle("Modular")
    }
}

extension ContentView {
    var getProductPresenter: GetProductPresenter<String, String, GetProductUseCase> {
        GetProductPresenter(useCase: GetProductUseCase())
    }
    
    var getOtherProductPresenter: GetProductPresenter<String, String, GetOtherProductUseCase> {
        GetProductPresenter(useCase: GetOtherProductUseCase())
    }
    
    var getFullNameUsePresenter: GetProductPresenter<Array<String>, String, GetFullNameUseCase> {
        GetProductPresenter(useCase: GetFullNameUseCase())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
