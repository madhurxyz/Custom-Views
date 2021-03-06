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
//Implementation 1
//let challengeThreeFrame1 = CGRect(x: 0.0, y: 0.0, width: 99.0, height: 33.0)
//let challengeThreeView1 = UIView(frame: challengeThreeFrame1)
//challengeThreeView1.backgroundColor = .white
//
//let challengeThreeFrame2 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
//let challengeThreeView2 = UIView(frame: challengeThreeFrame2)
//challengeThreeView2.backgroundColor = .green
//
//let challengeThreeFrame3 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
//let challengeThreeView3 = UIView(frame: challengeThreeFrame3)
//challengeThreeView3.backgroundColor = .blue
//
//let challengeThreeFrame4 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
//let challengeThreeView4 = UIView(frame: challengeThreeFrame4)
//challengeThreeView4.backgroundColor = .red
//
//challengeThreeView1.addSubview(challengeThreeView2)
//
//challengeThreeView3.frame.origin.x = challengeThreeView2.frame.origin.x + challengeThreeView3.frame.width
//challengeThreeView1.addSubview(challengeThreeView3)
//
//challengeThreeView4.frame.origin.x = challengeThreeView3.frame.origin.x + challengeThreeView4.frame.width
//challengeThreeView1.addSubview(challengeThreeView4)



//Implementation 2


var cells = 40
var dynamicX: CGFloat = 0

let challengeThreeFrame1 = CGRect(x: 0.0, y: 0.0, width: 20 * CGFloat(cells), height: 20.0)
let challengeThreeView1 = UIView(frame: challengeThreeFrame1)
challengeThreeView1.backgroundColor = .white

for i in 0..<cells {
    let subViewSize3 = CGSize(width: challengeThreeView1.frame.width/CGFloat(cells), height: challengeThreeView1.frame.height)
    let subViewFrame3 = CGRect(x: dynamicX, y: 0.0, width: subViewSize3.width, height: subViewSize3.height)
    dynamicX = dynamicX + subViewSize3.width
    let subViewView3 = UIView(frame: subViewFrame3)
    subViewView3.layer.borderWidth = 1.0
    challengeThreeView1.addSubview(subViewView3)
}
