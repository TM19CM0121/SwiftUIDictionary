//
//  Dictionary.swift
//  SwiftUIDictionary
//
//  Created by 高良昌辰 on 2020/01/24.
//  Copyright © 2020 高良昌辰. All rights reserved.
//

import Foundation

struct Dictionary: Codable,Identifiable {
    var id: Int
    var Module_Name: String
    var Module_Description: String
    var Module_Picture: String
    var Module_Video_Effect: String
}

var list: [Dictionary] = [
    Dictionary(id: 0, Module_Name: "Text", Module_Description: "実装することによって文字を設置します。\nこれは表示するだけであって特に効果はありません。", Module_Picture: "Textの写真のURLが入ります。それか名前", Module_Video_Effect: "Text_movie"),
    Dictionary(id: 1, Module_Name: "Image", Module_Description: "実装することによって画像を表示します。\n()の中にassetsに入れた画像の名前をString型で入れると表示されます。", Module_Picture: "Imageの写真のURLが入ります。それか名前", Module_Video_Effect: "Image_movie"),
    Dictionary(id: 2, Module_Name: "Button", Module_Description: "実装することによってボタンを設置します。\nこれは押すことによって何かを実行することができます。", Module_Picture: "Buttonの動画のURLが入ります。それか名前", Module_Video_Effect: "Button_movie"),
    Dictionary(id: 4, Module_Name: "NavigationLink", Module_Description: "基本的にはボタンの中に実装します。\nDestinationに推移先を書き、メソッド内にボタン内部のデザイン（View）を書きます。", Module_Picture: "NavigationViewの動画のURLが入ります。それか名前", Module_Video_Effect: "どのような効果があるかがわかる動画の名前")
]
