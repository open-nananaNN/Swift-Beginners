//
//  MapView.swift
//  MyMap
//
//  Created by naoka.nakagawa on 2022/11/11.
//

import SwiftUI
import MapKit

//マップの種類を示す列挙型
enum MapType {
    case standard //標準
    case satelite //衛星写真
    case hybrid //衛星写真＋交通期間ラベル
}

struct MapView: UIViewRepresentable {
    //検索キーワード
    let searchKey: String
    //マップ種類
    let mapType: MapType
    
    //表示するViewを作成する時に実行
    func makeUIView(context: Context) -> MKMapView{
        //MAMapViewのインスタンス作成
        MKMapView()
    }//makeUIViewここまで
    
    //表示したViewが更新されるたびに実行
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        //入力された文字をデバッグエリアに表示
        print("検索キーワード:\(searchKey)")
        
        //マップの種類の設定
        switch mapType {
        case .standard:
            //標準
            uiView.preferredConfiguration = MKStandardMapConfiguration(elevationStyle: .flat)
        case .satelite:
            //衛星
            uiView.preferredConfiguration = MKImageryMapConfiguration()
        case .hybrid:
            //衛星＋交通機関ラベル
            uiView.preferredConfiguration = MKHybridMapConfiguration()
        }
        
        //CLGeocoderインスタンス生成
        let grecoder = CLGeocoder()
        
        //入力された文字から位置情報を取得
        grecoder.geocodeAddressString(
            searchKey,
            completionHandler:{ (placemarks, error) in
                //リクエストの結果が存在し1件目の情報から位置情報を取り出す
                if let placemarks,
                   let firstPlacemark = placemarks.first,
                   let location = firstPlacemark.location{
                    
                    //位置情報から緯度経度をtargetCoodinateに取り出す
                    let targetCoordinate = location.coordinate
                    
                    //経度緯度をでバックエリアに表示
                    print("緯度経度：\(targetCoordinate)")
                    
                    //MKPointAnnotationインスタンスを作成しピンを作る
                    let pin = MKPointAnnotation()
                    
                    //ピンを置く場所に緯度経度を設定
                    pin.coordinate = targetCoordinate
                    
                    //ピンのタイトルを設定
                    pin.title = searchKey
                    
                    //ピンを地図上に置く
                    uiView.addAnnotation(pin)
                    
                    //緯度経度を中心に半径500mの範囲を表示
                    uiView.region = MKCoordinateRegion(
                        center: targetCoordinate,
                    latitudinalMeters: 500.0,
                    longitudinalMeters: 500.0)
                    
                }//ifここまで
            } )//geocoderここまで
        
    }//updateUIViewここまで
    
}//MapView構造体の終了

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(searchKey: "羽田空港", mapType: .standard)
    }
}//PreViewここまで
