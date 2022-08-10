//
//  ContentView.swift
//  Nav_App
//
//  Created by Frankie Barrios on 7/7/22.
//

import SwiftUI

@available(iOS 16.0, *)
struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("People") {
                    ForEach(Person.examples) { person in
                        NavigationLink(value: person) {
                            VStack(alignment: .leading) {
                                Text(person.name)
                                
                                Text(person.age, format: .number)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
                
                Section("Articles") {
                    ForEach(Article.examples) { article in
                        NavigationLink(value: article) {
                            VStack(alignment: .leading) {
                                Text(article.title)
                                    .font(.headline)
                                
                                Text(article.author)
                                    .font(.subheadline)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Person.self) { person in
                Text(person.name)
                    .font(.headline)
            }
            .navigationDestination(for: Article.self) { article in
                VStack {
                    Text(article.title)
                    
                    Button("Pop to root") {
                        path.removeLast(path.count)
                    }
                    
                    Button("Navigate to person") {
                        path.append(Person.examples[1])
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            ContentView()
        } else {
            // Fallback on earlier versions
        }
    }
}
