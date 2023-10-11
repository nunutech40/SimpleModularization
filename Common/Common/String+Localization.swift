//
//  String+Localization.swift
//  Common
//
//  Created by Nunu Nugraha on 10/10/23.
//

extension String {
  public func localized(identifier: String) -> String {
      print("cekkkkk")
    let bundle = Bundle(identifier: identifier) ?? .main
    return bundle.localizedString(forKey: self, value: nil, table: nil)
  }
}
