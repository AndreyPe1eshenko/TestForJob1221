import SwiftUI

struct ProductReviewItemView: View {
    
    let review: Review
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(review.name)
                .fontWeight(.bold)
            
            Text(review.date)
                .foregroundColor(.gray)
            
            HStack {
                ForEach(1...review.estimation, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                
                ForEach(1...(5 - review.estimation), id: \.self) { _ in
                    Image(systemName: "star")
                        .foregroundColor(.gray.opacity(0.5))
                }
            }
            
            Text(review.description)
                .font(.system(size: 15))
        }
        .padding(10)
        .padding(.top, 5)
        .frame(width: 250)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(lineWidth: 1)
                .foregroundColor(.gray.opacity(0.3))
        )
    }
}

#Preview {
    ProductReviewItemView(review: 
        Review(
            id: 1,
            name: "Александр В.",
            date: "7 мая 2021",
            estimation: 4,
            description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими!"
        )
    )
}
