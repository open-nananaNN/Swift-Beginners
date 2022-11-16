//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by naoka.nakagawa on 2022/11/09.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバル・ギターの音源データを読み込む
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    let guitarData = NSDataAsset(name: "guitarSound")!.data

    //シンバル・ギター用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    var guitarPlayer: AVAudioPlayer!
    
    //シンバルを鳴らす関数
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
    }//シンバルfunc 終了
    
    //ギターを鳴らす関数
    func guitarPlay(){
        //do-catch(tryを組み合わせてエラー処理)
        do{
            //メソッド呼び出し
            //ギター用のプレイヤーに、音源データを指定
            guitarPlayer = try AVAudioPlayer(data: guitarData) //tryでメソッド呼び出し
            
            //シンバルの音源再生
            guitarPlayer.play()
            
        } catch {
            print("ギターでエラーが発生しました！")
        } //do-catch終了
    }//ギターfunc 終了
    
}//NSObject終了
