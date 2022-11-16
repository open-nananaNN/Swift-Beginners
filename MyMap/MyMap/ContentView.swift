//
//  ContentView.swift
//  MyMap
//
//  Created by naoka.nakagawa on 2022/11/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //垂直にレイアウト
        VStack {
            //マップ表示
            MapView(searchKey: "羽田空港")
        }//VStackここまで

    }//Viewここまで
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
