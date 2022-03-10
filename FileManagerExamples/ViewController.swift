//
//  ViewController.swift
//  FileManagerExamples
//
//  Created by Igor Polousov on 10.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // STEP_1. Добавление папки Сontent в Bundle приложения путем перетаскавания папки с Mac
    
    // STEP_2. Массив для хранения картинок. Выбирается тип данных строка, потому что в массиве будут храниться имена файлов
    var images = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // STEP_2
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        var items = try! fm.contentsOfDirectory(atPath: path)
        
        // STEP_3
        for item in items {
            if item.hasPrefix("nssl") {
                images.append(item)
            }
        }
        
        // WARN! МАссив items все еще содержится в памяти вашего устройства, после получения необходимых данных, и если массив далее не планируется использовать,  лучше удалить из массива все данные
        
        items.removeAll()
        
        // Проверка содержимого массива images
        print(images)
        // ["nssl0049.jpg", "nssl0046.jpg", "nssl0091.jpg", "nssl0045.jpg", "nssl0051.jpg", "nssl0041.jpg", "nssl0042.jpg", "nssl0043.jpg", "nssl0033.jpg", "nssl0034.jpg"]
        // Далее работа с массивом по усмотрению
        
    }


}

