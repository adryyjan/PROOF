//
//  CategoryView.swift
//  PROOF
//
//  Created by Adrian Mazek on 16/04/2026.
//

import SwiftUI

struct CategoryView: View {
    
    @State var task: TaskData
    var body: some View {
        Text(task.category.rawValue)
            .padding(5)
            .font(.subheadline)
            .foregroundStyle(Color(task.category.textColor))
            .background(task.category.backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(radius: 2)
    }
}

#Preview {
    CategoryView(task: TaskData.sampleTaskData[0])
}
