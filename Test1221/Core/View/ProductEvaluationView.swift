import SwiftUI

struct ProductEvaluationView: View {
    
    let estimation: String
    let numbrtOfReviews: Int
    
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            
            Text("\(estimation)")
                .fontWeight(.semibold)
            
            Text("|  \(numbrtOfReviews) отзывов")
                .foregroundColor(.gray)
        }
        .font(.system(size: 17))
    }
}

#Preview {
    ProductEvaluationView(estimation: "4.1", numbrtOfReviews: 19)
}
