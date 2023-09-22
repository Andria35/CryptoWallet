//
//  View.swift
//  CryptoWallet
//
//  Created by Andria Inasaridze on 31.08.23.
//

import Foundation

import Foundation
import SwiftUI


extension UIViewController {
  func screen() -> UIScreen? {
    var parent = self.parent
    var lastParent = parent
    
    while parent != nil {
      lastParent = parent
      parent = parent!.parent
    }
    
    return lastParent?.view.window?.windowScene?.screen
  }
}

extension View {
    
    // device screen height
    var screenHeight: CGFloat {
        return screen()?.bounds.height ?? 0
    }
    // device screen width
    var screenWidth: CGFloat {
        return screen()?.bounds.width ?? 0
    }
    
    func screen() -> UIScreen? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let mainWindow = windowScene.windows.first else {
            return nil
        }
        return mainWindow.screen
    }
}

