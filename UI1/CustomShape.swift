//
//  CustomShape.swift
//  UI1
//
//  Created by Aleck David Holly on 2025-04-03.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let cornerRadius: CGFloat = 10
        let startY = rect.minY + rect.height * 0.2 // Start at 20% off minY
        
        // Start at the top-left with a rounded corner
        path.move(to: CGPoint(x: rect.minX + cornerRadius, y: startY))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: startY + cornerRadius),
                          control: CGPoint(x: rect.minX, y: startY))
        
        // Left side
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - cornerRadius))
        path.addQuadCurve(to: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY),
                          control: CGPoint(x: rect.minX, y: rect.maxY))
        
        // Bottom side
        path.addLine(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY - cornerRadius),
                          control: CGPoint(x: rect.maxX, y: rect.maxY))
        
        // Right side
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + cornerRadius))
        path.addQuadCurve(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY),
                          control: CGPoint(x: rect.maxX, y: rect.minY))
        
        
        
        
        
        
        
        
        // Top side (with center cut)
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY + cornerRadius),
                          control: CGPoint(x: rect.midX + cornerRadius, y: rect.minY))

        // Middle part (ensure it's smoothly rounded)
        path.addQuadCurve(to: CGPoint(x: rect.midX * 0.5 + cornerRadius, y: startY),
                          control: CGPoint(x: rect.midX * 0.5, y: startY + cornerRadius))

        
        // Close the path
        path.addLine(to: CGPoint(x: rect.minX + cornerRadius, y: startY))
        
        return path
    }
}

