import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 100)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .blue, .red]

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have the canvas's full `height` as well as a third of its `width`. Use the same colors as in the picture (they are already defined for you above in the `colors` array):

 ![Challenge 3](./challenge3.png "Challenge 3")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
let challengeThreeFrame1 = CGRect(x: 0.0, y: 0.0, width: 99.0, height: 33.0)
let challengeThreeView1 = UIView(frame: challengeThreeFrame1)
challengeThreeView1.backgroundColor = .white

let challengeThreeFrame2 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeThreeView2 = UIView(frame: challengeTwoFrame2)
challengeTwoView2.backgroundColor = .red