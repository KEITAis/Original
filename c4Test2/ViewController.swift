//
//  ViewController.swift
//  c4Test2
//
//  Created by 伊勢佳汰 on 2017/11/11.
//  Copyright © 2017年 伊勢佳汰. All rights reserved.
//

import UIKit
import C4

class ViewController: CanvasController{
    
    var viewWidth:Double = 0.0
    var viewHeight:Double = 0.0
    
    override func setup() {
        
        viewWidth = Double(self.view.frame.width)/3
        viewHeight = Double(self.view.frame.height)/3
        
        
        canvas.addTapGestureRecognizer {(locations, center, tap) in
            if self.viewWidth > center.x{
                if self.viewHeight < center.y && 2*self.viewHeight > center.y{
                    self.sika5()
                }else if  self.viewHeight < center.y{
                    self.maru4()
                }else if 2*self.viewHeight > center.y{
                    self.sika6()
                }
            }
            if self.viewWidth < center.x && 2*self.viewWidth > center.x{
                if self.viewHeight < center.y && 2*self.viewHeight > center.y{
                    self.maru6()
                }else if self.viewHeight < center.y{
                    self.maru５()
                }else if 2*self.viewHeight > center.y{
                    self.maru7()
                }
            }
            if 2*self.viewWidth < center.x{
                if self.viewHeight < center.y && 2*self.viewHeight > center.y{
                    self.maru8()
                }else if self.viewHeight < center.y{
                    self.maru9()
                }else if self.viewHeight > center.y{
                    self.maru10()
                }}}}
    
    func maru10(){
        
        for i in 0...5 {
            ShapeLayer.disableActions = true
            let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
            let circle = Circle(center:  point, radius: 15)
            
            circle.fillColor = C4Grey
            circle.strokeColor = Color.init(red: 100, green: 190, blue:100, alpha: 70)
            self.canvas.add(circle)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 0.70) {
                circle.opacity = 0.0
                circle.transform.scale(20, 20)
            }
            a.addCompletionObserver {
                circle.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }}
    
    
    func maru9(){
        
        for i in 0...5 {
            ShapeLayer.disableActions = true
            let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
            let circle = Circle(center:  point, radius: 15)
            
            circle.fillColor = C4Grey
            circle.strokeColor = Color.init(red: 90, green: 51, blue:100, alpha: 70)
            self.canvas.add(circle)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 0.70) {
                circle.opacity = 0.0
                circle.transform.scale(20, 20)
            }
            a.addCompletionObserver {
                circle.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }}
    
    
    func maru8(){
        
        for i in 0...5 {
            ShapeLayer.disableActions = true
            let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
            let circle = Circle(center:  point, radius: 15)
            
            circle.fillColor = C4Grey
            circle.strokeColor = Color.init(red: 100, green: 0, blue:200, alpha: 70)
            self.canvas.add(circle)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 0.70) {
                circle.opacity = 0.0
                circle.transform.scale(20, 20)
            }
            a.addCompletionObserver {
                circle.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }}
    
    
    func maru7(){
        
        for i in 0...5 {
            ShapeLayer.disableActions = true
            let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
            let circle = Circle(center:  point, radius: 15)
            
            circle.fillColor = C4Grey
            circle.strokeColor = Color.init(red: 100, green: 0, blue:100, alpha: 70)
            self.canvas.add(circle)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 0.70) {
                circle.opacity = 0.0
                circle.transform.scale(20, 20)
            }
            a.addCompletionObserver {
                circle.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }}
    
    func maru6(){
        
        for i in 0...5 {
            ShapeLayer.disableActions = true
            let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
            let circle = Circle(center:  point, radius: 15)
            
            circle.fillColor = C4Grey
            circle.strokeColor = Color.init(red: 200, green: 0, blue: 0, alpha: 70)
            self.canvas.add(circle)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 0.70) {
                circle.opacity = 0.0
                circle.transform.scale(20, 20)
            }
            a.addCompletionObserver {
                circle.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }
        //        }
    }
    
    func maru５(){
        
        for i in 0...5 {
            ShapeLayer.disableActions = true
            let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
            let circle = Circle(center:  point, radius: 15)
            
            circle.fillColor = C4Grey
            circle.strokeColor = C4Blue
            self.canvas.add(circle)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 0.70) {
                circle.opacity = 0.0
                circle.transform.scale(20, 20)
            }
            a.addCompletionObserver {
                circle.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }
        //        }
    }
    
    func maru4(){
        
        for i in 0...5 {
            ShapeLayer.disableActions = true
            let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
            let circle = Circle(center:  point, radius: 15)
            
            circle.fillColor = C4Grey
            circle.strokeColor = C4Pink
            self.canvas.add(circle)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 0.70) {
                circle.opacity = 0.0
                circle.transform.scale(20, 20)
            }
            a.addCompletionObserver {
                circle.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }
        //        }
    }
    func sika5(){
        //        canvas.addTapGestureRecognizer { (locations, center, tap) in
        
        
        for i in 0...30 {
            ShapeLayer.disableActions = true
            let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
            let rect = Rectangle(frame: Rect(point, Size(30,30)))
            
            rect.fillColor = C4Grey
            rect.strokeColor = C4Pink
            self.canvas.add(rect)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 0.70) {
                rect.opacity = 0.0
                rect.transform.scale(0.001, 0.001)
            }
            a.addCompletionObserver {
                rect.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }
        
    }
    func sika6(){
        
        for i in 0...60 {
            ShapeLayer.disableActions = true
            let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
            let rect = Rectangle(frame: Rect(point, Size(50,50)))
            
            rect.fillColor = C4Grey
            rect.strokeColor = C4Pink
            self.canvas.add(rect)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 2) {
                rect.opacity = 0.0
                rect.transform.scale(0.001, 0.001)
            }
            a.addCompletionObserver {
                rect.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }
        
    }
    
