import SwiftUI

public struct StickyNoteView: View {
    @State var color: Color
    
    public init() {
        self.color = Color.yellow
    }
    
    public init(color: Color?) {
        self.color = color ?? Color.yellow
    }
    
    public var body: some View {
        GeometryReader { geometry in
            ZStack {
                Path { path in
                    let w = geometry.size.width
                    let h = geometry.size.height
                    let m = min(w/5, h/5)
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: 0, y: h))
                    path.addLine(to: CGPoint(x: w-m, y: h))
                    path.addLine(to: CGPoint(x: w, y: h-m))
                    path.addLine(to: CGPoint(x: w, y: 0))
                    path.addLine(to: CGPoint(x: 0, y: 0))
                }
                .fill(self.color)
                Path { path in
                    let w = geometry.size.width
                    let h = geometry.size.height
                    let m = min(w/5, h/5)
                    path.move(to: CGPoint(x: w-m, y: h))
                    path.addLine(to: CGPoint(x: w-m, y: h-m))
                    path.addLine(to: CGPoint(x: w, y: h-m))
                    path.addLine(to: CGPoint(x: w-m, y: h))
                }
                .fill(Color.black).opacity(0.4)
            }
        }
    }
}


struct StickyNoteView_Previews: PreviewProvider {
    static var previews: some View {
        StickyNoteView()
    }
}
