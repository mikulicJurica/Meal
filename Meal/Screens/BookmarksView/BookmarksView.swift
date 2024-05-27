import SwiftUI

struct BookmarksView: View {
    @ObservedObject var viewModel: BookmarksViewModel
    
    var body: some View {
        Text("Bookmarks")
            .font(.largeTitle)
    }
}
