
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
let challenge25View1 = UIView(frame: challenge25Frame1)
challenge25View1.backgroundColor = .white

var grid = 10

var grid_x: CGFloat = 0
var grid_y: CGFloat = 0

for i in 0..<grid {
    for j in 0..<grid {
        let subViewSize25 = CGSize(width: challenge25View1.frame.width/CGFloat(grid), height: challenge25View1.frame.height/CGFloat(grid))
        let subViewFrame25 = CGRect(x: grid_x, y: grid_y, width: subViewSize25.width, height: subViewSize25.height)
        grid_x = grid_x + subViewSize25.width
        grid_y = grid_y + subViewSize25.height
        let subViewView25 = UIView(frame: subViewFrame25)
        subViewView25.backgroundColor = .red
        challenge25View1.addSubview(subViewView25)
    }
}
