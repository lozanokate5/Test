//
//  ViewController.swift
//  Blm
//
//  Created by catalina lozano on 08/06/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var elements = ["Leer codigo QR", "Recuperar lista de productos"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda") as! OpcionTableViewCell
        cell.opcionLbl.text = elements[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if elements[indexPath.row] == "Leer codigo QR" {
            tableView.deselectRow(at: indexPath, animated: true)
               performSegue(withIdentifier: "segue1", sender: self)
        } else {
            tableView.deselectRow(at: indexPath, animated: true)
               performSegue(withIdentifier: "segue2", sender: self)
        }
        
        
     //   tableView.deselectRow(at: indexPath, animated: true)
     //   performSegue(withIdentifier: "segue1", sender: self)
       
        /* if let vc1 = storyboard?.instantiateViewController(identifier: "LeerViewController") as? LeerViewController {
            //vc1.user = (self.questionData1?.data?[indexPath.row].gender!)!
            self.navigationController?.pushViewController(vc1, animated: true)
        }*/
    
        
          
       /* let vc = storyboard?.instantiateViewController(withIdentifier: "ProductosViewController") as? ProductosViewController
       // vc!.nam = (self.questionData1?.data?[indexPath.row].name!)!
       // vc!.emai = (self.questionData1?.data?[indexPath.row].email!)!
       // vc!.gend = (self.questionData1?.data?[indexPath.row].gender!)!
      //  vc!.stat = (self.questionData1?.data?[indexPath.row].status!)!
        self.navigationController?.pushViewController(vc!, animated: true)*/
    }

}

