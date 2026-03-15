//
//  SingleTaskView.swift
//  PROOF
//
//  Created by Adrian Mazek on 15/03/2026.
//

import SwiftUI

struct SingleTaskView: View {
    
    var task: TaskData
    var category: String?
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(task.title)
                    .font(.largeTitle)
                
                if let description = task.description {
                    Text(description)
                        .font(.body)
                        .lineLimit(nil)
                }
                
            }
        }
        
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .top))
        .background(task.category.color)
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding(.horizontal, 20)
        
    }
        
}

#Preview {
    SingleTaskView(task: TaskData.sampleTaskData[0])
}
