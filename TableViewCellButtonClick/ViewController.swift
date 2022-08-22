//
//  ViewController.swift
//  TableViewCellButtonClick
//
//  Created by macmini01 on 22/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
        
        //MARK: USING DELEGATE
//        cell?.delegate = self
//        cell?.btn.tag = indexPath.row
        
        //MARK: USING CLOSURE
//        cell?.tapBlock = {
//            print(indexPath.row)
//        }
        
        cell?.btn.addTarget(self, action: #selector(cellBtnTapped(sender:)), for: .touchUpInside)
        cell?.btn.setTitle("\(indexPath.row)", for: .normal)
        return cell!
    }
}

//PROTOCOL DELEGATE

//extension ViewController: CellDelegate {
//    func CellBtnTapped(tag: Int) {
//        print(tag)
//    }
//}

extension ViewController {
    @objc func cellBtnTapped(sender: UIButton) {
        print(sender.tag)
    }
}


/* Here we learned three methods for same work :-
 Task :- We have to click on button and the value of that clicked button should be print on the output window. for this we can do using below three methods.
 
 1. By using protocol delegation :- We have used sender.tag with this method.
 2. By using closure :- There is no need to use sender.tag with closure.
 3. By using Add Target :- We have used sender.tag with add target method.
 */
