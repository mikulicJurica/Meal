import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel: SearchViewModel
    
    var body: some View {
        Text("Search")
            .font(.largeTitle)
    }
}
