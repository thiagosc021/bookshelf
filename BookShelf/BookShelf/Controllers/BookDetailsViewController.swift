//
//  ViewController.swift
//  BookShelf
//
//  Created by Thiago Costa on 4/21/22.
//

import UIKit

class BookDetailsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var model: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    func configureView() {
        guard let model = model else {
            return
        }

        titleLabel.text = model.title
        authorLabel.text = model.author
        let coverImage = UIImage(named: model.cover)
        coverImageView.image = coverImage?.scalePreservingAspectRatio(targetSize: BooksController.fullImageSize)
        releaseYearLabel.text = model.releaseDate.getYear()
        descriptionTextView.text = model.description
    }

}

