//
//  ViewController.swift
//  PGen 1.0
//
//  Created by FAB on 29/07/2023.
//

import UIKit


/* VERSION POO */


// Énumération des inspirations possibles du pseudo
enum Inspiration: String {
    case britannia
    case cherokee
    case futuriste
    case gaullix
    case hollywood
    case latino
    case manga
    case marvel
    case thrones
}


// Définition de la classe Pseudo
class Pseudo {
    // Propriétés de la classe
    var firstNames: [String] // Prénoms
    var lastNames:[String] // Nom de famille
    var inspiration:Inspiration // Inspiration choisie

    // Initialisation de la classe
    init(firstNames: [String], lastNames: [String], inspiration: Inspiration) {
            self.firstNames = firstNames
            self.lastNames = lastNames
            self.inspiration = inspiration
    }
    
    // Fonction pour générer un pseudo en une partie
    func generatePseudoInOnePart() -> String {
        
        // Sélectionne un nom de famille au hasard (ou une chaîne vide si la liste est vide)
        let randomName = lastNames.randomElement() ?? ""
        
        // Retourne le pseudo
        return "\(randomName)"
    }
    
    // Fonction pour générer un pseudo en deux partie
    func generatePseudoInTwoPart() -> String {
        // Sélectionne un prénom au hasard (ou une chaîne vide si la liste est vide)
        let randomFirstName = firstNames.randomElement() ?? ""
        
        // Sélectionne un nom de famille au hasard (ou une chaîne vide si la liste est vide)
        let randomLastName = lastNames.randomElement() ?? ""
        
        // Combine le prénom et le nom de famille pour former le pseudo
        return "\(randomFirstName) \(randomLastName)"
    }
}


