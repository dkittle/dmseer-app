import SwiftUI

func fontSetup() {
    let cfURL = Bundle.main.url(forResource: "Bitter", withExtension: "ttf")! as CFURL
    CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
//    var fontNames: [[AnyObject]] = []
//    for name in UIFont.familyNames {
//        print(name)
//        fontNames.append(UIFont.fontNames(forFamilyName: name) as [AnyObject])
//    }
//    let font = UIFont(name: "Bitter", size:  24.0)
}

//extension Font {
//    static let titleFont = Font.custom("Bitter", size: Font.TextStyle.title.size, relativeTo: .title)
//    static let mediumFont = Font.custom("Bitter", size: Font.TextStyle.subheadline.size, relativeTo: .caption)
//    static let mediumSmallFont = Font.custom("Bitter", size: Font.TextStyle.footnote.size, relativeTo: .caption)
//    static let smallFont = Font.custom("Bitter", size: Font.TextStyle.caption.size, relativeTo: .caption)
//    static let verySmallFont = Font.custom("Bitter", size: Font.TextStyle.caption2.size, relativeTo: .caption)
//}
//
//extension Font.TextStyle {
//    var size: CGFloat {
//        switch self {
//        case .largeTitle: return 60
//        case .title: return 48
//        case .title2: return 34
//        case .title3: return 24
//        case .headline, .body: return 18
//        case .subheadline, .callout: return 16
//        case .footnote: return 14
//        case .caption: return 12
//        case .caption2: return 10
//        @unknown default:
//            return 8
//        }
//    }
//}

extension Font {
    static var brand = Font
        .custom("Bitter", size: UIFont.preferredFont(
            forTextStyle: .body
        ).pointSize)

    static var brandTitle1 = Font
        .custom("Bitter", size: UIFont.preferredFont(
            forTextStyle: .title1
        ).pointSize).weight(.bold)
    
    static var brandTitle2 = Font
        .custom("Bitter", size: UIFont.preferredFont(
            forTextStyle: .title2
        ).pointSize).weight(.bold)

    static var brandTitle3 = Font
        .custom("Bitter", size: UIFont.preferredFont(
            forTextStyle: .title3
        ).pointSize).weight(.bold)

    
//    static func setUp() {
//        let appearance = UINavigationBar.appearance()
//        let largeTitle = UIFont.preferredFont(
//            forTextStyle: .largeTitle
//        ).pointSize
//        let body = UIFont.preferredFont(
//            forTextStyle: .body
//        ).pointSize
//        let caption1 = UIFont.preferredFont(
//            forTextStyle: .caption1
//        ).pointSize
//
//        print(UIFont.preferredFont(forTextStyle: .largeTitle))
//        appearance.largeTitleTextAttributes = [
//            .font : UIFont(
//                name: "Bitter", size: largeTitle
//            )!
//        ]
//        appearance.titleTextAttributes = [
//            .font : UIFont(
//                name: "Bitter", size: body
//            )!
//        ]
//
//        UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont(name: "Bitter", size: caption1)!], for: .normal)
//        UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont(name: "Bitter", size: caption1)!], for: .selected)
//    }
}

//func Text(_ content: any StringProtocol) -> SwiftUI.Text {
//    .init(content).font(.brand)
//}
//
//func TextField(_ titleKey: LocalizedStringKey, text: Binding<String>, axis: Axis = .horizontal) -> some View {
//    SwiftUI.TextField(titleKey, text: text, axis: axis).font(.brand)
//}
//
