import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .white, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
let challengeFourFrame1 = CGRect(x: 0.0, y: 0.0, width: 99.0, height: 99.0)
let challengeFourView1 = UIView(frame: challengeFourFrame1)
challengeFourView1.backgroundColor = .white

let challengeFourFrame2 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeFourView2 = UIView(frame: challengeFourFrame2)
challengeFourView2.backgroundColor = .green

let challengeFourFrame3 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeFourView3 = UIView(frame: challengeFourFrame3)
challengeFourView3.backgroundColor = .black

let challengeFourFrame4 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeFourView4 = UIView(frame: challengeFourFrame4)
challengeFourView4.backgroundColor = .purple

let challengeFourFrame5 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeFourView5 = UIView(frame: challengeFourFrame5)
challengeFourView5.backgroundColor = .yellow

let challengeFourFrame6 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeFourView6 = UIView(frame: challengeFourFrame6)
challengeFourView6.backgroundColor = .red

let challengeFourFrame7 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeFourView7 = UIView(frame: challengeFourFrame7)
challengeFourView7.backgroundColor = .orange

let challengeFourFrame8 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeFourView8 = UIView(frame: challengeFourFrame8)
challengeFourView8.backgroundColor = .black

let challengeFourFrame9 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeFourView9 = UIView(frame: challengeFourFrame9)
challengeFourView9.backgroundColor = .white

let challengeFourFrame10 = CGRect(x: 0.0, y: 0.0, width: 33.0, height: 33.0)
let challengeFourView10 = UIView(frame: challengeFourFrame10)
challengeFourView10.backgroundColor = .blue

challengeFourView1.addSubview(challengeFourView2)

challengeFourView3.frame.origin.x = challengeFourView2.frame.origin.x + challengeFourView3.frame.width
challengeFourView1.addSubview(challengeFourView3)

challengeFourView4.frame.origin.x = challengeFourView3.frame.origin.x + challengeFourView4.frame.width
challengeFourView1.addSubview(challengeFourView4)

challengeFourView5.frame.origin.y = challengeFourView1.frame.origin.y + challengeFourView5.frame.height
challengeFourView1.addSubview(challengeFourView5)

challengeFourView6.frame.origin.x = challengeFourView5.frame.origin.x + challengeFourView6.frame.width
challengeFourView6.frame.origin.y = challengeFourView3.frame.origin.y + challengeFourView6.frame.height
challengeFourView1.addSubview(challengeFourView6)

challengeFourView7.frame.origin.x = challengeFourView6.frame.origin.x + challengeFourView7.frame.width
challengeFourView7.frame.origin.y = challengeFourView4.frame.origin.y + challengeFourView7.frame.height
challengeFourView1.addSubview(challengeFourView7)

challengeFourView8.frame.origin.y = challengeFourView5.frame.origin.y + challengeFourView8.frame.height
challengeFourView1.addSubview(challengeFourView8)

challengeFourView9.frame.origin.x = challengeFourView8.frame.origin.x + challengeFourView9.frame.width
challengeFourView9.frame.origin.y = challengeFourView6.frame.origin.y + challengeFourView9.frame.height
challengeFourView1.addSubview(challengeFourView9)

challengeFourView10.frame.origin.x = challengeFourView9.frame.origin.x + challengeFourView10.frame.width
challengeFourView10.frame.origin.y = challengeFourView7.frame.origin.y + challengeFourView10.frame.height
challengeFourView1.addSubview(challengeFourView10)

//Dynamic Implementation