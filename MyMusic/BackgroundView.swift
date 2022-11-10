//
//  BackgroundView.swift
//  MyMusic
//
//  Created by naoka.nakagawa on 2022/11/10.
//

import SwiftUI

struct BackgroundView: View {
    
    //画像ファイル名
    let imageName: String
    
    var body: some View {
        //画像を表示
        Image("background")
        //サイズを画面に合うように表示
            .resizable()
        //セーフティエリアを無視
            .ignoresSafeArea()
        //アス比を無視して画面いっぱいに表示
            .scaledToFill()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "background")
    }
}
