//
//  ContentView.swift
//  ResponsiveDesign
//
//  Created by  Denis on 12.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            Search()
            Progress()
            Tapbar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
