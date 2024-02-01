import Foundation

struct ProductСardModel: Identifiable {
    let id: Int
    let priceByCard: Bool
    let image: String
    let estimation: String
    let numberOfReviews: Int
    let title: String
    let countryOfOrigin: Origin
    let description: String
    let production: String
    let energyValueСalories: String
    let energyValueKilojoules: String
    let fats: String
    let squirrels: String
    let carbohydrates: String
    let numberOfAllReviews: Int
    let reviews: [Review]
    let pricePerKilogram: String
    let pricePerPiece: String
}

struct Origin {
    let flagImage: String
    let country: String
}

struct Review: Identifiable {
    let id: Int
    let name: String
    let date: String
    let estimation: Int
    let description: String
}

extension ProductСardModel {
    static let MOCK_CARD = ProductСardModel(
        id: 1,
        priceByCard: true,
        image: "tea",
        estimation: "4.1",
        numberOfReviews: 19,
        title: "Добвка \"Липа\" к чаю 200 г",
        countryOfOrigin:
            Origin(
                flagImage: "flag",
                country: "Испания, Риоха"
            ),
        description: "Флавоноиды липового цвета обладают противоспалительным действием, способствует укреплению стенки сосудов.",
        production: "Россия, Краснодарский край",
        energyValueСalories: "25",
        energyValueKilojoules: "105",
        fats: "0,1",
        squirrels: "1,3",
        carbohydrates: "3,3",
        numberOfAllReviews: 152,
        reviews: [
            Review(
                id: 1,
                name: "Александр В.",
                date: "7 мая 2021",
                estimation: 4,
                description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими!"
            ),
            Review(
                id: 2,
                name: "Александр В.",
                date: "7 мая 2021",
                estimation: 4,
                description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими!"
            )
        ],
        pricePerKilogram: "55.9",
        pricePerPiece: "120.0"
    )
}
