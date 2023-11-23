//
//  TransactionRow.swift
//  ExpenseTracker
//
//  Created by Akhil on 23/11/23.
//

import SwiftUI

struct TransactionRow: View {
    @State private var slidervalue = 0.4
    var transaction: Transaction
    var body: some View {
        HStack (spacing: 20){
            VStack (alignment: .leading, spacing: 6) {
                //MARK: Transaction Merchant
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                //MARK: Transaction Category
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                //MARK: Transaction Date
//                Text(transaction.date)
                Text(Date(), format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
//                
                    
            }
            
        }
        .padding([.top, .bottom], 8 )
        
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow(transaction: transactionPreviewData )
    }
}
