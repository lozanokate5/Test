//
//  ProductosViewController.swift
//  Blm
//
//  Created by catalina lozano on 08/06/22.
//

import UIKit

class ProductosViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel1 = PrincipalViewModel()
    var questionData1: MetaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel1.getAllTheQuestion1 {[weak self] in
            self?.questionData1 = self?.viewModel1.dataModel
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
}
extension ProductosViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questionData1?.data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.questionData1?.data?[indexPath.row].name
        cell.detailTextLabel?.text = self.questionData1?.data?[indexPath.row].status
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // tableView.deselectRow(at: indexPath, animated: true)
       // performSegue(withIdentifier: "showdetailsegue", sender: self)
       
       /*  if let vc1 = storyboard?.instantiateViewController(identifier: "PantallaDosViewController") as? PantallaDosViewController {
            vc1.user = (self.questionData1?.data?[indexPath.row].gender!)!
            self.navigationController?.pushViewController(vc1, animated: true)
        }
    
        */
          
        let vc = storyboard?.instantiateViewController(withIdentifier: "PantallaDosViewController") as? PantallaDosViewController
        vc!.nam = (self.questionData1?.data?[indexPath.row].name!)!
        vc!.emai = (self.questionData1?.data?[indexPath.row].email!)!
        vc!.gend = (self.questionData1?.data?[indexPath.row].gender!)!
        vc!.stat = (self.questionData1?.data?[indexPath.row].status!)!
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
