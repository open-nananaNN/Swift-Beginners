//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by naoka.nakagawa on 2022/11/09.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルの音源データを読み込む
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data

    //シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    
    func cymbalPlay(){
        //do-catch(tryを組み合わせてエラー処理)
        do{
            //メソッド呼び出し
            //シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData) //tryでメソッド呼び出し
            
            //シンバルの音源再生
            cymbalPlayer.play()
            
        } catch {
            print("シンバルでエラーが発生しました！")
        } //do-catch終了
        
    }//func 終了
}//NSObject終了
