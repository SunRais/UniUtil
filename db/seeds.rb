
#user1 = User.new(email: "luca.rainieri@student.unife.it", encrypted_password: "$2a$11$pxAydgvulajKzR1154YijOPbFduPTNx06Uzj6j4k1GD46RCRqFMuu", nome: "Luca", cognome: "Rainieri", sesso: "M", numero_matricola: "114960", indirizzo: "via Napoleonica 24", citta: "Bondeno", numero_telefono: "0532892700", is_admin: "true", is_professore: "false")
#user3 = User.new(email: "denni.caselli@student.unife.it", encrypted_password: "$2a$11$pxAydgvulajKzR1154YijOPbFduPTNx06Uzj6j4k1GD46RCRqFMuu", nome: "Denni", cognome: "Caselli", sesso: "M", numero_matricola: "114968", indirizzo: "via Napoleonica 36", citta: "Bondeno", numero_telefono: "0532891718", is_admin: "false", is_professore: "false")
#user1.save!(validate: false)
#user2.save!(validate: false)
#user3.save!(validate: false)
#Subject.create(nome: "Programmazione concorrente", cfu: 6, descrizione: "Il corso affronta il tema della programmazione concorrente, di fondamentale importanza per la realizzazione di applicazioni multithreaded che possano garantire elevate prestazioni sulle macchine multiprocessore (o multicore) e nei moderni sistemi distribuiti (come lo stesso Web).")
#Subject.create(nome: "Meccanica razionale", cfu: 9, descrizione: "Cinematica e dinamica di sistemi di corpi rigidi soggetti a forze note e a vincoli ideali bilaterali olonomi (o anolonomi integrabili), mobili o fissi. Con particolare attenzione al caso di moti piani e al calcolo delle reazioni vincolari.")
#Subject.create(nome: "Scienza delle costruzioni I", cfu: 12, descrizione: "Il corso si propone di fornire le basi concettuali della Meccanica delle strutture e dei continui deformabili, con particolare riferimento alle relazioni fondamentali della statica delle travi sia rigide che elasticamente deformabili, al comportamento di sistemi isostatici di travi, alle relazioni fondamentali dell’equilibrio e della deformazione nei corpi deformabili e all’analisi del comportamento dei mezzi elastici")
#Category.create(nome: "Eventi Sociali")
#Category.create(nome: "Comunicazioni di servizio")
#Category.create(nome: "News dal dipartimento")
#Post.create(titolo: "Career Day al polo di Ingegneria", contenuto: "Nel corso di questa iniziativa potrai incontrare lo staff delle aziende e degli ordini professionali direttamente negli stand, assistere alle presentazioni aziendali e, per chi avrà inviato il proprio CV e sia stato selezionato, sostenere un colloquio dedicato. E' una grande opportunità per comprendere meglio le tue abilità e competenze specifiche e in quali ambiti possano trovare applicazione (non sempre è soltanto laddove te lo aspetti!), per capire quali competenze trasversali si aspettino da te le aziende, per approfondire gli sbocchi occupazionali e infine per imparare ad affrontare nel migliore di modo i  colloqui di lavoro.", user_id: 1, category_id: 1, post_img_file_name: "career.jpg", post_img_content_type: "image/jpeg", post_img_file_size: "29404")
#Post.create(titolo: "Classifica Censis | Unife sempre più internazionale scala posizioni tra gli Atenei di media dimensione", contenuto: "La lente di ingrandimento del Censis ha preso in esame anche le singole aree disciplinari, suddivise per lauree triennali, magistrali e magistrali a ciclo unico, valutate sulla base delle progressioni di carriera e dell'internazionalizzazione di studentesse e studenti. Si sono aggiudicati il primo posto assoluto all'interno delle rispettive aree disciplinari i corsi triennali di Unife nel settore letterario umanistico (per il secondo anno consecutivo) e la laurea a ciclo unico in Architettura, prima nella propria categoria da oltre dieci anni. Numerose le aree disciplinari che fanno registrare ottimi piazzamenti. Rispetto al parametro della progressione di carriera (tasso di persistenza tra I e II anno, di iscritti regolari e di laureati nei tempi previsti), si piazzano al 3° posto assoluto su 34  le triennali di area Chimico Farmaceutica; 4° su 30 la laurea in Scienze motorie e 12° su 40 Atenei le triennali di Ingegneria. Alte nelle classifiche stilate sulla base dell'internazionalizzazione (mobilità studenti, Università ospitanti, iscritti internazionali), le lauree di area letterario-umanistico, di area scientifica (Fisica, Informatica, Matematica), Farmacia e di nuovo Architettura.Ottima posizione infine per il settore Geo-Bio (che comprende le Biotecnologie, Geografia, Scienze biologiche, Scienze e tecnologie per l’ambiente e la natura, Scienze geologiche) anche per i raggruppamenti relativi alle lauree magistrali, per la prima volta presi in esame.", user_id: 1, category_id: 3, post_img_file_name: "dipartimento.jpg", post_img_content_type: "image/jpeg", post_img_file_size: "2459036")
#Post.create(titolo: "Online il Documento di descrizione del percorso di formazione A.A. 2018/19", contenuto: "Pubblicato il documento di descrizione del percorso di formazione con il piano degli studi per l'a.a. 2018/19. La Descrizione del Percorso di formazione è un documento, un tempo denominato Manifesto degli studi, che raccoglie le informazioni fondamentali del corso (distribuzione degli insegnamenti nei diversi anni di corso e  divisione dell'anno accademico in periodi didattici). Viene redatto e pubblicato annualmente e per questo è necessario verificare l’offerta che per ogni anno di corso viene pubblicata, verificando il proprio percorso annuale sul documento aggiornato.", user_id: 1, category_id: 2, post_img_file_name: "orientamento.jpg", post_img_content_type: "image/jpeg", post_img_file_size: "47673")
#Post.create(titolo: "Il progetto di ricerca GST4Water sul National Geographic ", contenuto: "È uscito in questi giorni il nuovo numero del National Geographic Italia, con un ampio reportage sul tema dell’acqua e sul modello emiliano-romagnolo, richiamato anche dall’editoriale del Direttore della testata. Tra i vari progetti a favore del risparmio idrico e di una maggiore consapevolezza nel consumo di acqua, viene anche raccontato il progetto GST4Water, che ha visto come capofila il Laboratorio Terra&AcquaTech del Tecnopolo di Ferrara, diretto dal Prof. Marco Franchini del Dipartimento di Ingegneria dell’Università di Ferrara ed il Laboratorio MechLav. Finanziato dal POR FESR della Regione Emilia-Romagna, il progetto ha sperimentato la realizzazione di kit di monitoraggio che ricevono i dati dai contatori digitali e li trasmettono a un cloud, dove vengono elaborati e resi disponibili per l’utente finale. In questo modo si sa in tempo reale quanto si consuma e si possono identificare subito le perdite, in modo da porvi rimedio prima possibile. L’articolo racconta anche le esperienze di chi ha installato in casa questi dispositivi, come sono cambiate le loro percezioni dei consumi idrici e i loro comportamenti; inoltre viene messa in evidenza la capacità delle tecnologie ICT di risolvere problemi di questa natura con soluzioni a basso costo e semplici da utilizzare anche per le famiglie. Il progetto GST4Water si sta concludendo in queste settimane, ma ha già riscosso notevole interesse non solo nell’ambito accademico ma anche presso le multiutility del settore idrico e il grande pubblico, che sta diventando sempre più sensibile alle tematiche ambientali.", user_id: 1, category_id: 3, post_img_file_name: "acqua.jpg", post_img_content_type: "image/jpeg", post_img_file_size: "125132")
#Review.create(rating:5, commento: "Partecipate tutti ragazzi mi raccomando.", user_id: 2, post_id: 1)
#Review.create(rating:3, commento: "Ho trovato il lavoro!!", user_id: 3, post_id: 1)
#Review.create(rating:1, commento: "Inutile, è una perdita di tempo", user_id: 1, post_id: 1)
#Review.create(rating:5, commento: "Bella notizia", user_id: 2, post_id: 2)
#Review.create(rating:4, commento: "Lo sapevo. La botte piccola fa il vino buono", user_id: 1, post_id: 2)
#Review.create(rating:3, commento: "Grazie. Un po' in ritardo.", user_id: 1, post_id: 3)
#Review.create(rating:4, commento: "Grazie", user_id: 3, post_id: 3)
#Review.create(rating:5, commento: "Siamo internazionali!!", user_id: 1, post_id: 4)
#Review.create(rating:4, commento: "Grandi ragazzi.", user_id: 2, post_id: 4)
#Review.create(rating:5, commento: "Università di Ferrara sempre al top.", user_id: 3, post_id: 4)
#Subject.create(name: "Analisi Matematica I", cfu: "9",  year: "1", semester: "1",  description: "a", duration: "36")
#Subject.create(name: "Geometria e Algebra", cfu: "9", year: "1", semester: "1",  description: "a", duration: "36")
#Subject.create(name: "Fisica II", cfu: "9", year: "1", semester: "2",  description: "a", duration: "36")
#Subject.create(name: "Analisi e Sintesi dei Circuiti Digitali", year: "1", semester: "2", cfu: "6", description: "a", duration: "24")
#Subject.create(name: "Teoria dei circuiti", cfu: "9", year: "2", semester: "1",  description: "a", duration: "36")
#Subject.create(name: "Segnali e Comunicazioni", cfu: "9", year: "2", semester: "2",  description: "a", duration: "36")
#Subject.create(name: "Elettronica Digitale", cfu: "9", year: "2", semester: "2",  description: "a", duration: "36")
#CoursesSubject.create(course_id: "2", subject_id: "3")
#CoursesSubject.create(course_id: "2", subject_id: "4")
#CoursesSubject.create(course_id: "2", subject_id: "5")
#CoursesSubject.create(course_id: "2", subject_id: "6")
#CoursesSubject.create(course_id: "2", subject_id: "7")
#CoursesSubject.create(course_id: "2", subject_id: "8")

