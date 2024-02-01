import SwiftUI

struct ProductCharacteristicsRowView: View {
    
    let title: String
    let value: String
    
    var body: some View {
        HStack(spacing: 4) {
            Text(title)

            Spacer()
                
            Line()
                .stroke(style: StrokeStyle(
                    lineWidth: 2,
                    lineCap: .round,
                    dash: [0, 8])
                )
                .frame(height: 1)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text(value)
                .multilineTextAlignment(.trailing)
        }
    }
}


#Preview {
    ProductCharacteristicsRowView(
        title: "Производство",
        value: "Россия, Кпаснодарский край"
    )
}
