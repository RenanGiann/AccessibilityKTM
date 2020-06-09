//
//  DetailViewController.swift
//  AccessibilityExemple
//
//  Created by Renan Giannella​  on 08/06/20.
//  Copyright © 2020 Renan Giannella. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var darModeLabel: UILabel!
    @IBOutlet weak var darkSwitch: UISwitch!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var motoImage: UIImageView!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var infoStackHorizontal: UIStackView!
    @IBOutlet weak var priceValue: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var stackPrice: UIStackView!
    @IBOutlet weak var beastSegment: UISegmentedControl!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        darkSwitch.isOn = false
        acessibilityPosition()
        beastSegment.selectedSegmentIndex = 0
        detailTextView.backgroundColor = .gray
        view.backgroundColor = UIColor.gray
        priceValue.text = "R$ 90.000,00"
        priceValue.accessibilityLabel = "Preço 90 mil reais"
        colorView.backgroundColor = .gray
        motoImage.isAccessibilityElement = true
        colorLabel.accessibilityLabel = "Selecione a cor desejada"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationItem.backBarButtonItem?.tintColor = .white
    }
    
    @IBAction func bestSegmented(_ sender: UISegmentedControl) {
        
        if beastSegment.selectedSegmentIndex == 0 {
            priceValue.text = "R$ 90.000,00"
            titleLabel.text = "SuperDuke 1290 R Orange"
            motoImage.image = UIImage(named: "fotos-ktm-1290-super-duke-r")
            //Accessibility
            priceValue.accessibilityLabel = "Preço 90 mil reais"
        } else {
            priceValue.text = "R$ 80.000,00"
            titleLabel.text = "SuperDuke 1290 R Dark"
            motoImage.image = UIImage(named: "nova-ktm-1290-super-duke-r")
            //Accessibility
            priceValue.accessibilityLabel = "Preço 80 mil reais"
        }
        
    }
    
    @IBAction func darkStack(_ sender: UISwitch) {
        
        if darkSwitch.isOn {
            view.backgroundColor = UIColor.black
            detailTextView.backgroundColor = UIColor.black
            darModeLabel.tintColor = .white
            titleLabel.tintColor = .white
            detailTextView.tintColor = .white
            priceValue.tintColor = .white
            priceLabel.tintColor = .white
            colorView.backgroundColor = .black
        } else {
            view.backgroundColor = UIColor.gray
            detailTextView.backgroundColor = .gray
            colorView.backgroundColor = .gray
        }
        
    }
    
    func acessibilityPosition() {
        motoImage.accessibilityLabel = "Foto meramente ilustrativa"
        darModeLabel.isAccessibilityElement = false
        darkSwitch.accessibilityLabel = "Selecione o dark mode"
        self.view.accessibilityElements = [titleLabel!, darkSwitch!, motoImage!, detailTextView!, colorView!, priceValue!]
        priceValue.accessibilityHint = "a vista"
        colorView.accessibilityElements = [colorLabel!, beastSegment!]
    }
    
}
