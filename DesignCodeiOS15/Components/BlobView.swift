//
//  BlobView.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/5/14.
//

import SwiftUI

struct BlobView: View {
    @State var appear = false
    
    var body: some View {
        TimelineView(.animation) { timeline in
            let now = timeline.date.timeIntervalSinceReferenceDate
            let angle = Angle.degrees(now.remainder(dividingBy: 3) * 120)
            let x = cos(angle.radians)
            let angle2 = Angle.degrees(now.remainder(dividingBy: 6) * 10)
            let x2 = cos(angle2.radians)
            
            Canvas { context, size in
                context.fill(
                    path(in: CGRect(x: 0, y: 0, width: size.width, height: size.height), x: x, x2: x2),
                    with: .linearGradient(
                        Gradient(colors: [.pink, .blue]),
                        startPoint: CGPoint(x: 0, y: 0),
                        endPoint: CGPoint(x: 400, y: 400)
                    )
                )
            }
            .frame(width: 400, height: 400)
            .rotationEffect(.degrees(appear ? 360 : 0))
        }
        .onAppear {
            withAnimation(.linear(duration: 10).repeatForever(autoreverses: true)) {
                appear = true
            }
        }
    }
    
    func path2(in rect: CGRect, x: Double, x2: Double) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.9923*width, y: 0.42593*height))
        path.addCurve(to: CGPoint(x: 0.6355*width*x2, y: height), control1: CGPoint(x: 0.92554*width*x2, y: 0.77749*height*x2), control2: CGPoint(x: 0.91864*width*x2, y: height))
        path.addCurve(to: CGPoint(x: 0.08995*width, y: 0.60171*height), control1: CGPoint(x: 0.35237*width*x, y: height), control2: CGPoint(x: 0.2695*width, y: 0.77304*height))
        path.addCurve(to: CGPoint(x: 0.34086*width, y: 0.06324*height*x), control1: CGPoint(x: -0.0896*width, y: 0.43038*height), control2: CGPoint(x: 0.00248*width, y: 0.23012*height*x))
        path.addCurve(to: CGPoint(x: 0.9923*width, y: 0.42593*height), control1: CGPoint(x: 0.67924*width, y: -0.10364*height*x), control2: CGPoint(x: 1.05906*width, y: 0.07436*height*x2))
        path.closeSubpath()
        return path
    }
    
    func path(in rect: CGRect, x: Double, x2: Double) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.60405*width, y: 0.14505*height))
        path.addLine(to: CGPoint(x: 0.60405*width, y: 0.30045*height))
        path.addLine(to: CGPoint(x: 0.51487*width, y: 0.21081*height))
        path.addLine(to: CGPoint(x: 0.39595*width, y: 0.44369*height))
        path.addLine(to: CGPoint(x: 0.47703*width, y: 0))
        path.addLine(to: CGPoint(x: 0.60405*width, y: 0.14505*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.39595*width, y: 0.85496*height))
        path.addLine(to: CGPoint(x: 0.39595*width, y: 0.69955*height))
        path.addLine(to: CGPoint(x: 0.48513*width, y: 0.78919*height))
        path.addLine(to: CGPoint(x: 0.60405*width, y: 0.55631*height))
        path.addLine(to: CGPoint(x: 0.52342*width, y: height))
        path.addLine(to: CGPoint(x: 0.39595*width, y: 0.85496*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.85496*width, y: 0.6045*height))
        path.addLine(to: CGPoint(x: 0.69955*width, y: 0.6045*height))
        path.addLine(to: CGPoint(x: 0.78919*width, y: 0.51487*height))
        path.addLine(to: CGPoint(x: 0.55631*width, y: 0.39595*height))
        path.addLine(to: CGPoint(x: width, y: 0.47703*height))
        path.addLine(to: CGPoint(x: 0.85496*width, y: 0.6045*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.14504*width, y: 0.39595*height))
        path.addLine(to: CGPoint(x: 0.30045*width, y: 0.39595*height))
        path.addLine(to: CGPoint(x: 0.21081*width, y: 0.48559*height))
        path.addLine(to: CGPoint(x: 0.44369*width, y: 0.60405*height))
        path.addLine(to: CGPoint(x: 0, y: 0.52342*height))
        path.addLine(to: CGPoint(x: 0.14504*width, y: 0.39595*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.82477*width, y: 0.32252*height))
        path.addLine(to: CGPoint(x: 0.71487*width, y: 0.43243*height))
        path.addLine(to: CGPoint(x: 0.71487*width, y: 0.30586*height))
        path.addLine(to: CGPoint(x: 0.46622*width, y: 0.38649*height))
        path.addLine(to: CGPoint(x: 0.83694*width, y: 0.13018*height))
        path.addLine(to: CGPoint(x: 0.82477*width, y: 0.32252*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.17523*width, y: 0.67748*height))
        path.addLine(to: CGPoint(x: 0.28513*width, y: 0.56757*height))
        path.addLine(to: CGPoint(x: 0.28513*width, y: 0.69414*height))
        path.addLine(to: CGPoint(x: 0.53378*width, y: 0.61351*height))
        path.addLine(to: CGPoint(x: 0.16306*width, y: 0.86982*height))
        path.addLine(to: CGPoint(x: 0.17523*width, y: 0.67748*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.67703*width, y: 0.82478*height))
        path.addLine(to: CGPoint(x: 0.56757*width, y: 0.71487*height))
        path.addLine(to: CGPoint(x: 0.69414*width, y: 0.71487*height))
        path.addLine(to: CGPoint(x: 0.61351*width, y: 0.46622*height))
        path.addLine(to: CGPoint(x: 0.86982*width, y: 0.83739*height))
        path.addLine(to: CGPoint(x: 0.67703*width, y: 0.82478*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.32252*width, y: 0.17523*height))
        path.addLine(to: CGPoint(x: 0.43243*width, y: 0.28514*height))
        path.addLine(to: CGPoint(x: 0.30586*width, y: 0.28514*height))
        path.addLine(to: CGPoint(x: 0.38649*width, y: 0.53378*height))
        path.addLine(to: CGPoint(x: 0.12973*width, y: 0.16306*height))
        path.addLine(to: CGPoint(x: 0.32252*width, y: 0.17523*height))
        path.closeSubpath()
        return path
    }
}

struct BlobView_Previews: PreviewProvider {
    static var previews: some View {
        BlobView()
    }
}
