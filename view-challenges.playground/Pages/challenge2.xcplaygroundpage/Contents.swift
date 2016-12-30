
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have a third of the `canvas`' `width` and `height`. 
 
 
 ![Challenge 2](./challenge2.png "Challenge 2")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//Implementation 1
let challengeTwoFrame1 = CGRect(x: 0.0, y: 0.0, width: 99.0, height: 99.0)
let challengeTwoView1 = UIView(frame: challengeTwoFrame1)
challengeTwoView1.backgroundColor = .white

let challengeTwoFrame2 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeTwoView2 = UIView(frame: challengeTwoFrame2)
challengeTwoView2.backgroundColor = .red

let challengeTwoFrame3 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeTwoView3 = UIView(frame: challengeTwoFrame3)
challengeTwoView3.backgroundColor = .red

let challengeTwoFrame4 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeTwoView4 = UIView(frame: challengeTwoFrame4)
challengeTwoView4.backgroundColor = .red

challengeTwoView1.addSubview(challengeTwoView2)

challengeTwoView3.center = challengeTwoView1.center
challengeTwoView1.addSubview(challengeTwoView3)

challengeTwoView4.frame.origin.x = challengeTwoView3.frame.origin.x + challengeTwoView3.frame.width
challengeTwoView4.frame.origin.y = challengeTwoView3.frame.origin.y + challengeTwoView3.frame.height
challengeTwoView1.addSubview(challengeTwoView4)

//Dynamic Implementation
let challenge25Frame1 = CGRect(x: 0.0, y: 0.0, width: 99.0, height: 99.0)
