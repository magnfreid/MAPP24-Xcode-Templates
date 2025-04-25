import SwiftUI

struct ___FILEBASENAME___: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    SwiftUIView()
}

extension ___FILEBASENAME___ {

    class ViewModel: ObservableObject {

    }
}