// Classe fille pour les différentes inspirations
class CustomPseudo: Pseudo {
    init(inspiration: Inspiration) {
        switch inspiration {
        case .britannia:
            let firstNames = [
                "Oliver", "Sophie", "William", "Amelia", "James", "Olivia", "Harry", "Emily", "George", "Grace",
                "Henry", "Ella", "Edward", "Charlotte", "Alexander", "Lily", "Charles", "Lucy", "David", "Alice",
                "Samuel", "Mia", "Thomas", "Isabella", "Daniel", "Emma", "Joseph", "Ava", "Robert", "Eva",
                "John", "Sophia", "Michael", "Jessica", "Andrew", "Chloe", "Matthew", "Layla", "Richard", "Millie",
                "Benjamin", "Harper", "Lewis", "Zoe", "Daniel", "Scarlett", "Callum", "Ruby", "Finn", "Georgia"
            ]
            let lastNames = [
                "Smith", "Johnson", "Brown", "Taylor", "Miller", "Davis", "Wilson", "Moore", "Anderson", "Jackson",
                "Thomas", "Harris", "Thompson", "White", "Walker", "Lewis", "Roberts", "Hall", "Johnson", "Clark",
                "Williams", "Allen", "Scott", "King", "Green", "Baker", "Adams", "Nelson", "Hill", "Parker",
                "Turner", "Collins", "Ward", "Cook", "Murphy", "Cooper", "Bailey", "Richardson", "Cox", "Howard",
                "Ward", "Hughes", "Graham", "Edwards", "Watson", "Reed", "Bennett", "Carter", "Phillips", "Mitchell"
            ]
            super.init(firstNames: firstNames, lastNames: lastNames, inspiration: inspiration)
        case .cherokee:
            let firstNames = [
                "Tigre", "Loup", "Éléphant", "Panda", "Lion", "Oiseau", "Dauphin", "Gorille",
                "Renard", "Baleine", "Singe", "Girafe", "Koala", "Chien", "Chat", "Ours", "Cerf",
                "Tortue", "Souris", "Poisson", "Aigle", "Papillon", "Chouette", "Hibou", "Requin",
                "Orque", "Léopard", "Loutre", "Crocodile", "Perroquet", "Caméléon", "Poule",
                "Cheval", "Serpent", "Grenouille", "Coccinelle", "Panthère", "Colibri", "Poussin",
                "Pélican", "Pingouin", "Kangourou", "Otarie", "Raton-laveur", "Autruche", "Morse",
                "Chimpanzé", "Castor", "Hippopotame", "Gazelle", "Bison", "Coyote", "Wapiti", "Élan",
                "Pygargue", "Balbuzard", "Buse", "Urubu", "Oie", "Canard", "Merle", "Geai", "Tamia",
                "Blaireau", "Alligator", "Lapin", "Écureuil", "Vison", "Martre", "Porc-Épic", "Lièvre"
            ]
            let lastNames = [
                "Givré", "Énervé", "Flamboyant", "Heureux", "Fort", "Étourdi", "Mystérieux",
                "Triste", "Vif", "Serein", "Intrigué", "Fier", "Curieux", "Calme", "Déterminé",
                "Joyeux", "Vulnérable", "Effrayé", "Paisible", "Zélé", "Sensible", "Indifférent",
                "Agressif", "Vibrant", "Déçu", "Solitaire", "Passionné", "Insouciant",
                "Mélancolique", "Prudent", "Hésitant", "Courageux", "Apathique", "Espoir", "Excité",
                "Enthousiaste", "Craintif", "Cruel", "Timide", "Jaloux", "Satisfait", "Émerveillé",
                "Détendu", "Pensif", "Séduisant", "Sérieux", "Sincère", "Vigilant", "Volontaire",
                "Aventureux", "Innocent", "Impatient", "Lumineux", "Brillant", "Azur", "Pourpre",
                "Saphir", "Turquoise", "Emeraude", "Rubis", "Or", "Argent", "Cuivre", "Bronze",
                "Rougeoyant", "Doré", "Argenté", "Nacré", "Iridescent", "Céleste", "Charnel",
                "Écarlate", "Olive", "Caramel", "Framboise", "Pêche", "Indigo", "Ambre", "Topaze",
                "Mauve", "Aigue-marine", "Opalescent", "Cyan", "Orangé", "Sombre", "Clair",
                "Profond", "Vibrant", "Mat", "Éclatant", "Terne", "Métallique", "Pastel", "Vaporeux"
            ]
            super.init(firstNames: firstNames, lastNames: lastNames, inspiration: inspiration)
        case .futuriste:
            let firstNames = [
                "Aeon", "Nyx", "Orion", "Luna", "Nova",
                "Zara", "Kai", "Astra", "Caden", "Seren",
                "Eris", "Zephyr", "Lyra", "Phoenix", "Kira",
                "Caelum", "Dax", "Vesper", "Xena", "Kairos",
                "Raven", "Ari", "Cyra", "Zenith", "Thorne",
                "Nexa", "Jaxon", "Raine", "Evo", "Zuri",
                "Cosmo", "Electra", "Kaiya", "Kairo", "Ryker",
                "Ariya", "Sylvan", "Nyxon", "Elara", "Kael",
                "Skylar", "Aeris", "Zephyra", "Orin", "Aria",
                "Zara", "Cassius", "Sarai", "Xander", "Nova",
                "Silverseek", "Techblade", "Quantum", "Nebulon", "Starforge",
                "Synthwave", "Vortex", "Exocore", "Astrax", "Binary",
                "Spectron", "Cyberdusk", "Neonova", "Cosmic", "Ferrum",
                "Galaxian", "Omnitech", "Infinix", "Luminex", "Pulsar",
                "Circuit", "Nextron", "Helix", "Aerion", "Orbitech",
                "Zephyrus", "Eclipse", "Hyperflux", "Aether", "Virtex",
                "Eon", "Quantex", "Nyx", "Synthius", "Vividium",
                "Axion", "Synchron", "Etherium", "Radian", "Stellar",
                "Aegis", "Vortex", "Eterna", "Luminex", "Nocturnix",
                "Astralis", "Zerion", "Omnitrax", "Cortex", "Sagitta"
            ]
            let lastNames = firstNames
            super.init(firstNames: firstNames, lastNames: lastNames, inspiration: inspiration)
        case .gaullix:
            let firstNames = [
                "Gigantix", "Bafouillix", "Pantouflix", "Grinchix", "Croustillix",
                "Turbulix", "Rigolix", "Zigzagix", "Gribouillix", "Farfelix",
                "Franchouillix", "Chiffonnix", "Gastonix", "Pirouetix", "Cacahuètix",
                "Patafix", "Mousticix", "Radotix", "Ratatouillix", "Zinzinix",
                "Saucissonix", "Marmeladix", "Tournicotix", "Chouravix", "Bidouillix",
                "Bouillabaisseix", "Catastrophix", "Gastronomix", "Croissantix",
                "Pantouflardix", "Boulangerix", "Escargotix", "Bordelix", "Limonadix", "Cocoricix", "Jardinix", "Galettix", "Tagadix",
                "Globulix", "Ratatouillix", "Pépéfix", "Tournicotix", "Chocolatix",
                "Nénufarix", "Tartiflix", "Pittorix", "Absurdix", "Excentrix",
                "Déjantix", "Étrangix"
            ]
            let lastNames = firstNames
            super.init(firstNames: firstNames, lastNames: lastNames, inspiration: inspiration)
        case .hollywood:
            let firstNames = [
                "Smith", "Johnson", "Williams", "Jones", "Brown",
                "Davis", "Miller", "Wilson", "Moore", "Taylor",
                "Anderson", "Thomas", "Jackson", "White", "Harris",
                "Martin", "Thompson", "Garcia", "Martinez", "Robinson",
                "Clark", "Rodriguez", "Lewis", "Lee", "Walker",
                "Hall", "Allen", "Young", "King", "Wright",
                "Scott", "Green", "Baker", "Adams", "Nelson",
                "Hill", "Ramirez", "Campbell", "Mitchell", "Roberts",
                "Carter", "Phillips", "Evans", "Turner", "Torres",
                "Parker", "Collins", "Edwards", "Stewart", "Flores"
            ]
            let lastNames = [
                "Leonardo", "Jennifer", "Tom", "Angelina", "Brad",
                "Meryl", "Robert", "Julia", "Johnny", "Charlize",
                "Denzel", "Scarlett", "Will", "Nicole", "Samuel",
                "Kate", "George", "Emma", "Matt", "Cate",
                "Daniel", "Anne", "Hugh", "Natalie", "Chris",
                "Cameron", "Russell", "Amy", "Christian", "Sandra",
                "Joaquin", "Reese", "Keanu", "Jessica", "Liam",
                "Halle", "Ryan", "Penelope", "Mark", "Helen",
                "Idris", "Gwyneth", "Ewan", "Charisma", "Jared",
                "Emily", "Edward", "Zoe", "Chris", "Salma"
            ]
            super.init(firstNames: firstNames, lastNames: lastNames, inspiration: inspiration)
        case .latino:
            let firstNames = [
                "Isabella", "Sofía", "Valentina", "Camila", "Valeria", "Lucía", "Emma", "Mariana",
                "Sara", "Daniela", "Elena", "Gabriela", "María", "Victoria", "Ana", "Laura",
                "Natalia", "Alicia", "Carolina", "Clara", "Fernanda", "Adriana", "Regina", "Bianca",
                "Alejandra", "Julieta", "Ximena", "Amanda", "Nayeli", "Andrea", "Cecilia", "Rosa",
                "Antonia", "Paula", "Liliana", "Luisa", "Eva", "Patricia", "Marina", "Jimena",
                "Marisol", "Mónica", "Valerie", "Lorena", "Diana", "Paola", "Carmen", "Angélica",
                "Pilar", "Mateo", "Santiago", "Matías", "Sebastián", "Benjamín", "Diego", "Emiliano",
                "Leonardo", "Daniel", "David", "Lucas", "Juan", "Luis", "Andrés", "Gabriel",
                "Carlos", "Joaquín", "José", "Felipe", "Miguel", "Rafael", "Alejandro", "Adrián",
                "Antonio", "Javier", "Mario", "Alex", "Juan Pablo", "Rodrigo", "Esteban", "Víctor",
                "César", "Raul", "Pedro", "Raúl", "Manuel", "Jesús", "Marco", "Héctor", "Martín",
                "Jorge"
            ]
            let lastNames = [
                "García", "Rodríguez", "Martínez", "López", "Hernández", "González", "Pérez",
                "Sánchez", "Ramírez", "Torres", "Flores", "Rivera", "Gómez", "Díaz", "Ortiz",
                "Morales", "Cruz", "Reyes", "Álvarez", "Romero", "Mendoza", "Ruiz", "Castillo",
                "Jiménez", "Vargas", "Herrera", "Medina", "Aguilar", "Silva", "Pineda", "Gutiérrez",
                "Rojas", "Ramos", "Orozco", "Soto", "Chávez", "Guerrero", "Estrada", "Sandoval",
                "Cortés", "Vega", "Méndez", "Montes", "Solís", "Zamora", "Valdez", "Delgado", "Lara",
                "Navarro", "Vásquez", "Fernández", "Ortega", "Guzmán", "Paredes", "Salazar",
                "Gallardo", "Castañeda", "Villanueva", "Campos", "Mejía"
            ]
            super.init(firstNames: firstNames, lastNames: lastNames, inspiration: inspiration)
        case .manga:
            let firstNames = [
                "Ichigo", "Naruto", "Goku", "Luffy", "Sasuke",
                "Vegeta", "Light", "Edward", "Eren", "Gon",
                "Inuyasha", "Lelouch", "Saitama", "Spike", "Ash",
                "Ryuk", "Ichimaru", "Kenshin", "Sakura", "Hinata",
                "Mikasa", "Bulma", "Rukia", "Erza", "Nami",
                "Winry", "Misa", "Holo", "Asuna", "Yuno",
                "Riza", "Shinichi", "Kaneki", "Yusuke", "Kagome",
                "Gon", "Kakashi", "Levi", "Yugi", "Natsu",
                "Jotaro", "Yusuke", "Asta", "Zenitsu", "Gintoki",
                "Kurapika", "Tanjiro", "Sesshomaru", "Renji",
            ]
            let lastNames = [
                "Uzumaki", "Kurosaki", "Son", "Monkey D.", "Uchiha",
                "Brief", "Yagami", "Elric", "Yeager", "Freecss",
                "Taisho", "Lamperouge", "Saitama", "Spiegel", "Ketchum",
                "Ryuk", "Ichimaru", "Himura", "Haruno", "Hyuga",
                "Ackerman", "Brief", "Kuchiki", "Scarlet", "Arlong",
                "Rockbell", "Amane", "Holo", "Yuuki", "Gasai",
                "Gildarts", "Hawkeye", "Kudo", "Keneki", "Urameshi",
                "Higurashi", "Hatake", "Joestar", "Black", "Agatsuma",
                "Sakata", "Kurapika", "Kamado", "Taisho", "Abarai",
            ]
            super.init(firstNames: firstNames, lastNames: lastNames, inspiration: inspiration)
        case .marvel:
            let firstNames = [
                "Iron", "Peter", "Tony", "Captain", "Steve",
                "Bruce", "Black", "Natasha", "Clint", "Thor",
                "Hulk", "Hawkeye", "Wolverine", "Logan", "Deadpool",
                "Wade", "Doctor", "Stephen", "Black", "T'Challa",
                "Scarlet", "Wanda", "Vision", "Captain", "Carol",
                "Thanos", "Loki", "Magneto", "Professor", "Charles",
                "Jean", "Cyclops", "Daredevil", "Matt", "Jessica",
                "Luke", "Winter", "Bucky", "Bouffon-Vert", "Norman",
                "Mystique"
            ]
            let lastNames = [
                "Man", "Parker", "Man", "Stark", "America",
                "Rogers", "Banner", "Widow", "Romanoff", "Barton",
                "Wilson", "Strange", "Panther", "T'Challa", "Witch",
                "Maximoff", "Vision", "Marvel", "Danvers", "X",
                "Xavier", "Grey", "Summers", "Devil", "Murdock",
                "Jones", "Cage", "Soldier", "Barnes", "Osborn"
            ]
            super.init(firstNames: firstNames, lastNames: lastNames, inspiration: inspiration)
        case .thrones:
            let firstNames = [
                "Jon", "Daenerys", "Arya", "Tyrion", "Sansa",
                "Robb", "Cersei", "Jaime", "Bran", "Theon",
                "Margaery", "Jorah", "Hodor", "Brienne", "Davos",
                "Melisandre", "Podrick", "Oberyn", "Ygritte", "Ramsay",
                "Samwell", "Bronn", "Shae", "Gilly", "Grey",
                "Missandei", "Tormund", "Tommen", "Ellaria", "Meera",
                "Euron", "Gendry", "Lyanna", "Viserys", "Mance",
                "Olenna", "Walder", "Loras", "Roose", "Renly",
                "Myrcella", "Rhaegar", "Osha", "Joffrey", "Catelyn",
                "Khal", "Jaqen", "Shireen","Rickon", "Karsi"
            ]
            let lastNames = [
                "Stark", "Lannister", "Targaryen", "Baratheon", "Greyjoy",
                "Tyrell", "Martell", "Bolton", "Mormont", "Tarly",
                "Clegane", "Tully", "Arryn", "Frey", "Karstark",
                "Umber", "Dayne", "Glover", "Hornwood", "Manderly",
                "Reed", "Baelish", "Seaworth", "Flint", "Connington",
                "Forrester", "Glenmore", "Hill", "Lefford", "Locke",
                "Mazin", "Norcross", "Oakheart", "Payne", "Rogers",
                "Ryswell", "Stokeworth", "Tollett", "Vance", "Waters",
                "Wendwater", "Xho", "Yarwyck", "Zollo", "Blackmont",
                "Cassel", "Estermont", "Grafton", "Harlaw"
            ]
            super.init(firstNames: firstNames, lastNames: lastNames, inspiration: inspiration)
        }
    }
}



