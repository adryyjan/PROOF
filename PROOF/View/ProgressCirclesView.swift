//
//  ProgressCirclesView.swift
//  PROOF
//
//  Created by Adrian Mazek on 16/03/2026.
//

import SwiftUI

struct ProgressCirclesView: View {
    
    var circleColor: Color
    var contentColor: Color
    
    @Binding var progress1: Double
    @Binding var streak: Int
    
    var body: some View {
        ZStack {
            SingleProgressCirsle(radius: 80, circleColor: circleColor, contentColor: contentColor, progress: $progress1, streak: $streak)
        }
    }
}


struct SingleProgressCirsle: View {
    
    var radius: CGFloat
    var circleColor: Color
    var contentColor: Color
    
    @Binding var progress: Double
    @Binding var streak: Int
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(circleColor.opacity(0.5), style: StrokeStyle(lineWidth: 10))
                .frame(width: radius, height: radius)
            
            Circle()
                .trim(from: 0, to: max(0, min(1, progress)))
                .stroke(
                    circleColor,
                    style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round)
                )
                .rotationEffect(.degrees(-90)) // start na górze
                .frame(width: radius, height: radius)
                .animation(.easeInOut(duration: 0.6), value: progress)
        }
        
        HStack{
            Text("\(streak)🔥")
                .foregroundStyle(circleColor)

        }
        
        
    }
        

    
   
}
//#Preview {
//    ProgressCirclesView()
//}

