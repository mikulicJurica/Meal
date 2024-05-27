import SwiftUI

class AppCoordinator {
    
    func start() -> some View {
        let searchViewModel = SearchViewModel()
        let homeViewModel = HomeViewModel(user: User(id: 1, name: "Jurica", email: "jurica.mikulic18@gmail.com"))
        let bookmarksViewModel = BookmarksViewModel()
        let infoViewModel = InfoViewModel()
        
        let searchView = SearchView(viewModel: searchViewModel)
        let homeView = HomeView(viewModel: homeViewModel)
        let bookmarksView = BookmarksView(viewModel: bookmarksViewModel)
        let infoView = InfoView(viewModel: infoViewModel)
        
        let tabView = TabView(
            selection: .constant(2),
            content:  {
                searchView
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    .tag(1)
                
                homeView
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    .tag(2)
                
                bookmarksView
                    .tabItem {
                        Image(systemName: "bookmark")
                        Text("Bookmarks")
                    }
                    .tag(3)
                
                infoView
                    .tabItem {
                        Image(systemName: "info")
                        Text("Info")
                    }
                    .tag(4)
            }
        )
        
        return tabView
    }
}
