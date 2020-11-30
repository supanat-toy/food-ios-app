//
//  TableViewCell.swift
//  food
//
//  Created by Supanat on 30/11/2563 BE.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    // MARK: UI
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var likeNumberLabel: UILabel!
    @IBOutlet weak var foodImageView: UIImageView!
    
    // MARK: Data
    static let identifier = "FoodTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
        self.backgroundColor = .white
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()

        nameLabel.text = ""
        descriptionLabel.text = ""
        foodImageView.image = UIImage()
        likeNumberLabel.text = ""
    }
    
    func setCell(viewModel: Food) {
        nameLabel.text = viewModel.name
        descriptionLabel.text = viewModel.description
        foodImageView.image = viewModel.image
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        likeNumberLabel.text = formatter.string(for: viewModel.like)
    }
}
