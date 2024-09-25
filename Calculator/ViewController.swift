//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by EFE DAVRAN on 25.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelShowNumber: UILabel!
    
    var equationString = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    
    // Tüm verileri temizleyen fonksiyon
    func clearAll() {
        equationString = ""
        labelShowNumber.text = equationString
    }
    
    @IBAction func buttonAllClear(_ sender: Any) {
        clearAll()
        
    }
    
    // Hesaplama işlemini gerçekleştiren fonksiyon
    func calculate(equation: String) -> Int {
        let array = equation.split(separator: "+")
        var sum = 0
        
        for n in array {
            if let value = Int(n) {
                sum += value
            } else {
                print("Girilen veri hatalı")
            }
        }
        return sum
    }
    
    @IBAction func buttonEquals(_ sender: Any) {
        let result = calculate(equation: equationString)
        labelShowNumber.text = String(result)
        equationString = "" // Hesaplama sonrası girişleri sıfırla
    }
    
    // Rakam butonları için fonksiyonlar
    @IBAction func buttonZero(_ sender: Any) {
        appendDigit("0")
    }
    
    @IBAction func buttonOne(_ sender: Any) {
        appendDigit("1")
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        appendDigit("2")
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        appendDigit("3")
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        appendDigit("4")
    }
    
    @IBAction func buttonFive(_ sender: Any) {
        appendDigit("5")
    }
    
    @IBAction func buttonSix(_ sender: Any) {
        appendDigit("6")
    }
    
    @IBAction func buttonSeven(_ sender: Any) {
        appendDigit("7")
    }
    
    @IBAction func buttonEight(_ sender: Any) {
        appendDigit("8")
    }
    
    @IBAction func buttonNine(_ sender: Any) {
        appendDigit("9")
    }
    
    // Rakam ekleme fonksiyonu
    func appendDigit(_ digit: String) {
        equationString.append(digit)
        labelShowNumber.text = equationString
    }
    
    // Toplama butonu için fonksiyon
    @IBAction func buttonPlus(_ sender: Any) {
        equationString.append("+")
        labelShowNumber.text = equationString
    }
}
