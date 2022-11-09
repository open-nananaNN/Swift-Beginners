//
//  ContentView.swift
//  MyMusic
//
//  Created by naoka.nakagawa on 2022/11/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //背景画像を指定する
            Image("background")
            //リサイズする
                .resizable()
            //画面いっぱいになるようにセーフエリア外まで表示されるよう指定
                .ignoresSafeArea()
            //アス比を維持して短編基準に収まるようにする
                .scaledToFill()
            
            //水平にレイアウト
            HStack{
                //シンバルボタン
                Button {
                    //ボタンをタップした時に起きるアクション
                } label: {
                    //ラベル。今回は画像を表示
                    Image("cymbal")
                }//シンバルボタンここまで
                
                //ギターボタン
                Button {
                    //ボタンをタップした時に起きるアクション
                } label: {
                    //ラベル。今回は画像を表示
                    Image("guitar")
                }


            }//HStackここまで
            
        }//Zstackここまで
    }//some Viewここまで
}// struct contentciewここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
