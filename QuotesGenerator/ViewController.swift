//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by TAEYONG HA on 2022/08/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "연은 순풍이 아니라 역풍에 가장 높이 난다.", name: "윈스턴 처칠"),
        Quote(contents: "과거에서 교훈을 얻을 수는 있어도 과거 속에 살 수는 없다.", name: "린든 B. 존슨"),
        Quote(contents: "다른 사람들을 평가한다면 그들을 사랑할 시간이 없다.", name: "마더 테레사"),
        Quote(contents: "늘 행복하고 지혜로운 사람이 되려면 자주 변해야 한다.", name: "공자"),
        Quote(contents: "인생은 자전거를 타는 것과 같다. 균형을 잡으려면 움직여야 한다.", name: "알버트 아인슈타인"),
        Quote(contents: "인생은 외국어이다. 모든 사람이 그것을 잘못 발음한다.", name: "크리스토퍼 몰리"),
        Quote(contents: "왜 굳이 의미를 찾으려 하는가? 인생은 욕망이지, 의미가 아니다.", name: "찰리 채플린"),
        Quote(contents: "명성을 쌓는 데는 20년이란 세월이 걸리며, 명성을 무너뜨리는 데는 채 5분도 걸리지 않는다. 그걸 명심한다면, 당신의 행동이 달라질 것이다.", name: "워런 버핏"),
        Quote(contents: "행동의 가치는 그 행동을 끝까지 이루는 데 있다.", name: "칭기즈칸"),
        Quote(contents: "실천이 말보다 낫다.", name: "벤자민 프랭클린"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(10))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

