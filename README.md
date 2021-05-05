# StickyNoteView

```swift
import SwiftUI
import StickyNoteView

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World!")
                .frame(width: 120, height: 120)
                .background(StickyNoteView())
            
            Spacer().frame(height: 10)
            
            Text("Larger sticky note.")
                .frame(width: 240, height: 240)
                .lineLimit(10)
                .fixedSize(horizontal: true, vertical: false)
                .background(StickyNoteView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```
