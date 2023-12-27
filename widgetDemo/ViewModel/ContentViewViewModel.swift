//
//  ContentViewViewModel.swift
//  widgetDemo
//
//  Created by Felix Martinez Casadiego on 12/12/23.
//

import Foundation	
import WidgetKit

struct StreakCalculator {
    static func incrementStreak(streak: inout Int) {
        streak += 1
        WidgetCenter.shared.reloadTimelines(ofKind: "widgetExtension")
    }

    static func decrementStreak(streak: inout Int) {
        if streak > 0 {
            streak -= 1
            WidgetCenter.shared.reloadTimelines(ofKind: "widgetExtension")
        }
    }

    static func resetStreak(streak: inout Int) {
        streak = 0
        WidgetCenter.shared.reloadTimelines(ofKind: "widgetExtension")
    }
}


