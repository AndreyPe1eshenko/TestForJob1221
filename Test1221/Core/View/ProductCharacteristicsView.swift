import SwiftUI

struct ProductCharacteristicsView: View {
    
    let production: String
    let energyValueСalories: String
    let energyValueKilojoules: String
    let fats: String
    let squirrels: String
    let carbohydrates: String
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Основные храктеристики")
                .font(.system(size: 17))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ProductCharacteristicsRowView(
                title: "Производство",
                value: production
            )
            
            ProductCharacteristicsRowView(
                title: "Энергетическая ценность, ккал/100г",
                value: "\(energyValueСalories) ккал, \(energyValueKilojoules) кДж"
            )
            
            ProductCharacteristicsRowView(
                title: "Жиры/100г",
                value: "\(fats)г"
            )
            
            ProductCharacteristicsRowView(
                title: "Белки/100г",
                value: "\(fats)г"
            )
            
            ProductCharacteristicsRowView(
                title: "Углеводы/100г",
                value: "\(squirrels)г"
            )
        }
        .font(.system(size: 14))
    }
}

#Preview {
    ProductCharacteristicsView(
        production: "Россия, Кпаснодарский край",
        energyValueСalories: "25",
        energyValueKilojoules: "105",
        fats: "1,0",
        squirrels: "3,3", 
        carbohydrates: "0,5"
    )
}
