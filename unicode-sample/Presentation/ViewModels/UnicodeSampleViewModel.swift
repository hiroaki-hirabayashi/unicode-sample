//
//  UnicodeSampleViewModel.swift
//  unicode-sample
//
//  Created by Hiroaki-Hirabayashi on 2022/09/25.
//

import SwiftUI

/// TODO: Textfieldに入力されたもの、サーバーからUTF8でもらって表示できるか
enum UnicodeTitle: String, CaseIterable {
    case ltU10000Pict = "ltU10000絵文字"
    case geU10000Pict = "geU10000絵文字"
    case geU10000Kanji = "geU10000漢字"
    case substring = "部分文字列"
}

final class UnicodeSampleViewModel: ObservableObject {
    init() {}
    @Published var selectedText: String? = ""
    @Published var selectedTitle = UnicodeTitle.ltU10000Pict
    let titles = UnicodeTitle.allCases
    /// U10000未満絵文字
    let ltU10000PictArray = [
        "\u{0023}",
        "\u{002A}",
        "\u{0030}",
        "\u{0031}",
        "\u{0032}",
        "\u{0033}",
        "\u{0034}",
        "\u{0035}",
        "\u{0036}",
        "\u{0037}",
        "\u{0038}",
        "\u{0039}",
        "\u{00A9}",
        "\u{00AE}",
        "\u{203C}",
        "\u{2049}",
        "\u{2122}",
        "\u{2139}",
        "\u{2194}",
        "\u{2195}",
        "\u{2196}",
        "\u{2197}",
        "\u{2198}",
        "\u{2199}",
        "\u{21A9}",
        "\u{21AA}",
        "\u{231A}",
        "\u{231B}",
        "\u{2328}",
        "\u{23CF}",
        "\u{23E9}",
        "\u{23EA}",
        "\u{23EB}",
        "\u{23EC}",
        "\u{23ED}",
        "\u{23EE}",
        "\u{23EF}",
        "\u{23F0}",
        "\u{23F1}",
        "\u{23F2}",
        "\u{23F3}",
        "\u{23F8}",
        "\u{23F9}",
        "\u{23FA}",
        "\u{24C2}",
        "\u{25AA}",
        "\u{25AB}",
        "\u{25B6}",
        "\u{25C0}",
        "\u{25FB}",
        "\u{25FC}",
        "\u{25FD}",
        "\u{25FE}",
        "\u{2600}",
        "\u{2601}",
        "\u{2602}",
        "\u{2603}",
        "\u{2604}",
        "\u{260E}",
        "\u{2611}",
        "\u{2614}",
        "\u{2615}",
        "\u{2618}",
        "\u{261D}",
        "\u{2620}",
        "\u{2622}",
        "\u{2623}",
        "\u{2626}",
        "\u{262A}",
        "\u{262E}",
        "\u{262F}",
        "\u{2638}",
        "\u{2639}",
        "\u{263A}",
        "\u{2640}",
        "\u{2642}",
        "\u{2648}",
        "\u{2649}",
        "\u{264A}",
        "\u{264B}",
        "\u{264C}",
        "\u{264D}",
        "\u{264E}",
        "\u{264F}",
        "\u{2650}",
        "\u{2651}",
        "\u{2652}",
        "\u{2653}",
        "\u{265F}",
        "\u{2660}",
        "\u{2663}",
        "\u{2665}",
        "\u{2666}",
        "\u{2668}",
        "\u{267B}",
        "\u{267E}",
        "\u{267F}",
        "\u{2692}",
        "\u{2693}",
        "\u{2694}",
        "\u{2695}",
        "\u{2696}",
        "\u{2697}",
        "\u{2699}",
        "\u{269B}",
        "\u{269C}",
        "\u{26A0}",
        "\u{26A1}",
        "\u{26AA}",
        "\u{26AB}",
        "\u{26B0}",
        "\u{26B1}",
        "\u{26BD}",
        "\u{26BE}",
        "\u{26C4}",
        "\u{26C5}",
        "\u{26C8}",
        "\u{26CE}",
        "\u{26CF}",
        "\u{26D1}",
        "\u{26D3}",
        "\u{26D4}",
        "\u{26E9}",
        "\u{26EA}",
        "\u{26F0}",
        "\u{26F1}",
        "\u{26F2}",
        "\u{26F3}",
        "\u{26F4}",
        "\u{26F5}",
        "\u{26F7}",
        "\u{26F8}",
        "\u{26F9}",
        "\u{26FA}",
        "\u{26FD}",
        "\u{2702}",
        "\u{2705}",
        "\u{2708}",
        "\u{2709}",
        "\u{270A}",
        "\u{270B}",
        "\u{270C}",
        "\u{270D}",
        "\u{270F}",
        "\u{2712}",
        "\u{2714}",
        "\u{2716}",
        "\u{271D}",
        "\u{2721}",
        "\u{2728}",
        "\u{2733}",
        "\u{2734}",
        "\u{2744}",
        "\u{2747}",
        "\u{274C}",
        "\u{274E}",
        "\u{2753}",
        "\u{2754}",
        "\u{2755}",
        "\u{2757}",
        "\u{2763}",
        "\u{2764}",
        "\u{2795}",
        "\u{2796}",
        "\u{2797}",
        "\u{27A1}",
        "\u{27B0}",
        "\u{27BF}",
        "\u{2934}",
        "\u{2935}",
        "\u{2B05}",
        "\u{2B06}",
        "\u{2B07}",
        "\u{2B1B}",
        "\u{2B1C}",
        "\u{2B50}",
        "\u{2B55}",
        "\u{3030}",
        "\u{303D}",
        "\u{3297}",
        "\u{3299}",
        "\u{1F004}",
        "\u{1F0CF}",
        "\u{1F170}",
        "\u{1F171}",
        "\u{1F17E}",
        "\u{1F17F}",
        "\u{1F18E}",
        "\u{1F191}",
        "\u{1F192}",
        "\u{1F193}",
        "\u{1F194}",
        "\u{1F195}",
        "\u{1F196}",
        "\u{1F197}",
        "\u{1F198}",
        "\u{1F199}",
        "\u{1F19A}",
        "\u{1F1E6}",
        "\u{1F1E7}",
        "\u{1F1E8}",
        "\u{1F1E9}",
        "\u{1F1EA}",
        "\u{1F1EB}",
        "\u{1F1EC}",
        "\u{1F1ED}",
        "\u{1F1EE}",
        "\u{1F1EF}",
        "\u{1F1F0}",
        "\u{1F1F1}",
        "\u{1F1F2}",
        "\u{1F1F3}",
        "\u{1F1F4}",
        "\u{1F1F5}",
        "\u{1F1F6}",
        "\u{1F1F7}",
        "\u{1F1F8}",
        "\u{1F1F9}",
        "\u{1F1FA}",
        "\u{1F1FB}",
        "\u{1F1FC}",
        "\u{1F1FD}",
        "\u{1F1FE}",
        "\u{1F1FF}",
        "\u{1F201}",
        "\u{1F202}",
        "\u{1F21A}",
        "\u{1F22F}",
        "\u{1F232}",
        "\u{1F233}",
        "\u{1F234}",
        "\u{1F235}",
        "\u{1F236}",
        "\u{1F237}",
        "\u{1F238}",
        "\u{1F239}",
        "\u{1F23A}",
        "\u{1F250}",
        "\u{1F251}",
        "\u{1F300}",
        "\u{1F301}",
        "\u{1F302}",
        "\u{1F303}",
        "\u{1F304}",
        "\u{1F305}",
        "\u{1F306}",
        "\u{1F307}",
        "\u{1F308}",
        "\u{1F309}",
        "\u{1F30A}",
        "\u{1F30B}",
        "\u{1F30C}",
        "\u{1F30D}",
        "\u{1F30E}",
        "\u{1F30F}",
        "\u{1F310}",
        "\u{1F311}",
        "\u{1F312}",
        "\u{1F313}",
        "\u{1F314}",
        "\u{1F315}",
        "\u{1F316}",
        "\u{1F317}",
        "\u{1F318}",
        "\u{1F319}",
        "\u{1F31A}",
        "\u{1F31B}",
        "\u{1F31C}",
        "\u{1F31D}",
        "\u{1F31E}",
        "\u{1F31F}",
        "\u{1F320}",
        "\u{1F321}",
        "\u{1F324}",
        "\u{1F325}",
        "\u{1F326}",
        "\u{1F327}",
        "\u{1F328}",
        "\u{1F329}",
        "\u{1F32A}",
        "\u{1F32B}",
        "\u{1F32C}",
        "\u{1F32D}",
        "\u{1F32E}",
        "\u{1F32F}",
        "\u{1F330}",
        "\u{1F331}",
        "\u{1F332}",
        "\u{1F333}",
        "\u{1F334}",
        "\u{1F335}",
        "\u{1F336}",
        "\u{1F337}",
        "\u{1F338}",
        "\u{1F339}",
        "\u{1F33A}",
        "\u{1F33B}",
        "\u{1F33C}",
        "\u{1F33D}",
        "\u{1F33E}",
        "\u{1F33F}",
        "\u{1F340}",
        "\u{1F341}",
        "\u{1F342}",
        "\u{1F343}",
        "\u{1F344}",
        "\u{1F345}",
        "\u{1F346}",
        "\u{1F347}",
        "\u{1F348}",
        "\u{1F349}",
        "\u{1F34A}",
        "\u{1F34B}",
        "\u{1F34C}",
        "\u{1F34D}",
        "\u{1F34E}",
        "\u{1F34F}",
        "\u{1F350}",
        "\u{1F351}",
        "\u{1F352}",
        "\u{1F353}",
        "\u{1F354}",
        "\u{1F355}",
        "\u{1F356}",
        "\u{1F357}",
        "\u{1F358}",
        "\u{1F359}",
        "\u{1F35A}",
        "\u{1F35B}",
        "\u{1F35C}",
        "\u{1F35D}",
        "\u{1F35E}",
        "\u{1F35F}",
        "\u{1F360}",
        "\u{1F361}",
        "\u{1F362}",
        "\u{1F363}",
        "\u{1F364}",
        "\u{1F365}",
        "\u{1F366}",
        "\u{1F367}",
        "\u{1F368}",
        "\u{1F369}",
        "\u{1F36A}",
        "\u{1F36B}",
        "\u{1F36C}",
        "\u{1F36D}",
        "\u{1F36E}",
        "\u{1F36F}",
        "\u{1F370}",
        "\u{1F371}",
        "\u{1F372}",
        "\u{1F373}",
        "\u{1F374}",
        "\u{1F375}",
        "\u{1F376}",
        "\u{1F377}",
        "\u{1F378}",
        "\u{1F379}",
        "\u{1F37A}",
        "\u{1F37B}",
        "\u{1F37C}",
        "\u{1F37D}",
        "\u{1F37E}",
        "\u{1F37F}",
        "\u{1F380}",
        "\u{1F381}",
        "\u{1F382}",
        "\u{1F383}",
        "\u{1F384}",
        "\u{1F385}",
        "\u{1F386}",
        "\u{1F387}",
        "\u{1F388}",
        "\u{1F389}",
        "\u{1F38A}",
        "\u{1F38B}",
        "\u{1F38C}",
        "\u{1F38D}",
        "\u{1F38E}",
        "\u{1F38F}",
        "\u{1F390}",
        "\u{1F391}",
        "\u{1F392}",
        "\u{1F393}",
        "\u{1F396}",
        "\u{1F397}",
        "\u{1F399}",
        "\u{1F39A}",
        "\u{1F39B}",
        "\u{1F39E}",
        "\u{1F39F}",
        "\u{1F3A0}",
        "\u{1F3A1}",
        "\u{1F3A2}",
        "\u{1F3A3}",
        "\u{1F3A4}",
        "\u{1F3A5}",
        "\u{1F3A6}",
        "\u{1F3A7}",
        "\u{1F3A8}",
        "\u{1F3A9}",
        "\u{1F3AA}",
        "\u{1F3AB}",
        "\u{1F3AC}",
        "\u{1F3AD}",
        "\u{1F3AE}",
        "\u{1F3AF}",
        "\u{1F3B0}",
        "\u{1F3B1}",
        "\u{1F3B2}",
        "\u{1F3B3}",
        "\u{1F3B4}",
        "\u{1F3B5}",
        "\u{1F3B6}",
        "\u{1F3B7}",
        "\u{1F3B8}",
        "\u{1F3B9}",
        "\u{1F3BA}",
        "\u{1F3BB}",
        "\u{1F3BC}",
        "\u{1F3BD}",
        "\u{1F3BE}",
        "\u{1F3BF}",
        "\u{1F3C0}",
        "\u{1F3C1}",
        "\u{1F3C2}",
        "\u{1F3C3}",
        "\u{1F3C4}",
        "\u{1F3C5}",
        "\u{1F3C6}",
        "\u{1F3C7}",
        "\u{1F3C8}",
        "\u{1F3C9}",
        "\u{1F3CA}",
        "\u{1F3CB}",
        "\u{1F3CC}",
        "\u{1F3CD}",
        "\u{1F3CE}",
        "\u{1F3CF}",
        "\u{1F3D0}",
        "\u{1F3D1}",
        "\u{1F3D2}",
        "\u{1F3D3}",
        "\u{1F3D4}",
        "\u{1F3D5}",
        "\u{1F3D6}",
        "\u{1F3D7}",
        "\u{1F3D8}",
        "\u{1F3D9}",
        "\u{1F3DA}",
        "\u{1F3DB}",
        "\u{1F3DC}",
        "\u{1F3DD}",
        "\u{1F3DE}",
        "\u{1F3DF}",
        "\u{1F3E0}",
        "\u{1F3E1}",
        "\u{1F3E2}",
        "\u{1F3E3}",
        "\u{1F3E4}",
        "\u{1F3E5}",
        "\u{1F3E6}",
        "\u{1F3E7}",
        "\u{1F3E8}",
        "\u{1F3E9}",
        "\u{1F3EA}",
        "\u{1F3EB}",
        "\u{1F3EC}",
        "\u{1F3ED}",
        "\u{1F3EE}",
        "\u{1F3EF}",
        "\u{1F3F0}",
        "\u{1F3F3}",
        "\u{1F3F4}",
        "\u{1F3F5}",
        "\u{1F3F7}",
        "\u{1F3F8}",
        "\u{1F3F9}",
        "\u{1F3FA}",
        "\u{1F3FB}",
        "\u{1F3FC}",
        "\u{1F3FD}",
        "\u{1F3FE}",
        "\u{1F3FF}",
        "\u{1F400}",
        "\u{1F401}",
        "\u{1F402}",
        "\u{1F403}",
        "\u{1F404}",
        "\u{1F405}",
        "\u{1F406}",
        "\u{1F407}",
        "\u{1F408}",
        "\u{1F409}",
        "\u{1F40A}",
        "\u{1F40B}",
        "\u{1F40C}",
        "\u{1F40D}",
        "\u{1F40E}",
        "\u{1F40F}",
        "\u{1F410}",
        "\u{1F411}",
        "\u{1F412}",
        "\u{1F413}",
        "\u{1F414}",
        "\u{1F415}",
        "\u{1F416}",
        "\u{1F417}",
        "\u{1F418}",
        "\u{1F419}",
        "\u{1F41A}",
        "\u{1F41B}",
        "\u{1F41C}",
        "\u{1F41D}",
        "\u{1F41E}",
        "\u{1F41F}",
        "\u{1F420}",
        "\u{1F421}",
        "\u{1F422}",
        "\u{1F423}",
        "\u{1F424}",
        "\u{1F425}",
        "\u{1F426}",
        "\u{1F427}",
        "\u{1F428}",
        "\u{1F429}",
        "\u{1F42A}",
        "\u{1F42B}",
        "\u{1F42C}",
        "\u{1F42D}",
        "\u{1F42E}",
        "\u{1F42F}",
        "\u{1F430}",
        "\u{1F431}",
        "\u{1F432}",
        "\u{1F433}",
        "\u{1F434}",
        "\u{1F435}",
        "\u{1F436}",
        "\u{1F437}",
        "\u{1F438}",
        "\u{1F439}",
        "\u{1F43A}",
        "\u{1F43B}",
        "\u{1F43C}",
        "\u{1F43D}",
        "\u{1F43E}",
        "\u{1F43F}",
        "\u{1F440}",
        "\u{1F441}",
        "\u{1F442}",
        "\u{1F443}",
        "\u{1F444}",
        "\u{1F445}",
        "\u{1F446}",
        "\u{1F447}",
        "\u{1F448}",
        "\u{1F449}",
        "\u{1F44A}",
        "\u{1F44B}",
        "\u{1F44C}",
        "\u{1F44D}",
        "\u{1F44E}",
    ]

