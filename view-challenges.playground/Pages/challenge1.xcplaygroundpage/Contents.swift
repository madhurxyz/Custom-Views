
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 200, height: 200)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor
/*:
 **Task**: Add a `UIView` to the `canvas` that is half as wide and half as high as the `canvas`. This new `UIView` should be _centered_ on the canvas:
 
 ![Challenge 1](./challenge1.png "Challenge 1")

 1. Implement above task by setting the view's `frame` directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//Implementation 1
let challengeOneFrame1 = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0)
let challengeOneView1 = UIView(frame: challengeOneFrame1)
challengeOneView1.backgroundColor = .white

let challengeOneFrame2 = CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0)
let challengeOneView2 = UIView(frame: challengeOneFrame2)
challengeOneView2.backgroundColor = .red

challengeOneView2.center = challengeOneView1.center
challengeOneView1.addSubview(challengeOneView2)