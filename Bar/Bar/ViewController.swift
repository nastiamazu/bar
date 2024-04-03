import UIKit
class ViewController: UIViewController {
    //MARK: IBOutlets
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet var labalesArray: [UILabel]!
    @IBOutlet weak var firstQuantityLabel: UILabel!
    @IBOutlet weak var secondQuantityLabel: UILabel!
    @IBOutlet weak var thirdQuantityLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    //MARK: IBActions
    @IBAction func substractFirstButtonPressed(_ sender: UIButton)
    {
        if Int(firstQuantityLabel.text!) == 0 { return }
        let beer = Manager.shared.getBeer(name: "Corona")
        if beer.quantity == 0 { return }
        beer.selected -= 1
        firstQuantityLabel.text = "\(beer.selected)"
    }
    @IBAction func addFirstButtonPressed(_ sender: UIButton)
    {
        let beer = Manager.shared.getBeer(name: "Corona")
        if beer.quantity == beer.selected { return }
        beer.selected += 1
        firstQuantityLabel.text = "\(beer.selected)"
    }
    @IBAction func substractSecondButtonPressed(_ sender: UIButton)
    {
        if Int(secondQuantityLabel.text!) == 0 { return }
        let beer = Manager.shared.getBeer(name: "Löwenbräu")
        if beer.quantity == 0 { return }
        beer.selected -= 1
        secondQuantityLabel.text = "\(beer.selected)"
    }
    @IBAction func addSecondButtonPressed(_ sender: UIButton)
    {
        let beer = Manager.shared.getBeer(name: "Löwenbräu")
        if beer.quantity == beer.selected { return }
        beer.selected += 1
        secondQuantityLabel.text = "\(beer.selected)"
    }
    @IBAction func substractThirdButtonPressed(_ sender: UIButton)
    {
        if Int(thirdQuantityLabel.text!) == 0 { return
        }
        let beer = Manager.shared.getBeer(name: "Hoegaarden")
        if beer.quantity == 0 { return
        }
        beer.selected -= 1
        thirdQuantityLabel.text = "\(beer.selected)"
    }
    @IBAction func addThirdButtonPressed(_ sender: UIButton)
    {
        let beer = Manager.shared.getBeer(name: "Hoegaarden")
        if beer.quantity == beer.selected { return }
        beer.selected += 1
        thirdQuantityLabel.text = "\(beer.selected)"
    }
    @IBAction func sellButtonPressed(_ sender: UIButton)
    {
        let result = Manager.shared.sellBeer()
        priceLabel.text = result
        for labels in labalesArray
        {
            labels.text = "0"
        }
    }
    @IBAction func startDayButtonPressed(_ sender: UIButton)
    {
        Manager.shared.startDay()
        priceLabel.text = "There you will see price of beer"
    }
    @IBAction func endDayButtonPressed(_ sender: UIButton)
    {
        Manager.shared.endDay()
        priceLabel.text = "Total: \(Manager.shared.total)"
    }
}
