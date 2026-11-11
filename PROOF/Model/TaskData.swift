//
//  TaskData.swift
//  PROOF
//
//  Created by Adrian Mazek on 15/03/2026.
//

import Foundation
import SwiftUI

struct TaskData: Codable, Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var description: String?
    var isCompleted: Bool = false
    var startTime: Date = Date()
    var endTime: Date = Date().addingTimeInterval(2 * 60 * 60)
    let category: TaskCategory
    var isPublic: Bool = true
    
    static let sampleTaskData : [TaskData] = [
        TaskData(title: "Mockup Task 1", description: "Go for a run", category: .pasTime),
        TaskData(title: "Mockup Task 2", description: "Go for a walk", category: .chores),
        TaskData(title: "Mockup Task 3", description: "Go swimmming", category: .other),
        TaskData(title: "Mockup Task 4", description: "Go for a hike", category: .university),
        TaskData(title: "Mockup Task 5", description: "Go for a run", category: .pasTime),
        TaskData(title: "Mockup Task 6", description: "Go for a walk", category: .chores),
        TaskData(title: "Mockup Task 7", description: "Go swimmming", category: .other),
        TaskData(title: "Mockup Task 8", description: "Go for a hike", category: .university),
        TaskData(title: "Mockup Task 1", description: "Go for a run", category: .pasTime),
        TaskData(title: "Mockup Task 2", description: "Go for a walk", category: .chores),
        TaskData(title: "Mockup Task 3", description: "Go swimmming", category: .other),
        TaskData(title: "Mockup Task 4", description: "Go for a hike", category: .university),
        TaskData(title: "Mockup Task 5", description: "Go for a run", category: .pasTime),
        TaskData(title: "Mockup Task 6", description: "Go for a walk", category: .chores),
        TaskData(title: "Mockup Task 7", description: "Go swimmming", category: .other),
        TaskData(title: "Mockup Task 8", description: "Go for a hike", category: .university)
        ]
    }

enum TaskCategory: String, Codable, CaseIterable, Identifiable {
    case pasTime = "Pastime"
    case university = "University"
    case chores = "Chores"
    case other = "Other"
    
    var id: String { self.rawValue }
    
    var backgroundColor: Color {
        switch self {
        case .pasTime: return .pastimeBackground
        case .university: return .uniBackground
        case .chores: return .choreesBackground
        case .other: return .otherBackground
        }
    }
    
    var accentColor: Color {
        switch self {
        case .pasTime: return .pastimeAccent
        case .university: return .uniAccent
        case .chores: return .choreesAccent
        case .other: return .otherAccent
        }
    }
    
    var textColor: Color {
        switch self {
        case .pasTime: return .pastimeText
        case .university: return .uniText
        case .chores: return .choreesText
        case .other: return .otherText
        }
    }
}


