
import Foundation

func nextGuess(lowerBound: Int, upperBound: Int) -> Int
{
    let guess = Int.random(in: min...max)
    print("is your number \(guess) ?")
    print("type yes or no")
    
    return guess
}

var min = 0, max = 1000

var stillGuessing = true

print("""
        welcome to number wizard, think of a number between \(min) and \(max)
        and i will guess it
    """)

while(stillGuessing)
{
    let guess = nextGuess(lowerBound: min, upperBound: max)
    
    var playerInput = readLine()
    
    if(playerInput == "yes")
    {
        print("I win :^)")
        stillGuessing = false
        
    }else if (playerInput == "no")
    {
        print("type bigger or smaller")
        
        playerInput = readLine()
        
        if(playerInput == "bigger")
            {
                min = guess
            }
        else if(playerInput == "smaller")
            {
                max = guess
            }
        else {
            print("i didn't catch that")
        }
    }else
    {
        print("i didn't catch that")
    }
    
}
