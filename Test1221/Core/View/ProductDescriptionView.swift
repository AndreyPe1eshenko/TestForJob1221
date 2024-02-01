import SwiftUI

struct ProductDescriptionView: View {
    
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            Text("Описание")
                .fontWeight(.bold)
            
            Text(description)
        }
    }
}

#Preview {
    ProductDescriptionView(description: "Флавоноиды липового цвета обладают противоспалительным действием, способствует укреплению стенки сосудов.")
}
