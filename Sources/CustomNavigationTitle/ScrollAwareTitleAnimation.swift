import SwiftUI

extension EnvironmentValues {
    @Entry var scrollAwareTitleAnimation: Animation = .easeIn(duration: 0.15)
}

extension View {
    public func scrollAwareTitleAnimation(_ animation: Animation) -> some View {
        environment(\.scrollAwareTitleAnimation, animation)
    }
}
