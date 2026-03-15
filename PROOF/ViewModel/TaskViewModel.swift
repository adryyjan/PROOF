//
//  TaskViewModel.swift
//  PROOF
//
//  Created by Adrian Mazek on 15/03/2026.
//

import Foundation
import Observation


@Observable
final class TaskViewModel {
    
    var taskList : [TaskData] = TaskData.sampleTaskData
    var selectedCategory: TaskCategory? = nil

    var filteredTasks: [TaskData] {
        guard let selectedCategory else { return taskList }
        return taskList.filter { $0.category == selectedCategory }
    }
    
}
