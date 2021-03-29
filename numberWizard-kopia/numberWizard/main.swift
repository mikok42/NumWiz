
import Foundation



var stillGuessing = true

let theWizard = NumberWizard(min_: 0, max_: 1000)

while(stillGuessing)
{
   
    theWizard.printGuess()
    
    var playerInput = readLine()
    
    if(playerInput == "yes")
    {
        print("I win :^)")
        stillGuessing = false
        
    }else if (playerInput == "no")
    {
        print("type bigger or smaller")
        
        playerInput = readLine()
        
        let stringInput = String(playerInput ?? "nothing")
        
        theWizard.processAnswer(answer: stringInput)
     
    }else
    {
        print("i didn't catch that")
    }
    
}
