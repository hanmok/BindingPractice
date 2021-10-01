import SwiftUI

struct SelectionView: View {
    
    @Binding var isNight: Bool
    @Binding var showingSelectionView: Bool
    
    var body: some View {
        VStack {
            Text("This is my ChangeTimeOfDayView!")
                .padding(.bottom, 200)
            
            Button {
                isNight = true
                showingSelectionView = false
            } label: {
                Label("Make Night", systemImage: "moon.stars.fill")
                    .foregroundColor(.white)
            }
            .frame(width: 300, height: 60)
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(12)
            .padding(.vertical, 10)
            
            
            Button {
                isNight = false
                showingSelectionView = false
            } label: {
                Label("Make Day", systemImage: "cloud.sun.fill")
            }
            .frame(width: 300, height: 60)
            .foregroundColor(.black)
            .background(Color.green)
            .cornerRadius(12)
        }
    }
}

