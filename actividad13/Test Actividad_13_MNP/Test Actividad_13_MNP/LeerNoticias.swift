//
//  LeerNoticias.swift
//  Test Actividad_13_MNP
//
//  Created by user190573 on 5/4/21.
//  Copyright © 2021 user190573. All rights reserved.
//

import Foundation

class LeerNoticias
{
    func getNoticias(termino: @escaping (_ datos:[String])->())
    {
      let liga = "https://api.nytimes.com/svc/mostpopular/v2/viewed/7.json?api-key=Sx9RL5EGWchG55cTRuwpTXR79p7lioTw"
        
      let url = URL(string: liga)!
        URLSession.shared.dataTask(with: url)
        {
            NSData, URLResponse, NSError in
            var titulos:[String] = []
            
            do
            {
                let resultado = try JSONSerialization.jsonObject(with: NSData!, options: JSONSerialization.ReadingOptions.mutableLeaves) as! NSDictionary

                for valor in resultado["results"] as! [NSDictionary]
                {
                  titulos.append(valor["title"] as! String)
                
                DispatchQueue.main.async(
                    execute:
                    {() -> Void in
                    termino(titulos)
                    })
                }
            }
            catch
            {
              print("Error en lectura")
            }
        }.resume()
    }
}
