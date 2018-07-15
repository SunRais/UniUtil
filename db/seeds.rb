
user1 = User.new(email: "luca.rainieri@student.unife.it", encrypted_password: "$2a$11$pxAydgvulajKzR1154YijOPbFduPTNx06Uzj6j4k1GD46RCRqFMuu", nome: "Luca", cognome: "Rainieri", sesso: "M", numero_matricola: "114960", indirizzo: "via Napoleonica 24", citta: "Bondeno", numero_telefono: "0532892700", is_admin: "true", is_professore: "false")
user2 = User.new(email: "mauro.tortonesi@unife.it", encrypted_password: "$2a$11$P.po0f20KWDCuA8IkYRwzueQookW9k1DG8158tYrbwjtHig0z1AWK", nome: "Mauro", cognome: "tortonesi", sesso: "M", numero_matricola: "000000", indirizzo: "via Garibaldi 23", citta: "Ferrara", numero_telefono: "0532881234", is_admin: "false", is_professore: "true")
user3 = User.new(email: "denni.caselli@student.unife.it", encrypted_password: "$2a$11$pxAydgvulajKzR1154YijOPbFduPTNx06Uzj6j4k1GD46RCRqFMuu", nome: "Denni", cognome: "Caselli", sesso: "M", numero_matricola: "114968", indirizzo: "via Napoleonica 36", citta: "Bondeno", numero_telefono: "0532891718", is_admin: "false", is_professore: "false")
user1.save!(validate: false)
user2.save!(validate: false)
user3.save!(validate: false)
Subject.create(nome: "Programmazione concorrente", cfu: 6, descrizione: "Il corso affronta il tema della programmazione concorrente, di fondamentale importanza per la realizzazione di applicazioni multithreaded che possano garantire elevate prestazioni sulle macchine multiprocessore (o multicore) e nei moderni sistemi distribuiti (come lo stesso Web).")
Subject.create(nome: "Meccanica razionale", cfu: 9, descrizione: "Cinematica e dinamica di sistemi di corpi rigidi soggetti a forze note e a vincoli ideali bilaterali olonomi (o anolonomi integrabili), mobili o fissi. Con particolare attenzione al caso di moti piani e al calcolo delle reazioni vincolari.")
Subject.create(nome: "Scienza delle costruzioni I", cfu: 12, descrizione: "Il corso si propone di fornire le basi concettuali della Meccanica delle strutture e dei continui deformabili, con particolare riferimento alle relazioni fondamentali della statica delle travi sia rigide che elasticamente deformabili, al comportamento di sistemi isostatici di travi, alle relazioni fondamentali dell’equilibrio e della deformazione nei corpi deformabili e all’analisi del comportamento dei mezzi elastici")




	