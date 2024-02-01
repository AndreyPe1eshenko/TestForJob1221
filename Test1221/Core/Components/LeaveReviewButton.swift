import SwiftUI

struct LeaveReviewButton: View {
    
    let action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            Text("Оставить отзыв")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity)
                .background(
                    Capsule()
                        .strokeBorder(lineWidth: 2)
                )
                .foregroundColor(.green)
        }
    }
}

#Preview {
    LeaveReviewButton {
        
    }
}
