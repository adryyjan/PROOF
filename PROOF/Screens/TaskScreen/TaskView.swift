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
        ZStack(alignment: .bottomTrailing) {
            Color.dogBackground.ignoresSafeArea()
            VStack(alignment: .center){
                info
                
                Divider()
                
                HStack {
                    Text("To do")
                        .font(Font.largeTitle.bold())
                        .foregroundStyle(Color.dogTextSecondary)
                    Spacer()
                    Text("8 tasks")
                        .foregroundStyle(Color.dogTextSecondary)
                }
                .padding(.horizontal, 20)
                
                taskList
                
                Divider()
                
                doneList
                    
            }
            
            .overlay(alignment: .bottomTrailing) {
                FABView()
            }
           
        }

    }
    
        
    

}


extension TaskView {
    
    
    private var info: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Today")
                        .font(Font.largeTitle.bold())
                        .foregroundStyle(Color.dogTextPrimary)
                    
                    
                    Text("Pon, 30 maca")
                        .font(Font.title3)
                        .foregroundStyle(Color.dogTextSecondary)

                }
                
                Spacer()
                
                Circle()
                    .frame(width: 50, height: 50)
                
            }
            
            HStack {
                ProgressCirclesView(circleColor: .choreesAccent,contentColor: .choreesText, progress1: $vm.progressTestCounter4, streak: $vm.choresStreak)
                Spacer()
                ProgressCirclesView(circleColor: .uniAccent,contentColor: .uniText, progress1: $vm.progressTestCounter3, streak: $vm.uniStreak)
                Spacer()
                ProgressCirclesView(circleColor: .otherAccent,contentColor: .otherText, progress1: $vm.progressTestCounter2, streak: $vm.otherStreak)
                Spacer()
                ProgressCirclesView(circleColor: .pastimeAccent,contentColor: .pastimeText, progress1: $vm.progressTestCounter1, streak: $vm.pastimeStreak)
            }
            .padding(.vertical, 10)

        }
    
        .padding(.horizontal, 20)
    }
    

    private var taskList: some View {
        Group {
            List {
                ForEach(vm.filteredTasks) { task in
                    SingleTaskView(task: task)

                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
                .onDelete(perform: vm.deleteTask)
                .contextMenu {
                    Button("Edit", systemImage: "pencil") {
                        print("Edytuj")
                    }
                    .background(.ultraThinMaterial)

                    Button("Delete", systemImage: "trash", role: .destructive) {
                        print("Usuń")
                    }
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .background(Color.clear)
        }
    }
    
    private var doneList: some View {
        Group {
            List {
                ForEach(vm.filteredTasks) { task in
                    SingleTaskView(task: task)

                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
                .onDelete(perform: vm.deleteTask)
                .contextMenu {
                    Button("Edit", systemImage: "pencil") {
                        print("Edytuj")
                    }
                    .background(.ultraThinMaterial)

                    Button("Delete", systemImage: "trash", role: .destructive) {
                        print("Usuń")
                    }
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .background(Color.clear)

        }
        .foregroundStyle(Color.secondary)
        .strikethrough()
    }
    
}

#Preview {
    TaskView()
}