    /// U10000以上絵文字
    let geU10000PictArray = [
        "\u{10000}",
        "\u{10010}",
        "\u{10020}",
        "\u{10030}",
        "\u{10040}",
        "\u{10050}",
        "\u{10060}",
        "\u{10070}",
        "\u{10080}",
        "\u{10090}",
        "\u{100A0}",
        "\u{100B0}",
        "\u{100C0}",
        "\u{100D0}",
        "\u{100E0}",
        "\u{100F0}",
        "\u{10100}",
        "\u{10110}",
        "\u{10120}",
        "\u{10130}",
        "\u{10140}",
        "\u{10150}",
        "\u{10160}",
        "\u{10170}",
        "\u{10180}",
        "\u{10190}",
        "\u{101A0}",
        "\u{101B0}",
        "\u{101C0}",
        "\u{101D0}",
        "\u{101E0}",
        "\u{101F0}",
        "\u{10200}",
        "\u{10210}",
        "\u{10220}",
        "\u{10230}",
        "\u{10240}",
        "\u{10250}",
        "\u{10260}",
        "\u{10270}",
        "\u{10280}",
        "\u{10290}",
        "\u{102A0}",
        "\u{102B0}",
        "\u{102C0}",
        "\u{102D0}",
        "\u{102E0}",
        "\u{102F0}",
        "\u{10300}",
        "\u{10310}",
        "\u{10320}",
        "\u{10330}",
        "\u{10340}",
        "\u{10350}",
        "\u{10360}",
        "\u{10370}",
        "\u{10380}",
        "\u{10390}",
        "\u{103A0}",
        "\u{103B0}",
        "\u{103C0}",
        "\u{103D0}",
        "\u{103E0}",
        "\u{103F0}",
        "\u{10400}",
        "\u{10410}",
        "\u{10420}",
        "\u{10430}",
        "\u{10440}",
        "\u{10450}",
        "\u{10460}",
        "\u{10470}",
        "\u{10480}",
        "\u{10490}",
        "\u{104A0}",
        "\u{104B0}",
        "\u{104C0}",
        "\u{104D0}",
        "\u{104E0}",
        "\u{104F0}",
        "\u{10500}",
        "\u{10510}",
        "\u{10520}",
        "\u{10530}",
        "\u{10540}",
        "\u{10550}",
        "\u{10560}",
        "\u{10570}",
        "\u{10580}",
        "\u{10590}",
        "\u{105A0}",
        "\u{105B0}",
        "\u{105C0}",
        "\u{105D0}",
        "\u{105E0}",
        "\u{105F0}",
        "\u{10600}",
        "\u{10610}",
        "\u{10620}",
        "\u{10630}",
        "\u{10640}",
        "\u{10650}",
        "\u{10660}",
        "\u{10670}",
        "\u{10680}",
        "\u{10690}",
        "\u{106A0}",
        "\u{106B0}",
        "\u{106C0}",
        "\u{106D0}",
        "\u{106E0}",
        "\u{106F0}",
    ]

    /// U10000以上漢字
    let geU10000KanjiArray = [
        "\u{0041}",
        "\u{0061}",
        "\u{00E8}",
        "\u{042F}",
        "\u{05D0}",
        "\u{0905}",
        "\u{0E04}",
        "\u{2162}",
        "\u{3042}",
        "\u{4E9C}",
        "\u{D558}",
        "\u{103A0}",
        "\u{2000B}",
        "\u{20BB7}",
        "\u{29E3D}",
    ]
}
