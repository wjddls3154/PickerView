//
//  ViewController.swift
//  PickerView
//
//  Created by D7702_10 on 2018. 4. 18..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    @IBOutlet weak var myPickerView: UIPickerView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var yourLabel: UILabel!
    
    var color = ["white", "green", "red"]
    var feeling = ["1", "2", "3"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.delegate = self
        myPickerView.dataSource = self
        myLabel.text = color[0]
        yourLabel.text = feeling[0]
        
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
        
        //컴포넌트 개수 2개로 지정
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 3    //돌리는 갯수 3개
        } else {
            return 3  //돌리는 갯수 3개
        }
    }
     //각 컴포넌트 안의 로우 개수지정
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String? {
        if component == 0 {
            return color[row]
        } else {
            return feeling[row]
        }
    }
    
    //로우 배열에 color와 feeling 내용 삽입
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            myLabel.text = color[row]}
        else{
        yourLabel.text = feeling[row]
        }}
    
    //선택한 컴포넌트의 로우값만 출력
    
    
    
}

