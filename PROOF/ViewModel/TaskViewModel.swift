//
//  TaskViewModel.swift
//  PROOF
//
//  Created by Adrian Mazek on 15/03/2026.
//

import SwiftUI
import Observation


@Observable
final class TaskViewModel {
    
    var taskList : [TaskData] = TaskData.sampleTaskData
    var selectedCategory: TaskCategory? = nil
    
    var progressTestCounter1: Double = 0.0
    var progressTestCounter2: Double = 0.0
    var progressTestCounter3: Double = 0.0
    var progressTestCounter4: Double = 0.0
    
    var choresStreak: Int = 0
    var uniStreak: Int = 0
    var otherStreak: Int = 0
    var pastimeStreak: Int = 0
    
    var previousCategory: TaskCategory? = nil
    var isMovingRight: Bool {
        guard let prev = previousCategory, let next = selectedCategory else { return false }
        let all = TaskCategory.allCases
        guard let iPrev = all.firstIndex(of: prev), let iNext = all.firstIndex(of: next) else { return false }
        return iNext > iPrev
    }

    var filteredTasks: [TaskData] {
        guard let selectedCategory else { return taskList }
        return taskList.filter { $0.category == selectedCategory }
    }
    
    func deleteTask(at offset : IndexSet) {
        taskList.remove(atOffsets: offset)
        print("delete")
    }
    
    func addProgress() {
        progressTestCounter1 += 0.1
        progressTestCounter2 += 0.2
        progressTestCounter3 += 0.3
        progressTestCounter4 += 0.1
    }
    
}


