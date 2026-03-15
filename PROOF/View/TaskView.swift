//
//  TaskView.swift
//  PROOF
//
//  Created by Adrian Mazek on 15/03/2026.
//

import SwiftUI

struct TaskView: View {
    
    @State private var vm = TaskViewModel()
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
               HStack {
                    Circle()
                       .frame(width: 100)
                   
                   Spacer()
                   
                   Text("7/10")
                       .font(.title)
                   
                   Image(systemName: "checkmark")
                }
            }
            .padding(.horizontal, 20)
                
            
            HStack {
                Button(action: { vm.selectedCategory = nil }) {
                    Text("All")
                        .font(.subheadline)
                        .padding(6)
                        .background((vm.selectedCategory == nil) ? Color.blue.opacity(0.2) : Color.gray.opacity(0.2))
                        .foregroundStyle((vm.selectedCategory == nil) ? .blue : .primary)
                        .cornerRadius(6)
                }
                ForEach(TaskCategory.allCases, id: \.self) { category in
                    Button(action: { vm.selectedCategory = category }) {
                        Text(String(describing: category.rawValue))
                            .font(.subheadline)
                            .padding(6)
                            .background((vm.selectedCategory == category) ? Color.blue.opacity(0.2) : Color.gray.opacity(0.2))
                            .foregroundStyle((vm.selectedCategory == category) ? .blue : .primary)
                            .cornerRadius(6)
                    }
                }
            }
            ScrollView{
                LazyVStack {
                    ForEach(vm.filteredTasks) { task in
                        SingleTaskView(task: task)
                    }
                }
            }
        }
        
    }
}

#Preview {
    TaskView()
}

