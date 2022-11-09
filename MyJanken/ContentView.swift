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
            //スペースを追加
            Spacer()
            
            //じゃんけんの数字が0だったら
            if answerNumber == 0 {
               Text("これからじゃんけんをします！")
                //下辺に余白を追加
                    .padding(.bottom)
            } else if answerNumber == 1 {
                //じゃんけんの数字が1だったらグーを表示
                //グー画像を指定
                Image("gu")
                //Modifierでリサイズを指定
                    .resizable()
                //Modifierでアス比を維持する指定
                    .scaledToFit()
                //スペースを追加
                Spacer()
                
                //じゃんけんの種類を指定
                Text("グー")
                //下辺に余白を追加
                    .padding(.bottom)
                
            } else if answerNumber == 2 {
                //じゃんけんの数字が2だったらチョキ
                //チョキ画像を指定
                Image("choki")
                //Modifierでリサイズを指定
                    .resizable()
                //Modifierでアス比を維持する指定
                    .scaledToFit()
                //スペースを追加
                Spacer()
                
                //じゃんけんの種類を指定
                Text("チョキ")
                //下辺に余白を追加
                    .padding(.bottom)
                
            } else {
                //じゃんけんの数字が1、2以外だったらパー
                //パー画像を指定
                Image("pa")
                //Modifierでリサイズを指定
                    .resizable()
                //Modifierでアス比を維持する指定
                    .scaledToFit()
                //スペースを追加
                Spacer()
                
                //じゃんけんの種類を指定
                Text("パー")
                //下辺に余白を追加
                    .padding(.bottom)
            }//ifここまで
            
            
            //[じゃんけんをする！]ボタンを置く
            Button {
                //新しいじゃんけんの結果を一時的に格納する変数を設置
                var newAnswerNumber = 0
                
                //ランダムに結果を出すが前回の結果とは異なる場合のみ採用
                //repeatは繰り返しを意味する
                repeat {
                    //123の数値をランダムに算出（乱数）
                    newAnswerNumber = Int.random(in: 1...3)
                    
                    //前回と同じ結果　の時は再度ランダムに数値を出す
                    //異なる結果の時はrepeatを抜ける
                }while answerNumber == newAnswerNumber
                
                //新しいじゃんけんの結果を格納
                answerNumber = newAnswerNumber
                
                
                
            } label: {
                //ボタンの上に表示する言葉
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
                    
                
            }//ボタンはここまで
            
        }//vstackここまで
        
    }//bodyここまで
}//ContentViewはここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
