//
//  BooksController.swift
//  BookShelf
//
//  Created by Thiago Costa on 4/21/22.
//

import Foundation
import UIKit

class BooksController {
    
    static let shared = BooksController()
    static let thumbnailSize = CGSize(width: 50, height: 50)
    static let fullImageSize = CGSize(width: 200, height: 200)
    
    private var books: [Book] = []
    
    func fecthBooks() -> [Book] {
        
        if books.isEmpty {
            books.append(Book(title: "My Evil Mother: A Short Story", authorName: "Margaret Atwood book1", cover: "book1", description: "Life is hard enough for a teenage girl in 1950s suburbia without having a mother who may—or may not—be a witch. A single mother at that. Sure, she fits in with her starched dresses, string of pearls, and floral aprons. Then there are the hushed and mystical consultations with neighborhood women in distress. The unsavory, mysterious plants in the flower beds. The divined warning to steer clear of a boyfriend whose fate is certainly doomed. But as the daughter of this bewitching homemaker comes of age and her mother’s claims become more and more outlandish, she begins to question everything she once took for granted.", releaseDate: "03/04/2022"))
            books.append(Book(title: "At the Quiet Edge", authorName: "Victoria Helen Stone ", cover: "book2", description: "Abandoned by her fugitive ex-husband, Lily Brown is rebuilding her life on the edge of a Kansas town that still feels the sting of his crimes. Lily lies low, managing the isolated storage facility where she lives with her twelve-year-old son, Everett, and planning a better future for them both. That requires keeping secrets. Everett has them too.", releaseDate: "09/15/2021"))
            books.append(Book(title: "12 Rules for Life: An Antidote to Chaos", authorName: "Jordan B. Peterson", cover: "book3", description: "What does everyone in the modern world need to know? Renowned psychologist Jordan B. Peterson's answer to this most difficult of questions uniquely combines the hard-won truths of ancient tradition with the stunning revelations of cutting-edge scientific research.", releaseDate: "11/05/2020"))
            books.append(Book(title: "The Sandman Book One", authorName: "Neil Gaiman", cover: "book4", description: "Neil Gaiman's award-winning masterpiece The Sandman is one of the most popular and critically acclaimed graphic novels of all time. The series is a rich blend of modern and ancient mythology in which contemporary fiction, historical drama, and legend are seamlessly interwoven.", releaseDate: "01/01/1985"))

          
        }
        
        return books
    }
                   
    
}

