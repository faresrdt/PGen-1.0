//
//  ViewController.swift
//  PGen 1.0
//
//  Created by FAB on 29/07/2023.
//

import UIKit

class ViewController: UIViewController {

    var nom = ["O'Brien","O'Connor","McGrath","O'Neill","Walsh","McCarthy","O'Flaherty", "McGinty","McBride","McMahon","McCann","McLaughlin","McKenna","McGowan","O'Doherty","McAuley","McGuinness","McHugh","McKee","McDowell","O'Byrne","O'Rourke","O'Reilly","McCormack","McGee","McMahon","McGill","McEvoy","McCabe","McLoughlin","McMahon","McGarry","McClure","McHugh","McManus","McDonald","McGuire","McLoughlin","McInerney","McHale","McNulty","McGovern","McMahon","McKay","O'Connor","McDonagh","McNally","McLean","McGinley","McLoughlin"]
    
    var prenom = ["Sean","Liam","Patrick","Finn","Declan","Rory","Conor","Darren","Ronan","Colin","Eoin","Jack","Emma","Claire","Ryan","Megan","Amy","Luke","Harry","Oliver","Noah","Olivia","Ava","Sophia","Isabella","Charlotte","Mia","Amelia","Harper","Evelyn","Abigail","Emily","Elizabeth","Avery","Sofia","Ella","Madison","Scarlett","Victoria","Aria","Grace","Chloe","Camila","Penelope","Riley","Zoey","Nora","Liam","Elijah","James","Benjamin","Jacob","Lucas","Mason","Ethan","Alexander","Michael","Daniel","Henry","Jackson","Sebastian","Aiden","Matthew","Samuel","David","Joseph","Carter","Owen","Wyatt","John","Jack","Luke","Jayden","Leo","Julian","Anthony","Isaac","Dylan","Andrew","Thomas","Joshua","Christopher","Jaxon","Levi","Gabriel","Logan","Benjamin","Nathan","Ryan","Connor","Eli","Jeremiah","Nolan","Landon","Mateo","Lincoln","Max","Aaron","Isaiah","Blake","Charles","Lucas","Patrick","Theo","Colton","Adrian","Cooper","Brayden","Jordan","Carson","Nicholas","Adam","Alex","Josiah","Cameron","Dominic","Austin","Sebastian","Xavier","Jose","Parker","Jeremiah","Ezekiel","Kai","Maverick","Micah","Vincent","Weston","Ayden","Carson","Victor","Kyler","Brody","Leo","Hunter","David","Nate"]
    
    @IBOutlet weak var pseudoLabel: UILabel!

    @IBAction func changePseudo(_ sender: Any) {
        
        let randomIndex1 = Int.random(in: 0..<nom.count)
        let randomNom = nom[randomIndex1]
        
        let randomIndex2 = Int.random(in: 0..<prenom.count)
        let randomPrenom = prenom[randomIndex2]
        
        let pseudo = randomPrenom + " " + randomNom
        
        pseudoLabel.text = pseudo

    }
    
}

