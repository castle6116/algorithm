import Foundation

let v = Int(readLine()!)!
var list = [[String]]()
var blueCount = 0
var whiteCount = 0

func result(q : Int){
    for _ in 0..<q{
        let text = readLine()!.split(separator: " ").map{String($0)}
        list.append(text)
    }
    
    colorpaper(Starti: 0, Startj: 0, size: q)
    print(whiteCount)
    print(blueCount)
    
}

func colorpaper(Starti : Int, Startj : Int, size : Int){
    if size == 1{
        if list[Starti][Startj] == "1"{
            blueCount += 1
        }else{
            whiteCount += 1
        }
        return
    }
    for a in Starti..<Starti + size{
        for b in Startj..<Startj + size{
            if list[a][b] != list[Starti][Startj]{
                colorpaper(Starti: Starti,             Startj: Startj,            size: size / 2)
                colorpaper(Starti: Starti,             Startj: size / 2 + Startj, size: size / 2)
                colorpaper(Starti: size / 2 + Starti,  Startj: Startj,            size: size / 2)
                colorpaper(Starti: size / 2 + Starti,  Startj: size / 2 + Startj, size: size / 2)
                return
            }
        }
    }
    if list[Starti][Startj] == "1"{
        blueCount += 1
    }else{
        whiteCount += 1
    }
}
result(q: v);
//print(result(q: v))
