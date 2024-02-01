import SwiftUI

struct ProductReviewCardsView: View {
    
    let reviews: [Review]
    let numberOfAllReviews: Int
    let action: () -> ()
    
    var body: some View {
        
        HStack {
            Text("Отзывы")
            
            Spacer()
            
            Button {
                action()
            } label: {
                Text("Все \(numberOfAllReviews)")
                    .foregroundColor(.green)
            }
        }
        .font(.system(size: 20, weight: .bold, design: .rounded))
        .padding(.top, 20)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 25) {
                ForEach(reviews) { review in
                    ProductReviewItemView(review: review)
                }
            }
        }
    }
}

#Preview {
    ProductReviewCardsView(
        reviews: [
            Review(
                id: 1,
                name: "Александр В.",
                date: "7 мая 2021",
                estimation: 4,
                description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими!"
            ),
            Review(
                id: 1,
                name: "Александр В.",
                date: "7 мая 2021",
                estimation: 4,
                description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими!"
            )
        ],
        numberOfAllReviews: 152
    ) {
        
    }
}
