//
//  QuotesService.swift
//  testeMVVM
//
//  Created by Roberto Edgar Geiss on 05/04/22.
//

import Foundation

protocol QuotesService
{
    func fetch() async throws -> [Quote]
}

final class QuotesServiceImpl: QuotesService
{
    
    func fetch() async throws -> [Quote]
    {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/api/quotes"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Quote].self, from: data)
    }
}
