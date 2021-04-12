//
//  Header.swift
//  ResponsiveDesign
//
//  Created by  Denis on 12.04.2021.
//

import SwiftUI

struct Header: View {
    var body: some View {
        GeometryReader { header in
            
            HStack {
                GeometryReader { textHeader in
                    VStack(alignment: .leading) {
                        Text("Refund Request")
                            .font(.system(size: textHeader.size.width/10))
                            .bold()
                        Text("26 refund requests")
                            .foregroundColor(.gray)
                    }
                }
                
                Spacer()
                
                ZStack{
                    
                    Circle()
                        .frame(width: 10, height: 10)
                    
                    VStack {
                        Image("1")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(14)
                    
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.red)
                        .offset(x: -17, y: -16)
                }
            }
            .frame(width: header.size.width)
        }
        .frame(height: 60)
        .padding(.horizontal, 30)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
