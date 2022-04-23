//
//  Book.swift
//  BookShelf
//
//  Created by Thiago Costa on 4/21/22.
//

import Foundation


class Book {
    var title: String
    var author: String
    var cover: String
    var description: String
    var releaseDate: Date
    
    init(title: String, authorName: String, cover: String, description: String, releaseDate: String) {
        self.title = title
        self.author = authorName
        self.cover = cover
        self.description = description
        self.releaseDate = releaseDate.toDate(withFormat: "MM/dd/yyyy") ?? Date()
    }
}

extension String {
    func toDate(withFormat format: String = "yyyy-MM-dd HH:mm:ss")-> Date?{
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = format
        let date = dateFormatter.date(from: self)
        return date
    }
}

extension Date {
    func getYear(withFormat format: String = "yyyy") -> String {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = format
        return dateFormater.string(from: self)
    }
}

