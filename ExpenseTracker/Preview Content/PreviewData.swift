//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Akhil on 23/11/23.
//

import Foundation
import SwiftUI

var transactionPreviewData = Transaction(id: 1, date: "11/24/2023", institution: "NIT", account: "kryptic", merchant: "Apple", amount: 11.89, type: "debit", categoryId: 801, category: "software", isPending: false, isTransfer: true, isExpense: true, isEdited: false)

var transactionPreviewDataList = [Transaction](repeating: transactionPreviewData, count: 10)
