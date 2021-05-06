# StickyNoteView

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)

<img src="./image.png" width="160px" alt="Sticky Note View Sample">

```swift
import SwiftUI
import StickyNoteView

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello World!")
                    .frame(width: 120, height: 120)
                    .background(StickyNoteView(color: Color.red))
                Spacer().frame(width: 10)
                Text("Hi,\nSticky note.")
                    .frame(width: 120, height: 120)
                    .background(StickyNoteView())
            }
            
            Spacer().frame(height: 10)
            
            Text("Larger sticky note.")
                .frame(width: 250, height: 250)
                .lineLimit(10)
                .fixedSize(horizontal: true, vertical: false)
                .background(StickyNoteView())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```
