//
//  TransactionListViewModel.swift
//  ExpenseTracker
//
//  Created by Akhil on 24/11/23.
//

import Foundation

final class TransactionListViewModel: ObservableObject {
    @Published var transaction : [Transaction] = []
    
    func getTransactions() {
        guard let url = URL(string: "https://designcode.io/data/transactions.json") else {
            print("Invalid URL")
            return
        }
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap{ (data, response) -> Data in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    dump(response)
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: [Transaction].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print("Error Fetching Transactions", error.localizedDescription)
                case .finished:
                    print("Finished fetching Transactions")
                }
            } receiveValue: { [weak self] result in
                self?.transaction = result
                dump(self?.transaction)
            }
            .store(in: &canellables)
    }
}