    func maru1(){
        canvas.addPanGestureRecognizer { locations, center, translation, velocity, state in
            ShapeLayer.disableActions = true
            let circle = Circle(center: center, radius: 40)
            self.canvas.add(circle)
            ShapeLayer.disableActions = false
            
            let a = ViewAnimation(duration: 3.0) {
                circle.opacity = 0.0
                circle.transform.scale(0.001, 0.001)
            }
            a.addCompletionObserver {
                circle.removeFromSuperview()
            }
            a.curve = .linear
            a.animate()
        }
    }
    
    func maru2(){
        var circles = [Circle]()
        canvas.addPanGestureRecognizer { locations, center, translation, velocity, state in
            let c = Circle(center: center, radius: abs(velocity.x/50.0))
            c.lineWidth = abs(velocity.y/100.0)
            self.canvas.add(c)
            circles.append(c)
            if circles.count > 100 {
                circles[0].removeFromSuperview()
                circles.remove(at: 0)
            }
        }
    }
    
    func senn1() {
        let circle = Circle(center: Point(0,0), radius: 10)
        circle.strokeColor = C4Purple.colorWithAlpha(0.25)
        circle.lineWidth = 20.0
        
        let line = Line((Point(),Point(50,0)))
        line.opacity = 0.25
        line.anchorPoint = Point(0,0)
        line.lineWidth = 20
        line.center = circle.bounds.center
        
        circle.add(line)
        canvas.add(circle)
        
        var v = Vector()
        canvas.addPanGestureRecognizer { locations, center, translation, velocity, state in
            let vl = Vector(center)
            let dxdy = vl-v
            let Θ = dxdy.heading
            
            v = vl - Vector(x: cos(Θ) * 50, y: sin(Θ) * 50)
            
            ShapeLayer.disableActions = true
            circle.center = Point(v.x, v.y)
            line.rotation = Θ
        }
        
    }
    
    func sikaku() {
        let rect = Rectangle(frame: Rect(0,0,100,100))
        rect.center = canvas.center
        rect.strokeColor = clear
        canvas.add(rect)
        
        var position = Point()
        let press = rect.addLongPressGestureRecognizer { locations, center, state in
            switch state {
            case .began:
                ShapeLayer.disableActions = true
                rect.strokeColor = C4Pink
                rect.fillColor = white
                position = center
            case .changed:
                let dxdy = Vector(center) - Vector(position)
                rect.center += dxdy
            case .ended:
                rect.strokeColor = clear
                rect.fillColor = C4Blue
            default:
                _ = ""
            }
        }
        press.minimumPressDuration = 0.0
    }
    
    func bou(){
        let line = Line((Point(),Point(100,0)))
        line.opacity = 0.25
        line.anchorPoint = Point(0,0)
        line.lineWidth = 20
        line.center = canvas.center
        canvas.add(line)
        
        let vc = Vector(canvas.center)
        canvas.addPanGestureRecognizer { locations, center, translation, velocity, state in
            let vl = Vector(center)
            let Θ = (vl-vc).heading
            
            ShapeLayer.disableActions = true
            line.rotation = Θ
        }
    }
    
    func senn2() {
        let p = Path()
        let poly = Polygon()
        canvas.add(poly)
        canvas.addPanGestureRecognizer { locations, center, translation, velocity, state in
            if state == .began {
                p.moveToPoint(center)
            } else {
                p.addLineToPoint(center)
            }
            poly.path = p
        }
    }
    
    func nanika() {
        let maxDistance = distance(Point(), rhs: canvas.center)
        canvas.backgroundColor = black
        var pt = Point(8, 8)
        
        repeat {
            repeat {
                let c = Circle(center: pt, radius: 0.5)
                _ = distance(pt, rhs: canvas.center) / maxDistance
                c.lineWidth = 1.0
                c.fillColor = Color(red: 0.9, green: 0.0, blue: 0.0, alpha: 0.0)
                canvas.add(c)
                pt.x += 10.0
            } while pt.x < canvas.width
            pt.y += 10.0
            pt.x = 8.0
        } while pt.y < canvas.height
    }
    
    func gogo() {
        
    }
    
    func maru3(){
        canvas.addTapGestureRecognizer { (locations, center, tap) in
            
            
            for i in 0...150 {
                ShapeLayer.disableActions = true
                let point = Point(Int(arc4random_uniform(375)), Int(arc4random_uniform(667)))
                let circle = Circle(center:  point, radius: 20)
                circle.fillColor = C4Pink
                circle.strokeColor = C4Pink
                self.canvas.add(circle)
                ShapeLayer.disableActions = false
                
                let a = ViewAnimation(duration: 0.70) {
                    circle.opacity = 0.0
                    circle.transform.scale(0.001, 0.001)
                }
                a.addCompletionObserver {
                    circle.removeFromSuperview()
                }
                a.curve = .linear
                a.animate()
            }
        }
    }
  
  
    
    
    
    }
    
    
    
    




