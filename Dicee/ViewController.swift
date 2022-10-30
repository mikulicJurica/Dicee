import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    private var diceImages = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftDiceImageView.image = diceImages[Int.random(in: 0...5)]
        rightDiceImageView.image = diceImages[Int.random(in: 0...5)]
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        leftDiceImageView.image = diceImages[Int.random(in: 0...5)]
        rightDiceImageView.image = diceImages[Int.random(in: 0...5)]
    }
}

