//
//  Quote.swift
//  testeMVVM
//
//  Created by Roberto Edgar Geiss on 05/04/22.
//

import Foundation

struct Quote: Decodable
{
    let userId: Int
  let id: Int  
  let title: String
  let body: String
}

extension Quote
{
    static var dummyData: [Quote]
    {
        [
            Quote(anime: "Anime 1", character: "Character 1", quote: "Random Quote 1")
           
        ]
    }
}
