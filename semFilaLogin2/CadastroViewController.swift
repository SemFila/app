//
//  CadastroViewController.swift
//  semFilaLogin2
//
//  Created by Student on 11/24/15.
//  Copyright © 2015 GENiOS. All rights reserved.
//

import UIKit
import CoreData

class CadastroViewController: UIViewController {

    let contexto = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    var usuario: Usuario? = nil
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var senhaField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameField = UITextField()
        emailField = UITextField()
        senhaField = UITextField()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func addCadastro(sender: AnyObject) {
        criarUsuario()
        self.dismissViewControllerAnimated(true, completion: nil) //fecha a tela da edicao
    }
    
    func criarUsuario() {
        let entityDescription = NSEntityDescription.entityForName("Usuario", inManagedObjectContext: contexto)
        let user = Usuario(entity: entityDescription!, insertIntoManagedObjectContext: contexto)
        
        user.nome = nameField.text
        user.email = emailField.text
        user.senha = senhaField.text
        
        do {
            try contexto.save()
        } catch let error as NSError {
            print("Erro ao criar usuario")
            print(error)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
