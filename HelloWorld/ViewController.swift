//
//  ViewController.swift
//  HelloWorld
//
//  Created by User on 2020/11/30.
//

import UIKit

class ViewController: UIViewController {

    var Emoji:[String:String] = ["😄":"開心","😱":"驚訝","👍":"讚啦"]
    @IBOutlet weak var btn: UIButton!
//    init() {
//        super.init()
//        print("(1)init")
//    }
    override func loadView() {
        super.loadView()
        print("(2)loadView")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.darkGray
        print("(3)viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("(4)viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("(5)viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("(6)viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("(7)viewDidDisappear")
    }
    //overridd (8)viewWillUnLoad
    //override (9)viewDidUnload
    @IBAction func btnShowMessage(_ sender: Any) {
        let btn = sender as? UIButton
        // 取 button text (1) currentTitle
        let msg:String = btn?.currentTitle ?? "-"
        // 取 button text (2) titleLabel?.text
        switch btn?.titleLabel?.text {
        case "😄":
            print("😄=" + (Emoji["😄"] ?? ""))
        case "😱":
            print("😱=" + (Emoji["😱"] ?? ""))
        case "👍":
            print("👍=" + (Emoji["👍"] ?? ""))
        default:
            if let s = btn?.titleLabel?.text {
                print(s)
                NSLog(s) // NSLog()
            }
        }
        //AlertMessage:AlertController.addAction 然後 present
        let alertController = UIAlertController(title: "Welcome my 1st app", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "you got \(msg)", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
        // alt + UIAlertController 有範例
//        let alert = UIAlertController(title: "My Alert", message: "This is an alert on my App.", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default,
//            handler: { _ in NSLog("The \"OK\" alert occured.")
//        }))
//        self.present(alert, animated: true, completion: nil)
    }
}

