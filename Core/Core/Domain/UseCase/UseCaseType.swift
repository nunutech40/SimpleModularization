//
//  UseCaseType.swift
//  Core
//
//  Created by Nunu Nugraha on 10/10/23.
//

import Foundation

public protocol UseCaseType {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request) -> Response
}
