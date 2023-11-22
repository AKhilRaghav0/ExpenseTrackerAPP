//
//  TransactionModel.swift
//  ExpenseTracker
//
//  Created by Akhil on 22/11/23.
//

import Foundation


struct Transaction: Identifiable{
    let id: Int
    let date: String
    let institution: String
    let account: Double
    let type: TransactionType.RawValue
    let CatagoryId: Int
    let isPending: Bool
    let isTransfer: Bool
    let isExpense: Bool
    let isEdited: Bool
    
    
    
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}
