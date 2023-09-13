//
//  ContentView.swift
//  ToDo
//
//  Created by 鷹觜恭平 on 2023/09/13.
//

import SwiftUI

struct ContentView: View {
    @State var taskData = [(title: "ジョギング", completed: false),
                           (title: "花に水をやる", completed: false),
                           (title: "部屋の掃除をする", completed: false),
                           (title: "本を読む", completed: false),
                           (title: "トイレ掃除", completed: false)]
    
    var body: some View {
        NavigationStack {
            List(0..<taskData.count, id:\.self) { index in
                Button {
                    taskData[index].completed.toggle()
                } label: {
                    HStack {
                     
                        Image(systemName: taskData[index].completed == true ? "checkmark.circle.fill" : "circle")
                        
                        Text(taskData[index].title)
                    }
                }
                .foregroundColor(.primary)
            }
            .navigationTitle("ToDoリスト")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
