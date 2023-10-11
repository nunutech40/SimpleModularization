//
//  GetFullNameUseCase.swift
//  Product
//
//  Created by Nunu Nugraha on 11/10/23.
//

import Core

public struct GetFullNameUseCase: UseCaseType {
    
    public typealias Request = Array<String>
    public typealias Response = String
    
    public init() {}
    
    public func execute(request: Request) -> Response {
        
        guard !request.isEmpty else {
            return "No Name"
        }
        
        return request.joined(separator: " ")
    }
}
