//
//  UnicodeSampleView.swift
//  unicode-sample
//
//  Created by Hiroaki-Hirabayashi on 2022/09/25.
//

import SwiftUI

struct UnicodeSampleView: View {
    @ObservedObject var viewModel = UnicodeSampleViewModel()
    var body: some View {
        VStack {
            Picker("", selection: $viewModel.selectedTitle) {
                ForEach(viewModel.titles, id: \.self) { title in
                    Text(title.rawValue)
                        .tag(title)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 10)
        }
        switch viewModel.selectedTitle {
        case .ltU10000Pict:
            unicodeListView(list: viewModel.ltU10000PictArray)
        case .geU10000Pict:
            unicodeListView(list: viewModel.geU10000PictArray)
        case .geU10000Kanji:
            unicodeListView(list: viewModel.geU10000KanjiArray)
        case .substring:
            SubstringView()
        }
    }

    /// Unicode配列をリスト化する
    func unicodeListView(list: [String]) -> some View {
        List {
            ForEach(list, id: \.self) { text in
                HStack {
                    let data = text.data(using: .utf8)
                    Text("\(String(data: data!, encoding: .utf8) ?? "")")
                    Text("count: \(text.count)")
                    Text("utf8.count: \(text.utf8.count)")
                    Text("utf16.count: \(text.utf16.count)")
                    Text("UnicodeScalar.count: \(text.unicodeScalars.count)")
                }
            }
        }
        .listStyle(.plain)
    }
}

struct UnicodeSampleView_Previews: PreviewProvider {
    static var previews: some View {
        UnicodeSampleView()
    }
}
