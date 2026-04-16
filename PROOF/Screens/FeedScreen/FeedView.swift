//
//  FeedView.swift
//  PROOF
//
//  Created by Adrian Mazek on 16/04/2026.
//

import SwiftUI

struct FeedView: View {
    
    let columns = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]
    var body: some View {
        ZStack {
            Color.dogBackground.ignoresSafeArea()
            
            VStack(alignment: .center){
                
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Feed")
                                .font(Font.largeTitle.bold())
                                .foregroundStyle(Color.dogTextPrimary)
                            
                            
                            Text("Znajomi - dziś")
                                .font(Font.title3)
                                .foregroundStyle(Color.dogTextSecondary)

                        }
                        
                        Spacer()
                        
                        Circle()
                            .frame(width: 50, height: 50)
                        
                    }
                }
                .padding(.horizontal, 20)
                
                HStack {
                    Spacer()
                    Button {
                        print("aaaaa")
                    } label: {
                        Text("Done")
                            .padding(20)
                            .padding(.horizontal, 30)
                            .background(Color.dogSurface)
                            .foregroundStyle(Color.dogPrimary)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .shadow(radius: 2)
                    }
                    Spacer()
                    Button {
                        print("nnnnn")
                    } label: {
                        Text("To do")
                            .padding(20)
                            .padding(.horizontal, 30)
                            .background(Color.dogSurface)
                            .foregroundStyle(Color.dogPrimary)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .shadow(radius: 2)
                    }
                    Spacer()
                }
                .padding(16)
                

                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(TaskData.sampleTaskData){task in
                            PostView(task: task)
                        }
                    }
                }
                .padding(.horizontal, 8)
            }
            
        }
        .overlay(alignment: .bottomTrailing) {
            FABView()
        }
    }
    
}

#Preview {
    FeedView()
}
