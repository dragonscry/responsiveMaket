//
//  Progress.swift
//  ResponsiveDesign
//
//  Created by  Denis on 12.04.2021.
//

import SwiftUI

struct Progress: View {
    var body: some View {
        GeometryReader { solved in
            HStack {
                Text("80% is solved")
                    .font(.system(size: 24))
                    .bold()
                Spacer()
                
                ZStack{
                    
                    ZStack{
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: 10, x: 0, y: 10)
                        Text("80%")
                            .font(.system(size: 14))
                            .bold()
                    }
                    
                    Circle()
                        .trim(from: 0.2, to: 1)
                        .stroke(
                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading),
                            style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0))
                        .rotationEffect(Angle(degrees: 180))
                        .frame(width: 56, height: 56)
                }
            }
            .frame(width: solved.size.width)
        }
        .frame(height: 60)
        .padding(.horizontal, 30)
    }
}

struct Progress_Previews: PreviewProvider {
    static var previews: some View {
        Progress()
    }
}
