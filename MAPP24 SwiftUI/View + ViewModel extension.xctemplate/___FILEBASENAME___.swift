import SwiftUI

struct ___FILEBASENAME___: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    ___FILEBASENAME___()
}

extension ___FILEBASENAME___ {

    class ViewModel: ObservableObject {

    }
}
