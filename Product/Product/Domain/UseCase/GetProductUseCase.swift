//
//  GetProductUseCase.swift
//  Product
//
//  Created by Nunu Nugraha on 11/10/23.
//

import Core

public struct GetProductUseCase: UseCaseType {
    public typealias Request = String
    public typealias Response = String
    
    public init() {}
    
    public func execute(request: Request) -> Response {
        return String(request.reversed())
    }
    
    
}
