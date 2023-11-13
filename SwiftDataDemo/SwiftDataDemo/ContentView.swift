//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Serena Savarese on 05/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            
            Text("Tap on this button to add data")
            Button("Add to item"){
                addItem()
            }//End Button
            
            List{
                ForEach(items) {item in
                    HStack{
                        Text(item.name)
                        Spacer()
                        Button{
                            updateItem(item)
                        } label: {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        }//End label
                    }//End HStack
                }//End ForEach
                .onDelete { indexes in
                    
                    for index in indexes {
                        deleteItem(items[index])
                        
                    }//End for
                }//End onDelete
            }//End List
            
        }//End VStack
        .padding()
    }
    
    func addItem(){
        //Create item
        let item = DataItem(name: "Test Item")
        //Add item to the data context
        context.insert(item)
    }//End addItem()
    
    
    func deleteItem(_ item: DataItem){
        context.delete(item)
    }//End deleteItem()
    
    
    func updateItem(_ item: DataItem){
        //Edit item data
        item.name = "Updated Test Item"
        //Save the context
        try? context.save()
    }//End updateItem()
    
}

#Preview {
    ContentView()
}
