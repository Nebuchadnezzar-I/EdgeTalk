//
//  GlobalState.swift
//  EdgeTalk
//
//  Created by Michal Ukropec on 11/03/2025.
//

import Foundation

class AppState {
    static let shared = AppState()
    
    private init() {}
    
    private var activeBubbleListeners: [(UInt8) -> Void] = []
    
    var activeBubbleIndex: UInt8 = 0 {
        didSet {
            activeBubbleListeners.forEach { $0(activeBubbleIndex) }
        }
    }
    
    func subscribeToActiveBubble(listener: @escaping (UInt8) -> Void) {
        activeBubbleListeners.append(listener)
        listener(activeBubbleIndex)
    }
}
