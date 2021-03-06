import UIKit

struct Resolution{
    var width = 0
    var height = 0;
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false;
    var frameRate = 0.0
    var name:String?
}

var someResolution = Resolution();
let someVideoMode = VideoMode();
someResolution.width = 1280
someResolution.height
someResolution.width


someVideoMode.resolution.width = 1280
someVideoMode.resolution.width
someVideoMode.frameRate
someVideoMode.name
someVideoMode.interlaced

let vga = Resolution(width: 640, height: 480)
vga.width
vga.height;

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd;
cinema.width = 2048
hd.width

let tenEighty = VideoMode()
tenEighty.resolution = hd;
tenEighty.interlaced = true;
tenEighty.name = "1080i";
tenEighty.frameRate = 25.0;

let alsoTenTighty = tenEighty;
alsoTenTighty.frameRate = 30.0;
tenEighty.frameRate

// ===識別運算子
//!==

if alsoTenTighty === tenEighty{
    print("搖控同一個實體");
}
