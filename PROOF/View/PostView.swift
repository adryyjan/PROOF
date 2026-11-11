//
//  PostView.swift
//  PROOF
//
//  Created by Adrian Mazek on 16/04/2026.
//

import SwiftUI

struct PostView: View {
    
    @State var task: TaskData
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(task.category.accentColor.opacity(0.7))
                .frame(height: 250)
            
            
            
            HStack{
                VStack(alignment: .leading){
                    Spacer()
                    Text(task.title)
                    CategoryView(task: task)
                }
                .padding(16)
                
                Spacer()
            }
            
        }
            
    }
}

#Preview {
    PostView(task: TaskData.sampleTaskData[0])
}
