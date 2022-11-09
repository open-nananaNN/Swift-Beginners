//Jump bars 選択しているファイルの階層構造が表示
//  ContentView.swift
//  MyJanken
//
//  Created by naoka.nakagawa on 2022/11/08.
//

//SwiftUIというフレームワークを読み込み
import SwiftUI

//ContentVIew構造体を作る
//Viewプロトコル(Modifierを提供)でUIを構築
struct ContentView: View {
    
    //じゃんけんの結果を格納する変数(0初期1グー2チョキ3パー)
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            
            
            //じゃんけんの数字が0だったら
            if answerNumber == 0 {
               Text("これからじゃんけんをします！")
            } else if answerNumber == 1 {
                //じゃんけんの数字が1だったらグーを表示
                //グー画像を指定
                Image("gu")
                //Modifierでリサイズを指定
                    .resizable()
                //Modifierでアス比を維持する指定
                    .scaledToFit()
                
                //じゃんけんの種類を指定
                Text("グー")
                
            } else if answerNumber == 2 {
                //じゃんけんの数字が2だったらチョキ
                //チョキ画像を指定
                Image("choki")
                //Modifierでリサイズを指定
                    .resizable()
                //Modifierでアス比を維持する指定
                    .scaledToFit()
                
                //じゃんけんの種類を指定
                Text("チョキ")
                
            } else {
                //じゃんけんの数字が1、2以外だったらパー
                //パー画像を指定
                Image("pa")
                //Modifierでリサイズを指定
                    .resizable()
                //Modifierでアス比を維持する指定
                    .scaledToFit()
                
                //じゃんけんの種類を指定
                Text("パー")
            }//ifここまで
            
            
            
            
            //[じゃんけんをする！]ボタンを置く
            Button {
                //ボタンがタップされた時の動きを記述
                //print("タップされたよ！")
                //次のじゃんけんへ
                answerNumber = Int.random(in: 1...3)
            } label: {
                //ボタンの上に表示する言葉
                Text("じゃんけんをする！")
            }//じゃんけんボタンはここまで
            
        }//vstackここまで
        
    }//bodyここまで
}//ContentViewはここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
