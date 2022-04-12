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
             Quote(userId: 1, id: 1,title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto")]
}
