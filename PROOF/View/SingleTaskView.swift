//
//  SingleTaskView.swift
//  PROOF
//
//  Created by Adrian Mazek on 15/03/2026.
//

import SwiftUI

struct SingleTaskView: View {
    
    @State var task: TaskData
//    @State var category: String
    
    var body: some View {
       
            HStack() {
                Circle()
                    .stroke(task.category.accentColor, lineWidth: 4)
                    .frame(width: 15)
                    
                Text(task.title)
                    .font(.title2)
                    .lineLimit(1)
                    
                    Spacer()
                
                    Text(task.category.rawValue)
                        .padding(5)
                        .font(.subheadline)
                        .foregroundStyle(Color(task.category.textColor))
                        .background(task.category.backgroundColor)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .shadow(radius: 2)

                }

            .padding(.horizontal, 20)
        .frame(maxWidth: .infinity, alignment: .init(horizontal: .leading, vertical: .top))
        
    }
        
}

#Preview {
    SingleTaskView(task: TaskData.sampleTaskData[0])
}
