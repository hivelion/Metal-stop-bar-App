//
//  blachy.swift
//  Metal-stop-bar
//
//  Created by Dominik Kowalski on 13/09/2019.
//  Copyright © 2019 Dominik Kowalski. All rights reserved.
//

import Foundation

class BlachyProductManager {
    
    var produkt: [Produkt] = []
    
    func createProdukt() {
        
        let Blacha15x1020x2020 = Produkt(name: "Blacha 15x1020x2020mm", productImage: "blacha", description: "Blacha 15x1020x2020mm - opis")
        let Blacha12x1000x2000 = Produkt(name: "Blacha 12x1000x2000mm", productImage: "blacha", description: "Blacha 12x1000x2000mm - opis")
        let Blacha10x1000x2000 = Produkt(name: "Blacha 10x1000x2000mm", productImage: "blacha", description: "Blacha 10x1000x2000mm - opis")
        let Blacha8x1020x2020 = Produkt(name: "Blacha 8x1020x2020mm", productImage: "blacha", description: "Blacha 8x1020x2020mm - opis")
        let Blacha8x1000x2000 = Produkt(name: "Blacha 8x1000x2000mm", productImage: "blacha", description: "Blacha 8x1000x2000mm - opis")
        
        self.produkt = [
            Blacha8x1000x2000,
            Blacha8x1020x2020,
            Blacha10x1000x2000,
            Blacha12x1000x2000,
            Blacha15x1020x2020
        ]
        
    }
    
}
