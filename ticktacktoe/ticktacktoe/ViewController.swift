//
//  ViewController.swift
//  ticktacktoe
//
//  Created by Tayron Jimenez on 11/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    enum Turn{
        case Nada
        case Cruz
    }

    @IBOutlet weak var turnLabel: UILabel!
    
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var a2: UIButton!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b2: UIButton!
    
    
    @IBOutlet weak var c3: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c1: UIButton!
    
    var firstTurn = Turn.Cruz
    var currentTurn = Turn.Cruz
    
    let NADA = "O"
    let CRUZ = "X"
    var board = [UIButton]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBoard()
    }
    func initBoard(){
        board.append(a1)
        board.append(a2)
        board.append(a3)
        
        board.append(b1)
        board.append(b2)
        board.append(b3)
        
        board.append(c1)
        board.append(c2)
        board.append(c3)
        
        
    }
    
    

    @IBAction func boardTapAction(_ sender: UIButton) {
        
        addToBoard(sender)
        
        if fullBoard(){
            resultAlert(tittle: "Empate")
        }
        
    }
    
    func resultAlert(tittle: String){
        let ac = UIAlertController(title: tittle, message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Reset", style: .default, handler: {(_) in self.resetBoard()}))
        self.present(ac, animated: true)
    }
    
    func resetBoard(){
        for button in board{
            button.isEnabled = true
            button.setTitle("", for: .normal)
            
        }
    }
    
    func fullBoard()->Bool{
        for button in board{
            if button.title(for: .normal)==nil || button.title(for: .normal)==""{
                return false
            }
        }
        return true
    }
    
    func addToBoard(_ sender: UIButton){
        if sender.title(for: .normal)==nil || sender.title(for: .normal)==""{
            if currentTurn == Turn.Nada{
                sender.setTitle(NADA, for: .normal)
                currentTurn = Turn.Cruz
                turnLabel.text = CRUZ
                
            }
            else if currentTurn == Turn.Cruz{
                sender.setTitle(CRUZ, for: .normal)
                currentTurn = Turn.Nada
                turnLabel.text = NADA
                
            }
            sender.isEnabled = false
            
        }
    }
    
}

