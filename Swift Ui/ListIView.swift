//
//  ListIView.swift
//  Swift Ui
//
//  Created by Aitzhan Ramazan on 20.08.2024.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var name = ""
    var year = ""
    var image = ""
    var description = ""
}
struct MovieDetailItem: View {
    var movie: Movie
    var body: some View{
        VStack{
            Image(movie.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Text(movie.name)
                .font(.callout)
                
            Text(movie.year)
                .font(.title)
            Text(movie.description)
                .font(.body)
            
        }
    }
}
struct MovieRow: View{
    var movie: Movie
    var body: some View{
        HStack{
            
            Image(movie.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            VStack(alignment: .center) {
                
                Text(movie.name)
                Text(movie.year)
            }
        }
    }
}

struct ListIView: View {
    var movie = [
        Movie(name: "Oppenheimer", year: "2023", image: "Oppenheimer", description: "This movie is the best"),
        Movie(name: "Avatar", year: "2022", image: "Avatar", description: "JJBCUEBCIBCIUWBEIUCBJWNECIUWBCECBNIWE"),
        Movie(name: "Scream 6", year: "2022", image: "Scream 6", description: "SUPPPPPEEEEEEER"),
        Movie(name: "Godzilla vs Kong", year: "2021", image: "Godzilla vs Kong", description: "A lot of giant animals"),
        Movie(name: "Fast x", year: "2022", image: "Fast x", description: "A lot of cars in this movie")
    ]
    
    var body: some View {
        NavigationView {
            List(movie) { item in
                NavigationLink(destination: MovieDetailItem(movie:item) ){
                        MovieRow(movie: item)
                }
            }
        
        }
    }
}

#Preview {
    ListIView()
}
