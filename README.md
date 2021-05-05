# StickyNoteView

```swift
import SwiftUI
import StickyNoteView

struct StickyNoteSamplesView: View {
    var body: some View {
        Group {
            Text("Hello World!")
                .frame(width: 120, height: 120)
                .background(StickyNoteView())

            Spacer().frame(height: 10)

            Text("Larger sticky note.")
                .frame(width: 200, height: 200)
                .lineLimit(10)
                .fixedSize(horizontal: true, vertical: false)
                .background(StickyNoteView())
        }
    }
}
```
