//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Movie {
    let movieName: String
    let description: String
    let artworkUrl100: URL
    let voteAVG: String
    let voteCount: String
    let popularity: String
} 

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Movie {

    /// An array of mock tracks
    static var mockMovies: [Movie]  = [
        Movie(movieName: "A Man Called Otto",
              description: "Otto is a grump who's given up on life following the loss of his wife and wants to end it all. When a young family moves in nearby, he meets his match in quick-witted Marisol, leading to a friendship that will turn his world around.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BNzg3OTEzMTgtYWU0OC00YTI0LWIxOTAtNmRkNTc0Nzg2YWU1XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_SX300.jpg")!,
              voteAVG: "2.5",
              voteCount: "25",
              popularity: "2"),
        Movie(movieName: "Die Hart",
              description: "Follows a fictionalized version of Kevin Hart, as he tries to become an action movie star. He attends a school run by Ron Wilcox, where he attempts to learn the ropes on how to become one of the industry's most coveted action stars.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BZmJiMjQwM2UtYTY2YS00ZTk2LTgzNTAtNDYxOTA1ZGJjNWViXkEyXkFqcGdeQXVyMTE5OTM1MjU3._V1_SX300.jpg")!,
              voteAVG: "6.3",
              voteCount: "25",
              popularity: "7"),
        Movie(movieName: "Black Panther",
              description: "T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_SX300.jpg")!,
              voteAVG: "9.8",
              voteCount: "790,000",
              popularity: "10"),
        Movie(movieName: "Puss in Boots: The Last Wish",
              description: "When Puss in Boots discovers that his passion for adventure has taken its toll and he has burned through eight of his nine lives, he launches an epic journey to restore them by finding the mythical Last Wish.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_SX300.jpg")!,
              voteAVG: "8",
              voteCount: "1000",
              popularity: "8"),
        Movie(movieName: "Eternal Sunshine of the Spotless Mind",
              description: "When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories for ever.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_SX300.jpg")!,
              voteAVG: "10",
              voteCount: "1M+",
              popularity: "10"),
        Movie(movieName: "How I Met Your Mother",
              description: "A father recounts to his children - through a series of flashbacks - the journey he and his four best friends took leading up to him meeting their mother",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BNjg1MDQ5MjQ2N15BMl5BanBnXkFtZTYwNjI5NjA3._V1_SX300.jpg")!,
              voteAVG: "10",
              voteCount: "2M+",
              popularity: "10"),
        Movie(movieName: "Criminal Minds",
              description: "A group of criminal profilers who work for the FBI as members of its Behavioral Analysis Unit (BAU) using behavioral analysis and profiling to help investigate crimes and find the suspect known as the unsub.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BZWVjZWUyMzUtMGRiMS00MzhkLWI5NTQtYjBmZWVlZThjZjFkXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_SX300.jpg")!,
              voteAVG: "9",
              voteCount: "25",
              popularity: "2"),
        Movie(movieName: "Friends",
              description: "Follows the personal and professional lives of six twenty to thirty year-old friends living in the Manhattan borough of New York City.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BNDVkYjU0MzctMWRmZi00NTkxLTgwZWEtOWVhYjZlYjllYmU4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg")!,
              voteAVG: "2.5",
              voteCount: "25",
              popularity: "2"),
        Movie(movieName: "Silver Hawk",
              description: "Lulu Wong lives a double life - part urban social butterfly, part vigilante superhero. Armed with ancient fighting techniques and high tech hardware, Lulu is a beautiful masked millionaire battling to defeat a greedy tyrant.",
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BNjVkZGYyNDAtYzhmMC00MTRjLWE2ZWItYjU4NjcxY2ZhYjMxXkEyXkFqcGdeQXVyMjQwMjk0NjI@._V1_SX300.jpg")!,
              voteAVG: "2.5",
              voteCount: "25",
              popularity: "2"),
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
