#Utenti
user1 = User.new(id: 91, email: "mauro.tortonesi@unife.it", encrypted_password: "$2a$11$v.RifFAq38Cb/hLHj.Zxue6a8CvABPYKeZa/9HBKBp/e2E2VmXjmC", name: "Mauro", surname: "Tortonesi", sex: "M", address: "via Garibaldi 23", city: "Ferrara", province: "Ferrara", telephone_number: "0532881234", is_admin: "false", is_professor: "true", badge_number: "0", remember_created_at: "2018-09-29 13:06:27", confirmed_at: "2018-09-29 13:06:22")
user1.save!(validate: false)
user2 = User.new(id: 92, email: "cesare.stefanelli@unife.it", encrypted_password: "$2a$11$v.RifFAq38Cb/hLHj.Zxue6a8CvABPYKeZa/9HBKBp/e2E2VmXjmC", name: "Cesare", surname: "Stefanelli", sex: "M", address: "via Garibaldi 24", city: "Ferrara", province: "Ferrara", telephone_number: "333222333", is_admin: "false", is_professor: "true", badge_number: "0", remember_created_at: "2018-09-29 13:06:27", confirmed_at: "2018-09-29 13:06:22")
user2.save!(validate: false)
user3 = User.new(id: 93, email: "marco.gavanelli@unife.it", encrypted_password: "$2a$11$v.RifFAq38Cb/hLHj.Zxue6a8CvABPYKeZa/9HBKBp/e2E2VmXjmC", name: "Marco", surname: "Gavanelli", sex: "M", address: "via Garibaldi 25", city: "Ferrara", province: "Ferrara", telephone_number: "0345123432", is_admin: "false", is_professor: "true", badge_number: "0", remember_created_at: "2018-09-29 13:06:27", confirmed_at: "2018-09-29 13:06:22")
user3.save!(validate: false)

# Corsi di Studio
Course.create(name: "Laurea in Ingegneria Informatica e dell'Automazione", typology: "magistrale", description: "Il corso di Laurea Magistrale in Ingegneria Informatica e dell'Automazione, offerto dal Dipartimento di Ingegneria dell'Università di Ferrara, è un percorso formativo che fornisce conoscenze e competenze tecnologiche altamente qualificanti e ampiamente richieste dal mondo del lavoro nell'area ICT (Information and Communication Technology) dell'industria e dei servizi.")
Course.create(name: "Laurea in Ingegneria Elettronica e Informatica", typology: "triennale", description: "Il corso di studio fornisce conoscenze e competenze tecnologiche altamente qualificanti per i settori dell'Ingegneria Elettronica e dell'Ingegneria Informatica, e ampiamente richieste dal mondo del lavoro.")
Course.create(name: "Laurea in Ingegneria Civile", typology: "triennale", description: "Il corso di studi in ingegneria civile e ambientale mira a fornire una solida preparazione nelle materie di base dell'ingegneria civile, ponendo attenzione agli aspetti ambientali. Viene infatti data grande importanza all'area matematica e fisica e quindi alle materie fondanti l'ingegneria civile, quali la rappresentazione grafica e il rilievo, l'idraulica, la fisica tecnica, la scienza delle costruzioni, l'architettura tecnica, la topografia, senza perdere di vista aspetti legati al valore economico degli immobili.")

# Materie
Subject.create(id: 1, name: "Sistemi Operativi", cfu: "6", year: "2", semester: "1", description: "Obiettivi del corso sono descrivere le funzioni e l'architettura del sistema operativo e introdurre quindi la programmazione di Shell e la programmazione di sistema nel linguaggio C.", duration: "24", user_id: "92")
Subject.create(id: 2, name: "Reti di Calcolatori", cfu: "6", year: "3", semester: "1",  description: "L’obiettivo del corso è quello di fornire agli studenti una chiara visione dell'architettura della rete Internet e dei modelli e tecnologie per lo sviluppo di servizi Web. Al termine del corso gli studenti dovranno essere in grado di sviluppare applicazioni distribuite secondo il modello Client/Server, utilizzando gli strumenti Unix e Java per la programmazione di rete.", duration: "24", user_id: "91" )
Subject.create(id: 3, name: "Sistemi Distribuiti e Mobili", cfu: "6", year: "1", semester: "1", description: "Il corso descrive i sistemi distribuiti, affrontandone i temi principali, i più importanti modelli e architetture e presentando infine le principali realizzazioni di sistemi, servizi e applicazioni distribuite.", duration: "24", user_id: "92")
Subject.create(id: 4, name: "Constraint Programming", cfu: "6", year: "1", semester: "2", description: "L'obiettivo principale del corso consiste nel fornire allo studente la conoscenza dei principali linguaggi di programmazione dichiarativi fondati sul concetto di vincolo e nel mettere gli studenti in grado di modellare problemi a vincoli nei principali linguaggi a vincoli.", duration: "24", user_id: "93")
Subject.create(id: 5, name: "Linguaggi e Traduttori", cfu: "6", year: "2", semester: "1", description: "Nel corso si affrontano i principali aspetti della teoria dei linguaggi di programmazione, della definizione formale dei linguaggi e degli aspetti teorici e computazionali necessari per effettuare la traduzione ed esecuzione di un programma scritto in un linguaggio ad alto livello su un calcolatore elettronico.", duration: "24", user_id: "93")
Subject.create(id: 6, name: "Laboratorio di Programmazione Concorrente", cfu: "3", year: "1", semester: "1", description: "Il corso affronta il tema della programmazione concorrente, di fondamentale importanza per la realizzazione di applicazioni multithreaded che possano garantire elevate prestazioni sulle macchine multiprocessore (o multicore) e nei moderni sistemi distribuiti (come lo stesso Web).", duration: "24", user_id: "91")
Subject.create(id: 7, name: "Fondamenti di Informatica Modulo A", cfu: "3", year: "1", semester: "1", description: "Nel modulo A dell'insegnamento di Fondamenti di Informatica e laboratorio si apprendono le basi della programmazione strutturata. Viene utilizzato il linguaggio C come esempio.", duration: "24", user_id: "93")

# Tabella di giunzione tra corso di studio e materia
CoursesSubject.create(course_id: "2", subject_id: "1")
CoursesSubject.create(course_id: "2", subject_id: "2")
CoursesSubject.create(course_id: "1", subject_id: "3")
CoursesSubject.create(course_id: "1", subject_id: "4")
CoursesSubject.create(course_id: "1", subject_id: "5")
CoursesSubject.create(course_id: "1", subject_id: "6")
CoursesSubject.create(course_id: "2", subject_id: "7")






	