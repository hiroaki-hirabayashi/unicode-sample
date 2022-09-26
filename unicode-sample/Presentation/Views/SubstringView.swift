//
//  SubstringView.swift
//  unicode-sample
//
//  Created by Hiroaki-Hirabayashi on 2022/09/25.
//

import SwiftUI

enum Substring: String {
    case prefix
    case suffix
}

struct SubstringView: View {
    @State private var text = "\u{1F34E}りんご\u{1F34F}"
    var body: some View {
        VStack {
            TextField("部分文字列", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            Text("prefix(2): \(subString(text, 2, .prefix))")
            Text("index: \(indexSubString(text))")
            Text("suffix(2): \(subString(text, 2, .suffix))")
        }
        Spacer()
    }
    
    func subString(_ text: String, _ index: Int, _ substring: Substring) -> String {
        switch substring {
        // 文字列の最初から指定した文字を取得する
        case .prefix:
            let prefixStr = text.prefix(index)
            return String(prefixStr)
        // 文字列の最後から指定した文字を取得する
        case .suffix:
            let suffixStr = text.suffix(index)
            return String(suffixStr)
        }
    }
    
    /// 文字位置指定で取得する
    func indexSubString(_ text: String) -> String {
        let startIndex = text.index(text.startIndex, offsetBy: 2)
        let endIndex = text.index(text.endIndex, offsetBy: -3)
        return String(text[startIndex...endIndex])
    }
}

struct SubStringView_Previews: PreviewProvider {
    static var previews: some View {
        SubstringView()
    }
}

