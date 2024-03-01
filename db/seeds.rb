# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
puts "oui"
Character.destroy_all
User.destroy_all
user = User.create!(email: "test@test.com", password: "password")

persos = [
  { name: "Iron Man", univers: "Marvel", photo: "https://3.bp.blogspot.com/-PlJTvDfSO9E/XKWxkph-gPI/AAAAAAAABPc/NvU6EPP23xQiQqLgadBvg3bx_aFRK52sACKgBGAs/w0/avengers-endgame-iron-man-tony-stark-uhdpaper.com-4K-82.jpg",
    description: "Anthony Edward « Tony » Stark était un génie excentrique, milliardaire, playboy et philanthrope, ainsi que l'ancien PDG de Stark Industries. Utilisant sa propre richesse et sa connaissance technique exceptionnelle, Stark joussait d'une vie de playboy durant des années jusqu'à ce qu'il ne soit capturé par les Dix Anneaux.",
    competence: "Finance",
    note: "5/5" },

  { name: "Miss Hulk", univers: "Marvel", photo: "https://www.marvel-cineverse.fr/medias/images/misshulk-imgprofil.jpg",
    description: "Jennifer Sue « Jen » Walters, Esq. est une ancienne avocate chez Goodman, Lieber, Kurtzberg & Holliway et une ancienne Procureure de District Adjointe pour la ville de Los Angeles. Après être entrée en contact avec le sang de son cousin Bruce Banner, elle subit une transformation physique similaire à la sienne.",
    competence: "Musculation",
    note: "5/5" },

  { name: "Spider-Man", univers: "Marvel", photo: "https://www.marvel-cineverse.fr/medias/images/spidermannwh-final-cardvignette.jpg",
    description: "Peter Benjamin Parker combat le crime à travers New York sous le nom de Spider-Man, servant les habitants et espérant rejoindre les Avengers. Il fut approché par Tony Stark qui recruta Spider-Man pour rejoindre la Guerre Civile des Avengers, mettant brièvement Spider-Man en conflit avec son idole, Captain America.",
    competence: "Tissage",
    note: "3/5" },

  { name: "Thor", univers: "Marvel", photo: "https://www.marvel-cineverse.fr/medias/images/thorl-t-cardvignette.jpg",
    description: "Thor Odinson est le Dieu du Tonnerre Asgardien, l'ancien Roi d'Asgard et de la Nouvelle Asgard et un membre fondateur des Avengers. Quand son comportement irresponsable et impétueux relança un conflit entre Asgard et Jotunheim, Thor se vit refuser son droit d'être Roi, déposédé de son pouvoir et banni par son père Odin sur Terre.",
    competence: "Musculation",
    note: "1/5" },

  { name: "Captain Marvel", univers: "Marvel", photo: "https://www.marvel-cineverse.fr/medias/images/captainmarvel-cm2-cardvignette.jpg",
    description: "Carol Susan Jane Danvers est une ancienne pilote de l'US Air Force qui a obtenu des pouvoirs cosmiques considérables. Elle fut changée en hybride humaine et Kree par une transfusion sanguine venant de Yon-Rogg, tout en voyant ses souvenirs être supprimés, la transformant en une arme Kree et une membre de la Starforce.",
    competence: "Leadership",
    note: "5/5" },

  { name: "Loki", univers: "Marvel", photo: "https://www.marvel-cineverse.fr/medias/images/lokicardvignette.jpg",
    description: "Loki était le fils de Laufey, le dirigeant des Géants des Glaces de Jotunheim. Retrouvé par Odin, Loki fut amené sur Asgard, puis adopté par lui et sa femme Frigga en tant que prince Asgardien, aux côtés de Thor. Quand Thor s'apprêtait à être couronné Roi, Loki sabota la cérémonie en laissant les Géants des Glaces attaquer Asgard.",
    competence: "Magie",
    note: "4/5" },

  { name: "Docteur Strange", univers: "Marvel", photo: "https://www.marvel-cineverse.fr/medias/images/doctorstrange-dsmom-cardvignette-1.jpg",
    description: "Le Docteur Stephen Vincent Strange est un Maître des Arts Mystiques. Neurochirurgien, Strange subit un accident de voiture qui conduisit à une quasi-paralysie des mains. La médecine moderne ne parvint pas à le guérir, Strange s'embarqua dans un voyage vers Kamar-Taj, où il fut entraîné sur les voies de la magie et du Multivers.",
    competence: "Médecine",
    note: "4/5" },

  { name: "Anakin Skywalker", univers: "Star Wars", photo: "https://www.anakinworld.com/_next/image?url=https%3A%2F%2Fmedia.anakinworld.com%2Fuploads%2Fentries%2Fsquare_maxi%2Fpersonnage-anakin-skywalker.jpg%3Fts%3D1649009547&w=1080&q=75",
    description: "Depuis sa naissance, Anakin Skywalker et sa mère furent la propriété de Gardulla The Elder la Hutt. On lui avait implanté, comme tous les autres esclaves, une puce qui exploserait si jamais il venait à s'enfuir de la planète. Il fit sortir discrètement de nombreux esclaves de la forteresse de Gardulla The Elder.",
    competence: "Education",
    note: "5/5" },

  { name: "Ahsoka Tano", univers: "Star Wars", photo: "https://www.anakinworld.com/_next/image?url=https%3A%2F%2Fmedia.anakinworld.com%2Fuploads%2Fentries%2Fsquare_maxi%2Fahsoka-tano-53763f2352ff586d84a955aecf555888e162f28e.jpg%3Fts%3D1656401004&w=1080&q=75",
    description: "Tandis que la Guerre des Clones commençait à peine, Anakin Skywalker fut adoubé ; il put donc, comme n'importe quel autre Chevalier de l'Ordre Jedi, se choisir son propre Padawan... Disons plutôt qu'il aurait pu ! Ce n'était pas du tout dans ses intentions : l'Élu considérait en effet qu'un Padawan n'aurait fait que le ralentir.",
    competence: "Make-up",
    note: "4/5" },

  { name: "Chewbacca", univers: "Star Wars", photo: "https://www.anakinworld.com/_next/image?url=https%3A%2F%2Fmedia.anakinworld.com%2Fuploads%2Fentries%2Fsquare_maxi%2Fchewbacca-8f891de8afc396fe13b822a72f428ee52923fe8e.jpeg%3Fts%3D1649013350&w=1200&q=75",
    description: "Né aux environs de 200 ans av. la Bataille de Yavin, Chewbacca avait participé à la Guerre des Clones en combattant du côté de la République Galactique et de ses troupes. Le Wookiee avait tissé des liens particuliers avec les commandants Jedi, et c'est tout naturellement qu'il se rangea de leur côté lorsque l'Ordre 66 fut invoqué.",
    competence: "Coiffure",
    note: "2/5" },

  { name: "Yoda", univers: "Star Wars", photo: "https://www.anakinworld.com/_next/image?url=https%3A%2F%2Fmedia.anakinworld.com%2Fuploads%2Fentries%2Fsquare_maxi%2Fpersonnage-yoda.jpg%3Fts%3D1652427308&w=3840&q=75",
    description: "Yoda fut l'un des Jedi les plus hauts gradés de l'Ordre à survivre à la Grande Purge. Il fut aussi l'un des plus âgé : neuf cents ans. Pendant toutes ces années, il vit des catastrophes, des empires s'élever puis tomber. Il vit défiler des milliers d'étudiants, et mourir bien des collègues.",
    competence: "Méditation",
    note: "5/5" },

  { name: "Din Djarin", univers: "Star Wars", photo: "https://www.anakinworld.com/_next/image?url=https%3A%2F%2Fmedia.anakinworld.com%2Fuploads%2Fentries%2Fsquare_maxi%2Fdin-djarin-944c63244f650a33b73e72aab67232450911350c.webp%3Fts%3D1654758712&w=3840&q=75",
    description: "Né dans les dernières années avant la chute de la République, Din Djarin passa les premières années de sa vie avec ses parents sur Aq Vetina. Lorsque la Guerre des Clones éclata en prélude à l’instauration de l’Empire Galactique, la Galaxie fut plongée dans la guerre et ses impacts furent multiples, jusqu’à Aq Vetina.",
    competence: "Négocation",
    note: "5/5" },

  { name: "Padmé Amidala", univers: "Star Wars", photo: "https://www.anakinworld.com/_next/image?url=https%3A%2F%2Fmedia.anakinworld.com%2Fuploads%2Fentries%2Fsquare_maxi%2Fpersonnage-padme-amidala.jpg%3Fts%3D1649009577&w=1080&q=75",
    description: "Padmé Amidala Naberrie eut une longue carrière au service de sa planète natale. Sa famille : son père Ruwee, sa mère Jobal, sa grande soeur Sola, déménagèrent pour Theed après sa naissance. C'est ainsi que Padmé reçut la meilleure éducation de la planète. A l'âge de sept ans, elle fut enrôlée dans le Mouvement de Secours aux Réfugiés.",
    competence: "Conseils matrimoniaux",
    note: "5/5" },

  { name: "Obi-Wan Kenobi", univers: "Star Wars", photo: "https://www.anakinworld.com/_next/image?url=https%3A%2F%2Fmedia.anakinworld.com%2Fuploads%2Fentries%2Fsquare_maxi%2Fpersonnage-obi-wan-kenobi.jpg%3Fts%3D1649009577&w=1080&q=75",
    description: "Né cinquante-sept ans avant la Bataille de Yavin, Obi-Wan Kenobi vécut de l'enfance à l'adolescence entre les murs du Temple Jedi comme des centaines de padawans avant lui. A l'âge de douze ans, Yoda fut son tuteur ainsi que de nombreux autres instructeurs. Mais jamais aucun n'osa le prendre sous son aile pour le former.",
    competence: "Charisme",
    note: "5/5" },

  { name: "Belle", univers: "Princesses Disney", photo: "https://www.chroniquedisney.fr/imgPerso/princesse/1991-belle-01.jpg",
    description: "Premier rôle féminin de La Belle et la Bête, Belle est une jeune femme vivant aux côtés de son père Maurice au cœur de la campagne française dans un charmant petit village très tranquille, trop tranquille, en réalité, pour cet esprit libre qui rêve d’aventures et du grand amour, vivant en total décalage avec la population locale.",
    competence: "Lecture",
    note: "5/5" },

  { name: "Blanche Neige", univers: "Princesses Disney", photo: "https://www.chroniquedisney.fr/imgPerso/princesse/1937-blanche-neige-001.jpg",
    description: "Blanche Neige inscrit son nom dans l’œuvre de Jacob et Wilhelm Grimm en 1812. Les deux s’inspirent alors de versions antérieures de l’histoire pour créer la leur: ainsi Blanche Neige est la fille naturelle d’une Reine. Malheureuse de ne pas avoir d’enfant, assise sur le rebord d’une fenêtre, elle passe ses journées à coudre.",
    competence: "Cuisine",
    note: "5/5" },

  { name: "Ariel", univers: "Princesses Disney", photo: "https://www.chroniquedisney.fr/imgPerso/princesse/1989-ariel-001.jpg",
    description: "Apparue en 1837 dans le conte éponyme d’Hans Christian Andersen, la Petite Sirène fait partie de ce peuple de la mer vivant loin en-dessous de la surface. Fille du roi à présent veuf, l’enfant est élevée avec ses cinq sœurs au cœur d’un château aux murs de corail, aux fenêtres d’ambre et aux toits faits de coquillages.",
    competence: "Natation",
    note: "4/5" },

  { name: "Mulan", univers: "Princesses Disney", photo: "https://www.chroniquedisney.fr/imgPerso/princesse/1998-mulan-01.jpg",
    description: "Issue du folklore populaire chinois, l’existence de Fa Mulan est aujourd’hui encore sujette à débats. Chantée par les poètes depuis des siècles, Mulan aurait vécu au Ve siècle, à l’époque de la dynastie Wei. Originaire du nord de la Chine actuelle, son prénom signifie « Magnolia » en mandarin. Elle est tisseuse de son état.",
    competence: "Arts-martiaux",
    note: "5/5" },

  { name: "Pocahontas", univers: "Princesses Disney", photo: "https://www.chroniquedisney.fr/imgPerso/princesse/1995-pocahontas-01.jpg",
    description: "Personnage historique d’envergure dont l’histoire a rejoint la légende, Pocahontas est née aux alentours de 1595-1596 à l’est de l’actuelle Virginie. De son vrai nom Mataoaka qui signifie « Petite plume de neige », elle est la fille de Wahunsunacock, le chef d'une confédération occupant le territoire de Tsenacommacah.",
    competence: "Environnement",
    note: "4/5" },

  { name: "Jasmine", univers: "Princesses Disney", photo: "https://static.wikia.nocookie.net/lemondededisney/images/b/ba/Jasmine_Aladdin.png/revision/latest?cb=20231015080746&path-prefix=fr",
    description: "Elle est indépendante, intelligente, elle a du cran et suit les inclinations de son cœur. Jasmine étouffe sous la tutelle de son père, le sultan. À quelques jours de ses seize ans, le jour où par la loi elle doit choisir un prétendant, elle décide de fuguer et se réfugie au marché.",
    competence: "Communication animale",
    note: "5/5" },

  { name: "Raiponce", univers: "Princesses Disney", photo: "https://static.wikia.nocookie.net/lemondededisney/images/d/d7/Raiponce.png/revision/latest?cb=20120731205736&path-prefix=fr",
    description: "La princesse Raiponce (Rapunzel en anglais et allemand) est un personnage de fiction inspiré par le personnage du conte Raiponce des frères Grimm. Elle apparut pour la première fois dans le long métrage d'animation Raiponce (Tangled), en 2010. Elle fait partie de la franchise Princesses Disney.",
    competence: "Poêle",
    note: "3/5" }
]

persos.each do |perso|
  photo = URI.open(perso[:photo])
  character = Character.create!(
    user: user,
    name: perso[:name],
    univers: perso[:univers],
    description: perso[:description],
    competence: perso[:competence],
    note: perso[:note]
  )
  character.photo.attach(io: photo, filename: "#{perso[:name]}.png", content_type: "image/png")
  character.save
end
