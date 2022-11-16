//
//  MapView.swift
//  MyMap
//
//  Created by naoka.nakagawa on 2022/11/11.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    //検索キーワード
    let searchKey: String
    
    //表示するViewを作成する時に実行
    func makeUIView(context: Context) -> MKMapView{
        //MAMapViewのインスタンス作成
        MKMapView()
    }//makeUIViewここまで
    
    //表示したViewが更新されるたびに実行
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        //入力された文字をデバッグエリアに表示
        print("検索キーワード:\(searchKey)")
    }//updateUIViewここまで
    
}//MapView構造体の終了

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "羽田空港")
    }
}//PreViewここまで
