//
//  Card.swift
//  ResponsiveDesign
//
//  Created by  Denis on 12.04.2021.
//

import SwiftUI

struct Card: View {
    var body: some View {
        GeometryReader { card in
            ZStack {
                Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                    .frame(width: card.size.width/1.1)
                    .frame(height: card.size.height/3)
                    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(20)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: 30, x: 0, y: 15)
                    .offset(y:130)
                VStack {
                    HStack(spacing: 50) {
                        VStack {
                            HStack {
                                Image(systemName: "arrow.left")
                                    .font(.system(size: card.size.width/20))
                                    .padding(.trailing, 20)
                                Image(systemName: "arrow.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: card.size.width/20))
                                    .padding(.leading, 20)
                            }
                            .padding(.top, 5)
                            VStack{
                                Text("Jeff.")
                                    .font(.system(size: card.size.width/10))
                                    .bold()
                                Text("Illustration")
                                    .font(.system(size: card.size.width/25))
                                    .padding(.top, 2)
                                    .foregroundColor(.gray)
                                Text("$19")
                                    .frame(width: card.size.width/8, height: card.size.height/25)
                                    .background(Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)).opacity(0.2))
                                    .foregroundColor(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                                    .cornerRadius(10)
                                    .padding(.top, 1)
                            }
                        }
                        Image("one_rec")
                            .resizable()
                            .frame(width: card.size.width/2, height: card.size.height/2)
                    }
                    Divider()
                        .padding(.horizontal, 60)
                    HStack{
                        Image("ash")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(30)
                        
                        VStack(alignment: .leading){
                            Text("Ashley")
                                .font(.system(size: card.size.width/15))
                                .bold()
                            Text("Hashley")
                                .font(.system(size: card.size.width/20))
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 20)
                        Spacer()
                        VStack {
                            Image(systemName: "chevron.right")
                            Spacer().frame(height: 20)
                        }
                    }
                    .frame(height: card.size.height/10)
                    .padding(.horizontal, 20)
                }
                .frame(width: card.size.width)
                .frame(height: card.size.height/1.4)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .cornerRadius(20)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: 30, x: 0, y: 15)
            }
            
        }
        .padding(.horizontal, 20)

    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
