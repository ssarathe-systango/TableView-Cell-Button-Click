//
//  TableViewCell.swift
//  TableViewCellButtonClick
//
//  Created by macmini01 on 22/08/22.
//

import UIKit

//MARK: USING DELEGATE

//protocol CellDelegate: AnyObject {
//    func CellBtnTapped(tag: Int)
//}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var btn: UIButton!
//    weak var delegate: CellDelegate?
    
    //MARK: USING CLOSURE
//    var tapBlock:(() -> Void)? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func btnCellTapped(_ sender: UIButton) {
//        delegate?.CellBtnTapped(tag: sender.tag) //PROTOCOL DELEGATE
        
//        tapBlock?() //CLOSURE
    }
}
