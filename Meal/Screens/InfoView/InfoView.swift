import SwiftUI

struct InfoView: View {
    @ObservedObject var viewModel: InfoViewModel
    
    var body: some View {
        Text("Info")
            .font(.largeTitle)
    }
}
