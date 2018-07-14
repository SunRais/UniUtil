User.destroy_all

User.create([
	{
		email: "luca.rainieri@student.unife.it",
		encrypted_password: "123456",
		nome: "Luca",
		cognome: "Rainieri",
		sesso: "M",
		numero_matricola: "114960",
		indirizzo: "via Napoleonica 24",
		citta: "Bondeno",
		numero_telefono: "0532892700"
	},
	{
		email: "mattia.fazzi@student.unife.it",
		encrypted_password: "123456",
		nome: "Mattia",
		cognome: "Fazzi",
		sesso: "M",
		numero_matricola: "114963",
		indirizzo: "via Garibaldi 23",
		citta: "Ferrara",
		numero_telefono: "0532881234"
	},
		{
		email: "alberto.gabrielli@student.unife.it",
		encrypted_password: "123456",
		nome: "Alberto",
		cognome: "Gabrielli",
		sesso: "M",
		numero_matricola: "114968",
		indirizzo: "via Pironi 20",
		citta: "Bondeno",
		numero_telefono: "0532892524"
	}
])

p "Created #{User.count} entries. "