import Foundation

class Manager
{
    static let shared = Manager()
    private var beerArray =
    [
        Beer(name: "Corona", price: 10),
        Beer(name: "Löwenbräu", price: 20),
        Beer(name: "Hoegaarden", price: 30)
    ]
    private init() {}
    //MARK: let/var
    var total = 0
    //MARK: functions
    func getBeer(name: String) -> Beer
    {
        print(beerArray.filter({ $0.name == name }).first!)
        return beerArray.filter({ $0.name == name }).first!
    }
    func sellBeer() -> String
    {
        var string = ""
        var sum = 0
        for beer in beerArray
        {
            string.append("Beer:\(beer.name),quantity:\(beer.selected),sum: \(beer.selected * beer.price)\n")
                          sum += beer.selected * beer.price
                          beer.quantity -= beer.selected
                          beer.selected = 0
                          }
                          total += sum
                          string += "Total:\(sum)"
                          return string
                          }
                          func startDay()
                          {
                total = 0
                for beer in beerArray
                {
                    beer.quantity = 100
                }
            }
                          func endDay()
                          {
                print(total)
            }
                          }
