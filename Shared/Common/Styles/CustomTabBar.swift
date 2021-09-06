import SwiftUI

extension UIApplication {
    var key: UIWindow? {
        connectedScenes
            .map { $0 as? UIWindowScene }
            .compactMap { $0 }
            .first?
            .windows
            .filter(\.isKeyWindow)
            .first
    }
}

extension UIView {
    func allSubviews() -> [UIView] {
        var subs = subviews
        for subview in subviews {
            let rec = subview.allSubviews()
            subs.append(contentsOf: rec)
        }
        return subs
    }
}

enum TabBarModifier {
    static func showTabBar() {
        UIApplication.shared.key?.allSubviews().forEach { subView in
            if let view = subView as? UITabBar {
                view.isHidden = false
            }
        }
    }

    static func hideTabBar() {
        UIApplication.shared.key?.allSubviews().forEach { subView in
            if let view = subView as? UITabBar {
                view.isHidden = true
            }
        }
    }
}

struct ShowTabBar: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.zero).onAppear {
            TabBarModifier.showTabBar()
        }
    }
}

struct HiddenTabBar: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.zero).onAppear {
            TabBarModifier.hideTabBar()
        }
    }
}

extension View {
    func showTabBar() -> some View {
        modifier(ShowTabBar())
    }

    func hiddenTabBar() -> some View {
        modifier(HiddenTabBar())
    }
}