user1 = User.new(id: 1, email: "mauro.tortonesi@unife.it", encrypted_password: "$2a$11$v.RifFAq38Cb/hLHj.Zxue6a8CvABPYKeZa/9HBKBp/e2E2VmXjmC", name: "Mauro", surname: "Tortonesi", sex: "M", address: "via Garibaldi 23", city: "Ferrara", province: "Ferrara", telephone_number: "0532881234", is_admin: "false", is_professor: "true", badge_number: "0", remember_created_at: "2018-09-29 13:06:27", confirmed_at: "2018-09-29 13:06:22")
user1.save!(validate: false)

user2 = User.new(id: 2, email: "cesare.stefanelli@unife.it", encrypted_password: "$2a$11$v.RifFAq38Cb/hLHj.Zxue6a8CvABPYKeZa/9HBKBp/e2E2VmXjmC", name: "Cesare", surname: "Stefanelli", sex: "M", address: "via Garibaldi 24", city: "Ferrara", province: "Ferrara", telephone_number: "333222333", is_admin: "false", is_professor: "true", badge_number: "0", remember_created_at: "2018-09-29 13:06:27", confirmed_at: "2018-09-29 13:06:22")
user2.save!(validate: false)

Course.create(name: "Laurea in Ingegneria Informatica e dell'Automazione", typology: "magistrale", description: "Il corso di Laurea Magistrale in Ingegneria Informatica e dell'Automazione, offerto dal Dipartimento di Ingegneria dell'Università di Ferrara, è un percorso formativo che fornisce conoscenze e competenze tecnologiche altamente qualificanti e ampiamente richieste dal mondo del lavoro nell'area ICT (Information and Communication Technology) dell'industria e dei servizi.")
Course.create(name: "Laurea in Ingegneria Elettronica e Informatica", typology: "triennale", description: "Il corso di studio fornisce conoscenze e competenze tecnologiche altamente qualificanti per i settori dell'Ingegneria Elettronica e dell'Ingegneria Informatica, e ampiamente richieste dal mondo del lavoro.")
Course.create(name: "Laurea in Ingegneria Civile", typology: "triennale", description: "Il corso di studi in ingegneria civile e ambientale mira a fornire una solida preparazione nelle materie di base dell'ingegneria civile, ponendo attenzione agli aspetti ambientali. Viene infatti data grande importanza all'area matematica e fisica e quindi alle materie fondanti l'ingegneria civile, quali la rappresentazione grafica e il rilievo, l'idraulica, la fisica tecnica, la scienza delle costruzioni, l'architettura tecnica, la topografia, senza perdere di vista aspetti legati al valore economico degli immobili.")

Subject.create(id: 1, name: "Sistemi Operativi", cfu: "6", year: "2", semester: "1", description: "a", duration: "24", user_id: "2")
Subject.create(id: 2,name: "Reti di Calcolatori", cfu: "6", year: "3", semester: "1",  description: "a", duration: "24", user_id: "1" )

CoursesSubject.create(course_id: "2", subject_id: "1")
CoursesSubject.create(course_id: "2", subject_id: "2")






	