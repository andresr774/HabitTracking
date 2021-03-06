//
//  PreviewProvider.swift
//  HabitTracking
//
//  Created by Andres camilo Raigoza misas on 9/03/22.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        DeveloperPreview.instance
    }
}

struct DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() { }
    
    let activity = Activity(
        title: "Learn Piano",
        description: "Study piano for 1 hour daily",
        iconName: ActivityIcon.piano.rawValue,
        iconColor: [0.0, 0.0, 1.0, 1.0],
        goal: 60,
        data: [
            Date().addingTimeInterval(-6*24*60*60): 50,
            Date().addingTimeInterval(-5*24*60*60): 45,
            Date().addingTimeInterval(-4*24*60*60): 60,
            Date().addingTimeInterval(-3*24*60*60): 70,
            Date().addingTimeInterval(-2*24*60*60): 90,
            Date().addingTimeInterval(-1*24*60*60): 40,
            Date(): 65
        ]
    )
    let activities = [
        Activity(
            title: "Walk",
            description: "Walk every day for 1 hour",
            iconName: ActivityIcon.walk.rawValue,
            iconColor: [0.0, 0.0, 1.0, 1.0],
            goal: 120,
            data: [
                Date.now:45,
                Date().addingTimeInterval(-6*24*60*60): 80
            ]
        ),
        Activity(
            title: "Learn Piano",
            description: "Study piano for 1 hour daily",
            iconName: ActivityIcon.piano.rawValue,
            iconColor: [0.0, 0.0, 1.0, 1.0],
            goal: 70,
            data: [
                Date(): 60,
                Date().addingTimeInterval(-24*60*60): 90,
                Date().addingTimeInterval(-2*24*60*60): 70,
                Date().addingTimeInterval(-3*24*60*60): 60,
                Date().addingTimeInterval(-4*24*60*60): 50,
                Date().addingTimeInterval(-5*24*60*60): 120,
                Date().addingTimeInterval(-6*24*60*60): 80
            ]
        ),
        Activity(
            title: "Learn Programing",
            description: "Study programing for 3 hours daily",
            iconName: ActivityIcon.brain.rawValue,
            iconColor: [0.0, 0.0, 0.0, 1.0],
            goal: 60,
            data: [
                Date().addingTimeInterval(-4*24*60*60): 60,
                Date().addingTimeInterval(-3*24*60*60): 95,
                Date().addingTimeInterval(-2*24*60*60): 70
            ]
        )
    ]
}
