import Cocoa

class MyClass
{
    var time: Float = 0.0
    func runTimer()
    {
        Timer.scheduledTimer(timeInterval: 0.1,
                             target: self,
                             selector: #selector (printTime),
                             userInfo: nil ,
                             repeats: false)
    }
    //A partir da versao 4 do swift precisa expor qualquer coisa que esteja usando um seletor para Objective-C. Isso significa que tem que adicionar um objeto de C aqui
    @objc func printTime ()
    {
        time += 0.1
        print (String (format: "%.1f", time))
    }
}

var myObj = MyClass ()
myObj.runTimer()

