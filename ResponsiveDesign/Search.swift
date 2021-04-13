//
//  Search.swift
//  ResponsiveDesign
//
//  Created by  Denis on 12.04.2021.
//

import SwiftUI

struct Search: View {
    @State var search = ""
    var body: some View {
        GeometryReader { search in
            HStack {
                Spacer()
                HStack {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 25))
                        .padding(.leading, 15)
                    TextField("Search", text: $search)
                        .frame(height: search.size.height/15)
                        .padding(.leading, 5)
                }
                .frame(width: search.size.width/1.1)
                .frame(height: search.size.height)
                .background(Color(#colorLiteral(red: 0.8692553639, green: 0.8640885949, blue: 0.8732272983, alpha: 1)))
                .cornerRadius(20)
                
                Spacer()
            }
            
        }
        .frame(height: 60)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
