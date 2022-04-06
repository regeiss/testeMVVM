//
//  QuotesViewModel.swift
//  testeMVVM
//
//  Created by Roberto Edgar Geiss on 05/04/22.
//

import Foundation

protocol QuotesViewModel: ObservableObject
{
    func getRandomQuotes() async
}

@MainActor
final class QuotesViewModelImpl: QuotesViewModel
{
    @Published private(set) var quotes: [Quote] = []
    private let service: QuotesService
    
    init(service: QuotesService)
    {
        self.service = service
    }
    
    func getRandomQuotes() async
    {
        do
        {
            self.quotes = try await service.fetch()
        }
        catch
        {
            print(error)
        }
        
    }
    
    
}