/* FIN VERSION POO */

class ViewController: UIViewController {

    // NOUVELLE APPLICATION //
    
    // Label "Choisi ton inspiration"
    @IBOutlet weak var inspirationLabel: UILabel!
    
    // BOUTONS //
    // Britannia
    @IBAction func britishNames(_ sender: UIButton) {
        
        let customPseudo = CustomPseudo(inspiration: .britannia)
        pseudoLabel.text = customPseudo.generatePseudoInTwoPart()
        
    }
    // Cherokee
    @IBAction func cherokeeButton(_ sender: UIButton) {
        
        let customPseudo = CustomPseudo(inspiration: .cherokee)
        pseudoLabel.text = customPseudo.generatePseudoInTwoPart()
        
    }
    // Futuriste
    @IBAction func futuristeButton(_ sender: UIButton) {
        
        let customPseudo = CustomPseudo(inspiration: .futuriste)
        pseudoLabel.text = customPseudo.generatePseudoInOnePart()
        
    }
    // Gaullix
    @IBAction func gaullixButton(_ sender: UIButton) {
        
        let customPseudo = CustomPseudo(inspiration: .gaullix)
        pseudoLabel.text = customPseudo.generatePseudoInOnePart()

    }
    // Hollywood
    @IBAction func hollywoodButton(_ sender: UIButton) {
        
        let customPseudo = CustomPseudo(inspiration: .hollywood)
        pseudoLabel.text = customPseudo.generatePseudoInTwoPart()
        
    }
    // Latino
    @IBAction func latinoButton(_ sender: UIButton) {
        
        let customPseudo = CustomPseudo(inspiration: .latino)
        pseudoLabel.text = customPseudo.generatePseudoInTwoPart()
        
    }
    // Manga
    @IBAction func mangaButton(_ sender: UIButton) {
        
        let customPseudo = CustomPseudo(inspiration: .manga)
        pseudoLabel.text = customPseudo.generatePseudoInTwoPart()
        
    }
    // Marvel
    @IBAction func marvelButton(_ sender: UIButton) {
        
        let customPseudo = CustomPseudo(inspiration: .marvel)
        pseudoLabel.text = customPseudo.generatePseudoInTwoPart()
        
    }
    // Game Of Thrones
    @IBAction func thronesButton(_ sender: UIButton) {
        
        let customPseudo = CustomPseudo(inspiration: .thrones)
        pseudoLabel.text = customPseudo.generatePseudoInTwoPart()
        
    }
    
    
    // Label du pseudo généré
    @IBOutlet weak var pseudoLabel: UILabel!
   
}

