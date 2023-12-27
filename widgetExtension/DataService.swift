//
//  DataService.swift
//  widgetDemo
//
//  Created by Felix Martinez Casadiego on 12/12/23.
//

import Foundation
import SwiftUI

struct DataService {
    
    @AppStorage("streak", store: UserDefaults(suiteName: "group.com.felix.widgetDemo"))
    private var streak = 0
    
    func log() {
        streak += 1
    }
    
    func progress() -> Int {
        return streak
    }
}
