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
                    path2(in: CGRect(x: 0, y: 0, width: size.width, height: size.height), x: x, x2: x2),
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
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.13096*width, y: 0.05293*height))
        path.addLine(to: CGPoint(x: 0.13096*width, y: 0.08662*height))
        path.addLine(to: CGPoint(x: 0.11162*width, y: 0.06719*height))
        path.addLine(to: CGPoint(x: 0.08584*width, y: 0.11768*height))
        path.addLine(to: CGPoint(x: 0.10342*width, y: 0.02148*height))
        path.addLine(to: CGPoint(x: 0.13096*width, y: 0.05293*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.08584*width, y: 0.20684*height))
        path.addLine(to: CGPoint(x: 0.08584*width, y: 0.17314*height))
        path.addLine(to: CGPoint(x: 0.10518*width, y: 0.19258*height))
        path.addLine(to: CGPoint(x: 0.13096*width, y: 0.14209*height))
        path.addLine(to: CGPoint(x: 0.11348*width, y: 0.23828*height))
        path.addLine(to: CGPoint(x: 0.08584*width, y: 0.20684*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.18535*width, y: 0.15254*height))
        path.addLine(to: CGPoint(x: 0.15166*width, y: 0.15254*height))
        path.addLine(to: CGPoint(x: 0.17109*width, y: 0.13311*height))
        path.addLine(to: CGPoint(x: 0.12061*width, y: 0.10732*height))
        path.addLine(to: CGPoint(x: 0.2168*width, y: 0.1249*height))
        path.addLine(to: CGPoint(x: 0.18535*width, y: 0.15254*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.03145*width, y: 0.10732*height))
        path.addLine(to: CGPoint(x: 0.06514*width, y: 0.10732*height))
        path.addLine(to: CGPoint(x: 0.0457*width, y: 0.12676*height))
        path.addLine(to: CGPoint(x: 0.09619*width, y: 0.15244*height))
        path.addLine(to: CGPoint(x: 0, y: 0.13496*height))
        path.addLine(to: CGPoint(x: 0.03145*width, y: 0.10732*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.17881*width, y: 0.09141*height))
        path.addLine(to: CGPoint(x: 0.15498*width, y: 0.11523*height))
        path.addLine(to: CGPoint(x: 0.15498*width, y: 0.08779*height))
        path.addLine(to: CGPoint(x: 0.10107*width, y: 0.10527*height))
        path.addLine(to: CGPoint(x: 0.18145*width, y: 0.04971*height))
        path.addLine(to: CGPoint(x: 0.17881*width, y: 0.09141*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.03799*width, y: 0.16836*height))
        path.addLine(to: CGPoint(x: 0.06182*width, y: 0.14453*height))
        path.addLine(to: CGPoint(x: 0.06182*width, y: 0.17197*height))
        path.addLine(to: CGPoint(x: 0.11572*width, y: 0.15449*height))
        path.addLine(to: CGPoint(x: 0.03535*width, y: 0.21006*height))
        path.addLine(to: CGPoint(x: 0.03799*width, y: 0.16836*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.14678*width, y: 0.20029*height))
        path.addLine(to: CGPoint(x: 0.12305*width, y: 0.17646*height))
        path.addLine(to: CGPoint(x: 0.15049*width, y: 0.17646*height))
        path.addLine(to: CGPoint(x: 0.13301*width, y: 0.12256*height))
        path.addLine(to: CGPoint(x: 0.18857*width, y: 0.20303*height))
        path.addLine(to: CGPoint(x: 0.14678*width, y: 0.20029*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.06992*width, y: 0.05947*height))
        path.addLine(to: CGPoint(x: 0.09375*width, y: 0.0833*height))
        path.addLine(to: CGPoint(x: 0.06631*width, y: 0.0833*height))
        path.addLine(to: CGPoint(x: 0.08379*width, y: 0.13721*height))
        path.addLine(to: CGPoint(x: 0.02813*width, y: 0.05684*height))
        path.addLine(to: CGPoint(x: 0.06992*width, y: 0.05947*height))
        path.closeSubpath()
        return path
    }
}

struct BlobView_Previews: PreviewProvider {
    static var previews: some View {
        BlobView()
    }
}
