//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by Mio Sato on 2019/08/24.
//  Copyright © 2019 Mio Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray : [String] = ["昨日","今日","一年前","五年前"]
    let dokodeArray : [String] = ["学校で","渋谷で","十勝で","南アルプスで"]
    let daregaArray : [String] = ["私が","先生が","友達が","母が"]
    let doshitaArray : [String] = ["笑った","踊った","歌った","叫んだ"]
    
    var index : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change() {
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        
        if index > 3{
            index = 0
        }
        
    }
    @IBAction func reset() {
        itsuLabel.text = "---"
        dokodeLabel.text = "---"
        daregaLabel.text = "---"
        doshitaLabel.text = "---"
        
        index = 0
    }
    @IBAction func random() {
        let itsuIndex = Int(arc4random_uniform(4))
        let dokodeIndex = Int(arc4random_uniform(4))
        let daregaIndex = Int(arc4random_uniform(4))
        let doshitaIndex = Int(arc4random_uniform(4))
        
        print("いつ:\(itsuIndex)")
        print("どこで:\(dokodeIndex)")
        print("だれが:\(daregaIndex)")
        print("どうした:\(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }
    


}

