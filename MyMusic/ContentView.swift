//
//  ContentView.swift
//  MyMusic
//
//  Created by naoka.nakagawa on 2022/11/09.
//

import SwiftUI

struct ContentView: View {
    
    //音を鳴らすためのSoundPlayerクラスのインスタンスを生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack{
            //背景画像を表示する
            BackgroundView(imageName: "background")
            
            //垂直にレイアウト
            VStack{
                Text("楽器さわって？🥺")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 10.0)
                    .frame(height:100)
                    
                
                Spacer()
                    .frame(height:250)
            }
            
            //水平にレイアウト
            HStack{
                //シンバルボタン
                Button {
                    //ボタンをタップした時に起きるアクション
                    //シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                    
                } label: {
                    //ラベル。今回は画像を表示
                    Image("cymbal")
                }//シンバルボタンここまで
                
                //ギターボタン
                Button {
                    //ボタンをタップした時に起きるアクション
                    //ギターの音を鳴らす
                    soundPlayer.guitarPlay()
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
