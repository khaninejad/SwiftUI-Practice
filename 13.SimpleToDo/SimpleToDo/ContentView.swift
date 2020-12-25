//
//  ContentView.swift
//  SimpleToDo
//
//  Created by Payam on 12/25/20.
//

import SwiftUI

struct ContentView: View {
    @State var tasks = [Task]()
    private func addTask(){
        self.tasks.append(Task(name: "Hello"))
    }
    var body: some View {
        List {
            Button(action: addTask) {
                Text("Add New Item")
            }
            
            ForEach(tasks){ task in
                Text(task.name)
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
