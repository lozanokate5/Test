//
//  PantallaDosViewController.swift
//  Blm
//
//  Created by catalina lozano on 08/06/22.
//

import UIKit

class PantallaDosViewController: UIViewController {

    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblemail: UILabel!
    @IBOutlet weak var lblgender: UILabel!
    @IBOutlet weak var lblstatus: UILabel!
    
     var nam = ""
     var emai = ""
     var gend = ""
     var stat = ""
     
    var viewModel1 = PrincipalViewModel()
    var questionData1: MetaModel?
     
    override func viewDidLoad() {
        super.viewDidLoad()

        lblname.text = nam
        lblemail.text = emai
        lblgender.text = gend
        lblstatus.text = stat
    }
    /*func setSelected(_ selected: Bool, animated: Bool){
        setSelected(selected, animated: animated)
    }*/
}
