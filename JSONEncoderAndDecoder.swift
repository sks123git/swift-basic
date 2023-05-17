// Program for JSON Encoder and decoder
import Foundation
struct Movie: Codable {
    var title: String
    var year: Int 
}

let movie = Movie(title: "The Shawshank Redemption", year: 1994)
let jsonEncoder = JSONEncoder()
let jsonData = try jsonEncoder.encode(movie)
let jsonString = String(data: jsonData, encoding: String.Encoding.utf8)
print(jsonString)

if let dataJson = jsonString?.data(using: .utf8) {
    let movie1 = try JSONDecoder().decode(Movie.self, from: dataJson)
    print(movie1)
}
