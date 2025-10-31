import SwiftUI

extension View {
    func modifier(@ViewBuilder _ closure: (Self) -> some View) -> some View {
        closure(self)
    }
}

extension ToolbarContent {
    func modifier(@ToolbarContentBuilder _ closure: (Self) -> some ToolbarContent) -> some ToolbarContent {
        closure(self)
    }
}
