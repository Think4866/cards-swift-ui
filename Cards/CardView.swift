//
//  CardView.swift
//  Cards
//
//  Created by Lopen on 9/27/23.
//

import SwiftUI

struct CardView: View {
    var card: Card
    @State var isBackVisible = false
    var degrees: Double {
        isBackVisible ? 180 : 0
    }
    var body: some View {
            ZStack(alignment: .topLeading) {
                Group {
                    Text(card.back)
                        .scaleEffect(x: -1)
                        .opacity(isBackVisible ? 1 : 0)
                    Text(card.front)
                        .opacity(isBackVisible ? 0 : 1)
                }
                .font(.system(size: 24))
                .bold()
                .multilineTextAlignment(.center)
                .padding(.top)

                Button {
                    withAnimation {
                        isBackVisible.toggle()
                    }
                } label: {
                    Image(systemName: "arrow.left.arrow.right.circle.fill")
                        .font(.system(size: 36))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)

            }
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(isBackVisible ? Color.clear : Color.orange)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
            .rotation3DEffect(
                .degrees(degrees),
                axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
            )
            .aspectRatio(4/3, contentMode: .fit)
        }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(front: "What is 7+7", back: "14"))
        CardView(card: Card(front: "What is the airspeed velocity of an unladen swallow?", back: "African or European?"))
    }
}

#Preview {
    CardView(card: Card(front: "What is 7+7", back: "14"))
}
