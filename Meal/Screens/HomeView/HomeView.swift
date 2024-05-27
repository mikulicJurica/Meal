import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            Image(systemName: "fork.knife.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(viewModel.name)
        }
        .animation(.easeInOut, value: true)
    }
}

#Preview {
    HomeView(
        viewModel: HomeViewModel(
            user: User(
                id: 1,
                name: "Jurica",
                email: "jurica.mikulic18@gmail.com"
            )
        )
    )
}
