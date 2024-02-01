import SwiftUI

struct ProductCardView: View {
    
    @ObservedObject var productCardViewModel: ProductCardViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(alignment: .leading) {
                        if productCardViewModel.productCard.priceByCard {
                            ProductByCardIndicatorView()
                        }
                        
                        Image(productCardViewModel.productCard.image)
                            .resizable()
                            .frame(width: 200, height: 250)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        ProductEvaluationView(
                            estimation: productCardViewModel.productCard.estimation,
                            numbrtOfReviews: productCardViewModel.productCard.numberOfReviews
                        )
                        
                        ProductCardTitleView(title: productCardViewModel.productCard.title)
                            .padding(.top, 15)
                        
                        ProductCountryOfOriginView(
                            flagImage: productCardViewModel.productCard.countryOfOrigin.flagImage,
                            country: productCardViewModel.productCard.countryOfOrigin.country
                        )
                        
                        ProductDescriptionView(description: productCardViewModel.productCard.description)
                            .padding(.top, 15)
                        
                        ProductCharacteristicsView(
                            production: productCardViewModel.productCard.production,
                            energyValueСalories: productCardViewModel.productCard.energyValueСalories,
                            energyValueKilojoules: productCardViewModel.productCard.energyValueKilojoules,
                            fats: productCardViewModel.productCard.fats,
                            squirrels: productCardViewModel.productCard.squirrels, 
                            carbohydrates: productCardViewModel.productCard.carbohydrates
                        )
                        .padding(.top, 25)
                        
                        Text("Все характеристки")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.green)
                            .padding(.top, 15)
                        
                        ProductReviewCardsView(
                            reviews: productCardViewModel.productCard.reviews,
                            numberOfAllReviews: productCardViewModel.productCard.numberOfAllReviews
                        ) { }
                        
                        LeaveReviewButton { }
                            .padding(.top, 15)
                    }
                    .padding(.horizontal)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavBarButton(image: "arrow.left") { }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        NavBarButton(image: "doc.plaintext") { }
                        NavBarButton(image: "square.and.arrow.up") { }
                        NavBarButton(image: "heart") { }
                    }
                }
            }
        }
    }
}

#Preview {
    ProductCardView(productCardViewModel: ProductCardViewModel())
}
