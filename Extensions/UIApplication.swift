//
//  UIApplication.swift
//  CryptoWallet
//
//  Created by Andria Inasaridze on 11.09.23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
