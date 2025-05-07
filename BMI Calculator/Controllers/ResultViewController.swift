
import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var bmi: BMI?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Optional Chaining (Em caso de Struct ou Classe Opcional) + Nil Coalescing Operator (default)
        BMILabel.text = bmi?.toString() ?? "0.0"
        adviceLabel.text = bmi?.advice
        view.backgroundColor = bmi?.color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Voltar para a tela anterior
        self.dismiss(animated: true , completion: nil)
    }
    
}
