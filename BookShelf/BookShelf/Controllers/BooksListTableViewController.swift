//
//  BooksListTableViewController.swift
//  BookShelf
//
//  Created by Thiago Costa on 4/21/22.
//

import UIKit

class BooksListTableViewController: UITableViewController {
    
    let modelController = BooksController.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Bookshelf"
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelController.fecthBooks().count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)

        let book = modelController.fecthBooks()[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        let coverImage = UIImage(named: book.cover) ?? UIImage()
        
        content.image =  coverImage.scalePreservingAspectRatio(targetSize: BooksController.thumbnailSize)
        content.text = "\(book.title), by \(book.author)"
        content.textProperties.color = .white
        cell.contentConfiguration = content
        
        return cell
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? BookDetailsViewController,
              let selectedIndexPath = self.tableView.indexPathForSelectedRow else {
            return
        }
        
        destinationVC.model = modelController.fecthBooks()[selectedIndexPath.row]
    }

}

extension UIImage {
    func scalePreservingAspectRatio(targetSize: CGSize) -> UIImage {
        // Determine the scale factor that preserves aspect ratio
        let widthRatio = targetSize.width / size.width
        let heightRatio = targetSize.height / size.height
        
        let scaleFactor = min(widthRatio, heightRatio)
        
        // Compute the new image size that preserves aspect ratio
        let scaledImageSize = CGSize(
            width: size.width * scaleFactor,
            height: size.height * scaleFactor
        )

        // Draw and return the resized UIImage
        let renderer = UIGraphicsImageRenderer(
            size: scaledImageSize
        )

        let scaledImage = renderer.image { _ in
            self.draw(in: CGRect(
                origin: .zero,
                size: scaledImageSize
            ))
        }
        
        return scaledImage
    }
}
