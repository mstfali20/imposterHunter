//
//  ViewController.swift
//  game
//
//  Created by Mustafa Ali KILCI on 20.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timelabel: UILabel!
   
    @IBOutlet weak var scorlabel: UILabel!

    @IBOutlet weak var imposter1: UIImageView!
    
    @IBOutlet weak var imposter2: UIImageView!
    
    @IBOutlet weak var imposter3: UIImageView!
    
    @IBOutlet weak var imposter4: UIImageView!
    
    @IBOutlet weak var imposter5: UIImageView!
    
    @IBOutlet weak var imposter6: UIImageView!
    
    @IBOutlet weak var imposter7: UIImageView!
    @IBOutlet weak var imposter8: UIImageView!
    
    @IBOutlet weak var imposter9: UIImageView!
    
    @IBOutlet weak var imposter10: UIImageView!
    
    @IBOutlet weak var imposter11: UIImageView!
    @IBOutlet weak var imposter22: UIImageView!
    
    @IBOutlet weak var imposter35: UIImageView!
    @IBOutlet weak var imposter34: UIImageView!
    @IBOutlet weak var imposter33: UIImageView!
    @IBOutlet weak var imposter32: UIImageView!
    @IBOutlet weak var imposter31: UIImageView!
    @IBOutlet weak var imposter30: UIImageView!
    @IBOutlet weak var imposter29: UIImageView!
    @IBOutlet weak var imposter28: UIImageView!
    @IBOutlet weak var imposter27: UIImageView!
    @IBOutlet weak var imposter26: UIImageView!
    @IBOutlet weak var imposter25: UIImageView!
    @IBOutlet weak var imposter24: UIImageView!
    @IBOutlet weak var imposter23: UIImageView!
    @IBOutlet weak var imposter21: UIImageView!
    @IBOutlet weak var imposter20: UIImageView!
    @IBOutlet weak var imposter19: UIImageView!
    @IBOutlet weak var imposter18: UIImageView!
    @IBOutlet weak var imposter17: UIImageView!
    @IBOutlet weak var imposter15: UIImageView!
    @IBOutlet weak var imposter16: UIImageView!
    @IBOutlet weak var imposter14: UIImageView!
    @IBOutlet weak var imposter13: UIImageView!
    @IBOutlet weak var imposter12: UIImageView!
   
    @IBOutlet weak var highscorelabel: UILabel!
 
    
    
    
    var scor = 0
    var caunt = 10
    var timer = Timer()
    var hitTimer = Timer ()
    var highitscor = 0
    
    
    var imposterArray = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let storyhighscore = UserDefaults.standard.object(forKey: "highscore")
        
        if storyhighscore == nil {
            highitscor = 0
            highscorelabel.text = "HighScore : \(highitscor)"
        }
        
        if let newscore = storyhighscore as? Int{
            highitscor=newscore
            highscorelabel.text = "HighScore : \(highitscor)"
        }
                
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Timess), userInfo: nil, repeats:true    )
        hitTimer = Timer.scheduledTimer(timeInterval:0.6, target: self, selector: #selector(hideİmposter), userInfo: nil, repeats: true)
        
       // scorlabel.text = "Score = \(scor)"
        
        imposter1.isUserInteractionEnabled = true
        imposter2.isUserInteractionEnabled = true
        imposter3.isUserInteractionEnabled = true
        imposter4.isUserInteractionEnabled = true
        imposter5.isUserInteractionEnabled = true
        imposter6.isUserInteractionEnabled = true
        imposter7.isUserInteractionEnabled = true
        imposter8.isUserInteractionEnabled = true
        imposter9.isUserInteractionEnabled = true
        imposter10.isUserInteractionEnabled = true
        imposter11.isUserInteractionEnabled = true
        imposter12.isUserInteractionEnabled = true
        imposter13.isUserInteractionEnabled = true
        imposter14.isUserInteractionEnabled = true
        imposter15.isUserInteractionEnabled = true
        imposter16.isUserInteractionEnabled = true
        imposter17.isUserInteractionEnabled = true
        imposter18.isUserInteractionEnabled = true
        imposter19.isUserInteractionEnabled = true
        imposter20.isUserInteractionEnabled = true
        imposter21.isUserInteractionEnabled = true
        imposter22.isUserInteractionEnabled = true
        imposter23.isUserInteractionEnabled = true
        imposter24.isUserInteractionEnabled = true
        imposter25.isUserInteractionEnabled = true
        imposter26.isUserInteractionEnabled = true
        imposter27.isUserInteractionEnabled = true
        imposter28.isUserInteractionEnabled = true
        imposter29.isUserInteractionEnabled = true
        imposter30.isUserInteractionEnabled = true
        imposter31.isUserInteractionEnabled = true
        imposter32.isUserInteractionEnabled = true
        imposter33.isUserInteractionEnabled = true
        imposter34.isUserInteractionEnabled = true
        imposter35.isUserInteractionEnabled = true
        
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer12 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer13 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer14 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer15 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer16 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer17 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer18 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer19 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer20 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer21 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer22 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer23 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer24 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer25 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer26 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer27 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer28 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer29 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer30 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer31 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer32 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer33 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer34 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        let recognizer35 = UITapGestureRecognizer(target: self, action: #selector(inreaseScore))
        
        
        imposter1.addGestureRecognizer(recognizer1)
        imposter2.addGestureRecognizer(recognizer2)
        imposter3.addGestureRecognizer(recognizer3)
        imposter4.addGestureRecognizer(recognizer4)
        imposter5.addGestureRecognizer(recognizer5)
        imposter6.addGestureRecognizer(recognizer6)
        imposter7.addGestureRecognizer(recognizer7)
        imposter8.addGestureRecognizer(recognizer8)
        imposter9.addGestureRecognizer(recognizer9)
        imposter10.addGestureRecognizer(recognizer10)
        imposter11.addGestureRecognizer(recognizer11)
        imposter12.addGestureRecognizer(recognizer12)
        imposter13.addGestureRecognizer(recognizer13)
        imposter14.addGestureRecognizer(recognizer14)
        imposter15.addGestureRecognizer(recognizer15)
        imposter16.addGestureRecognizer(recognizer16)
        imposter17.addGestureRecognizer(recognizer17)
        imposter18.addGestureRecognizer(recognizer18)
        imposter19.addGestureRecognizer(recognizer19)
        imposter20.addGestureRecognizer(recognizer20)
        imposter21.addGestureRecognizer(recognizer21)
        imposter22.addGestureRecognizer(recognizer22)
        imposter23.addGestureRecognizer(recognizer23)
        imposter24.addGestureRecognizer(recognizer24)
        imposter25.addGestureRecognizer(recognizer25)
        imposter26.addGestureRecognizer(recognizer26)
        imposter27.addGestureRecognizer(recognizer27)
        imposter28.addGestureRecognizer(recognizer28)
        imposter29.addGestureRecognizer(recognizer29)
        imposter30.addGestureRecognizer(recognizer30)
        imposter31.addGestureRecognizer(recognizer31)
        imposter32.addGestureRecognizer(recognizer32)
        imposter33.addGestureRecognizer(recognizer33)
        imposter34.addGestureRecognizer(recognizer34)
        imposter35.addGestureRecognizer(recognizer35)
        
        
        
        imposterArray = [imposter1,imposter2,imposter3,imposter4,imposter5,imposter6,imposter7,imposter8,imposter9,imposter10,imposter11,imposter12,imposter13,imposter14,imposter15,imposter16,imposter17,imposter18,imposter19,imposter20,imposter21,imposter22,imposter23,imposter24,imposter25,imposter26,imposter27,imposter28,imposter29,imposter30,imposter31,imposter32,imposter33,imposter34,imposter35
        
        ]
        
        hideİmposter()
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @objc func  hideİmposter (){
        
        for imposterr in imposterArray {
            imposterr.isHidden = true
        }
        
          let  random = Int(        arc4random_uniform(UInt32(imposterArray.count-1))
            )
        imposterArray[random].isHidden=false
    }
    
    @objc func inreaseScore(){
        caunt += 1
        scor += 1
        
        
        scorlabel.text = "\(scor)"
        
    }
    

    
    @objc func Timess(){
        
        timelabel.text = " \(caunt)"
        caunt -= 1
        
        if caunt == 0
        {
            mesajalert(titleInput: "Bitti!!", mesageInput: "Süre doldu yeniden başlamak istiyorsan tekrar butonuna bas.")
            hitTimer.invalidate()
            timer.invalidate()
            // imposterArray.isHidden = false
            timelabel.text = "Süre doldu "
        }
        
        if self.scor > self.highitscor {
            self.highitscor = self.scor
            highscorelabel.text = "HighScore : \(self.highitscor)"
            UserDefaults.standard.set(self.highitscor, forKey: "highscore")
            
        }
        
    }
    
    func mesajalert(titleInput:String,mesageInput:String){
        let alert = UIAlertController(title: titleInput, message: mesageInput, preferredStyle: UIAlertController.Style.alert)
        let replacee = UIAlertAction(title: "Tekrar", style: UIAlertAction.Style.default) {
            (UIAlertAction) in
          
            self.scor = 0
            self.scorlabel.text = "\(self.scor)"
            self.caunt=10
            
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.Timess), userInfo: nil, repeats:true    )
            self.hitTimer = Timer.scheduledTimer(timeInterval: 0.6, target: self, selector: #selector(self.hideİmposter), userInfo: nil, repeats: true)
        }
       
        
        
        alert.addAction(replacee)
        self.present(alert, animated:true, completion: nil)
        
        
        
        
    }

}

