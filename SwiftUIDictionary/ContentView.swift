//
//  ContentView.swift
//  SwiftUIDictionary
//
//  Created by 高良昌辰 on 2020/01/24.
//  Copyright © 2020 高良昌辰. All rights reserved.
//

import SwiftUI


    /// 起動時に呼び出される画面です。
struct ContentView: View {

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                TitleView()
                Spacer()
                Spacer()
            }
        }
    }
}

    /// タイトル画面を表示するStructです。今までは ContentViewに直接書いていましたが、今回より別画面へ変更しました。
struct TitleView: View {
    var body: some View {
        VStack {
            Text("SwiftUIへ、ようこそ。")
                .font(.title)
            NavigationLink(destination: ModuleView()) {
                Text("Moduleを表示する")
            }
        }
    }
}

    /// Module ViewはModuleを一覧表示するためのViewです。ここでようやくlistが入ってきます。
    /// ここでもvar定義をすると引数がContent Viewに必要になってしまうので、定義はしません。
struct ModuleView: View {
    //var dictionary: Dictionary
    var body: some View {
        VStack {
            List(list) { (row:Dictionary) in
                NavigationLink(destination: DetailView(row: row)) {
                    ModuleView_Detail(list: list , row: row)
                }
            }
        }.navigationBarTitle("Module")
    }
}

struct ModuleView_Detail: View {
    var list: [Dictionary]
    var row: Dictionary
    var body: some View {
        HStack {
            Text(row.Module_Name)
                .font(.title)
                .frame(width: 100,height: 50)
            Spacer()
            Text(row.Module_Description)
                .font(.caption)
        }
    }
}

struct DetailView: View {
    var row: Dictionary
    var body: some View {
        Form {
            Text(row.Module_Description)
            Text(row.Module_Video_Effect)
                .frame(height: 200)
            Spacer()
            Text(row.Module_Picture)
            Spacer()
        }.navigationBarTitle(row.Module_Name)
    }
}


//
//struct ContentView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        ContentView()
//    }
//}


/// デモスクリーンショット撮影用View
struct SampleView: View {
    var body: some View {
        VStack{
            Image("画像の名前（拡張子なし）")
        }
    }
}





