# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Characters.create!([{
  name: "Iron Man",
  univers: "Marvel",
  description: "Anthony Edward « Tony » Stark était un génie excentrique, milliardaire, playboy et philanthrope, ainsi que l'ancien PDG de Stark Industries. Utilisant sa propre richesse et sa connaissance technique exceptionnelle, Stark joussait d'une vie de playboy durant des années aux côtés de son ami militaire James Rhodes jusqu'à ce qu'il ne soit capturé par les Dix Anneaux. Sa vie étant en danger, Stark créa une armure blindée qu'il utilisa pour échapper à ses ravisseurs, retourner chez lui et devenir le super-héros en armure connu sous le nom d'Iron Man, affrontant les terroristes ainsi que son ancien partenaire commercial Obadiah Stane. Stark apprécia la renommée de sa nouvelle identité secrète et décida de la partager au monde entier, déclarant publiquement qu'il était Iron Man.",
  image:
},
{
  name: "Miss Hulk",
  univers: "Marvel",
  description: "Jennifer Sue « Jen » Walters, Esq. est une ancienne avocate chez Goodman, Lieber, Kurtzberg & Holliway et une ancienne Procureure de District Adjointe pour la ville de Los Angeles. Après être entrée en contact avec le sang de son cousin Bruce Banner, elle subit une transformation physique similaire à la sienne et commença à se faire connaître comme Miss Hulk. Elle fut alors embauchée par GLK/H pour devenir le visage de leur nouveau service des droits des super-humains. Walters fut à la tête de nombreuses affaires, notamment pour l'Abomination ou Wong. Elle se retrouva également au milieu d'une intense rivalité à sens unique face à l'influence aux super-pouvoirs Titania.",
  image:
},
{
  name: "Spider-Man",
  univers: "Marvel",
  description: "Peter Benjamin Parker est un lycéen qui combat le crimes à travers New York sous le nom de Spider-Man, servant les habitants de son voisinage et espérant rejoindre les Avengers et leurs exploits. Tandis que Parker jonglait entre ses activités super-héroïques et les exigences de sa vie étudiante, il fut approché par Tony Stark qui recruta Spider-Man pour rejoindre la Guerre Civile des Avengers, mettant brièvement Spider-Man en conflit avec son idole, Captain America. Parker accepta et reçut un nouveau costume avec des technologies Stark en échange de son aide, bien que Stark ne fit pas de lui un membre officiel des Avengers. Parker retourna ensuite à sa vie normale et à ses activités héroïques.",
  image:
},
{
  name: "Thor",
  univers: "Marvel",
  description: "Thor Odinson est le Dieu du Tonnerre Asgardien, l'ancien Roi d'Asgard et de la Nouvelle Asgard et un membre fondateur des Avengers. Quand son comportement irresponsable et impétueux relança un conflit entre Asgard et Jotunheim, Thor se vit refuser son droit d'être Roi, déposédé de son pouvoir et banni par son père Odin sur Terre. Exilé sur Terre, Thor apprit l'humilité, découvrit l'amour avec Jane Foster et aida à sauver ses nouveaux amis du Destructeur envoyé par son frère adoptif Loki, sacrifiant sa propre vie pour sauver celles de mortels innocents. Grâce à son acte de sacrifice désintéressé, Thor se racheta aux yeux de son père et récupéra son pouvoir, qu'il utilisa alors pour vaincre aux plans de génocide de Loki.",
  image:
},
{
  name: "Captain Marvel",
  univers: "Marvel",
  description: "Carol Susan Jane Danvers est une ancienne pilote de l'US Air Force qui, après avoir été exposé à l'énergie du Tesseract via la destruction d'un moteur supraluminique, a obtenu des pouvoirs cosmiques considérables. Elle fut changée en hybride humaine et Kree par une transfusion sanguine venant de Yon-Rogg, tout en voyant ses souvenirs être supprimés, la transformant en une arme Kree et une membre de la Starforce. Opérant maintenant comme Vers, elle fut capturée par les Skrulls durant la Guerre Kree-Skrull, l'amenant de nouveau sur Terre et commençant à se rappeler son passé, avec l'aide de Nick Fury et de Maria Rambeau. Vers découvrit également que Yon-Rogg et l'Empire Kree l'avaient manipulé depuis des années et apprit que Talos que les Skrulls cherchaient simplement un nouveau monde. Avec cette information, Danvers rejeta sa personnalité de Vers, libéra son véritable pouvoir, puis empêcha l'invasion Kree sur Terre qui était menée par Ronan l'Accusateur, avant de partir à travers la galaxie pour terminer les travaux de sa défunte mentor Mar-Vell, l'honorant en se faisant connaître comme Captain Marvel.",
  image:
},
{
  name: "Loki",
  univers: "Marvel",
  description: "Loki était le fils de Laufey, le dirigeant des Géants des Glaces de Jotunheim, qui fut abandonné et laissé pour mort peu après sa naissance. Retrouvé par Odin, Loki fut amené sur Asgard, puis adopté par lui et sa femme Frigga en tant que prince Asgardien, aux côtés de Thor. Quand Thor s'apprêtait à être couronné Roi, Loki sabota la cérémonie en laissant les Géants des Glaces attaquer Asgard, amenant Thor à vouloir prendre sa vengeance contre Jotunheim et à se faire bannir sur Terre tandis que Loki découvrait la vérité à propos de son héritage. Frigga conféra le trône à Loki quand Odin sombra dans son sommeil ; toutefois, quand les Trois Guerriers et Sif tentèrent de ramener Thor, Loki fut forcé d'essayer de les arrêter. Néanmoins, Thor revint de son exil sur Terre et mit fin au règne de Loki. Face à la désapprobation d'Odin quant à ses actes, Loki se laissa tomber dans les profondeurs obscures de l'univers, entrant dans un trou de ver créé par la soudaine disparation du Bifrost.",
  image:
},
{
  name: "Docteur Strange",
  univers: "Marvel",
  description: "Le Docteur Stephen Vincent Strange, également connu comme Docteur Strange, est un Maître des Arts Mystiques. Neurochirurgien brillant mais également arrogant, Strange subit un terrible accident de voiture qui conduisit à une quasi-paralysie de ses mains. Quand la médecine moderne ne parvint pas à le guérir, Strange s'embarqua dans un voyage vers Kamar-Taj, où il fut entraîné par l'Ancien sur les voies de la magie et du Multivers. Bien qu'il se concentrait à soigner ses mains, Strange fut projeté dans un conflit contre Kaecilius et les Zélotes, qui œuvraient pour le compte de Dormammu dans l'optique de fusionner la Terre avec la Dimension Noire et obtenir la vie éternelle. Après la mort de l'Ancien et la défaite de Kaecilius, Strange devint le nouveau protecteur du Sanctuaire Sacré de New York, chargé de défendre la Terre contre les menaces interdimensionnelles.",
  image:
},
{
  name: "Anakin Skywalker",
  univers: "Star Wars",
  description: "Depuis sa naissance, Anakin Skywalker et sa mère furent la propriété de Gardulla The Elder la Hutt. On lui avait implanté, comme tous les autres esclaves, une puce qui exploserait si jamais il venait à s'enfuir de la planète. Tout jeune déjà, Anakin rêvait de libérer les esclaves, sans que cela ne reste de vaines paroles, car il fit sortir discrètement de nombreux esclaves de la forteresse de Gardulla The Elder.",
  image:
},
{
  name: "Ahsoka Tano",
  univers: "Star Wars",
  description: "Tandis que la Guerre des Clones commençait à peine, Anakin Skywalker fut adoubé ; il put donc, comme n'importe quel autre Chevalier de l'Ordre Jedi, se choisir son propre Padawan... Disons plutôt qu'il aurait pu, en fait ! Mais ce n'était pas du tout dans ses intentions : l'Élu considérait en effet qu'un Padawan n'aurait fait que le ralentir. Yoda, toutefois, prit les devants, et il lui désigna lui-même une élève à former. Il s'agissait d'une jeune novice, qu'il avait promue au rang de Padawan en dépit de son jeune âge, afin de responsabiliser son nouveau maître. Ce dernier avait d'ailleurs l'intuition que son propre mentor : Obi-Wan Kenobi, avait également joué un rôle dans l'affaire...",
  image:
},{
  name: "Chewbacca",
  univers: "Star Wars",
  description: "Né aux environs de 200 ans avant la Bataille de Yavin sur Kashyyyk, Chewbacca avait participé à la Guerre des Clones en combattant du côté de la République Galactique et de ses troupes. Le Wookiee avait tissé des liens particuliers avec les commandants Jedi, et c'est tout naturellement qu'il se rangea de leur côté lorsque l'Ordre 66 fut invoqué. De fait, Chewbacca se trouvait avec Tarfull et le Maître Jedi Yoda lorsque le Commandant Gree et ses hommes se retournèrent contre leurs officiers. Les deux wookiees aidèrent Yoda à quitter discrètement Kashyyyk afin d'échapper à la Purge Jedi.",
  image:
},{
  name: "Yoda",
  univers: "Star Wars",
  description: "Yoda fut l'un des Jedi les plus hauts gradés de l'Ordre à survivre à la Grande Purge. Il fut aussi l'un des plus âgé : neuf cents ans. Pendant toutes ces années, il vit des catastrophes, des empires s'élever puis tomber. Il vit défiler des milliers d'étudiants, et mourir bien des collègues.",
  image:
},{
  name: "Din Djarin",
  univers: "Star Wars",
  description: "Né dans les dernières années avant la chute de la République, Din Djarin passa les premières années de sa vie avec ses parents sur Aq Vetina. Lorsque la Guerre des Clones éclata en prélude à l’instauration de l’Empire Galactique, la Galaxie fut plongée dans la guerre et ses impacts furent multiples, jusqu’à Aq Vetina. Lorsque la planète fut attaquée par la Confédération des Systèmes Indépendants, Djarin était encore un enfant et ses parents eurent juste le temps de le mettre à l’abri des droïdes de combat séparatistes avant d’être tués. La cachette du jeune garçon fut rapidement découverte par les droïdes. Il ne dût sa survie qu’à l’intervention des Mandaloriens du Death Watch, venus combattre aux côtés des colons. Un des Mandalorien élimina le droïde juste avant qu’il ne fasse feu sur l’enfant.",
  image:
},{
  name: "Padmé Amidala",
  univers: "Star Wars",
  description: "Sur Naboo, on entrait au service de la nation entre l'âge de douze ans et de vingt ans. Padmé Amidala Naberrie eut une longue carrière au service de sa planète natale. Sa famille : son père Ruwee, sa mère Jobal, sa grande soeur Sola, déménagèrent pour Theed après sa naissance. C'est ainsi que Padmé reçut la meilleure éducation de la planète (on comparait l'université de Theed à celle de Mrlsst et d'Obroa-Skai), et prenant occasionnellement avec ses camarades de promotion, des retraites bien méritées dans la Contrée des Lacs.
  A l'âge de sept ans, elle fut enrôlée dans le Mouvement de Secours aux Réfugiés, une organisation dans laquelle son père avait joué un grand rôle. Durant l'une de ses missions, sur Shadda-Bi-Boran, elle aida à reloger les habitants dont le soleil avait explosé. Cependant, de nombreux réfugiés moururent, notamment la jeune N'a-kee-tula, lorsque les secours, trop peu nombreux, ne purent accueillir de réfugiés supplémentaires.",
  image:
},{
  name: "Obi-Wan Kenobi",
  univers: "Star Wars",
  description: "Né cinquante-sept ans avant la Bataille de Yavin, Obi-Wan Kenobi vécut de l'enfance à l'adolescence entre les murs du Temple Jedi comme des centaines de padawans avant lui. A l'âge de douze ans, Yoda fut son tuteur ainsi que de nombreux autres instructeurs. Mais jamais aucun Chevalier ni aucun Maître Jedi n'osa le prendre sous son aile pour le former, et lorsqu'il eut treize ans, le Conseil des Jedi décida de se débarrasser un peu de lui en le mettant dans le Corps d'Agriculture Jedi, un expérience très ennuyeuse pour le jeune Obi-Wan. Après avoir passé trop de temps sur Bandomeer, Obi-Wan aida le Maître Qui-Gon Jinn à déjouer un complot de l'ancien apprenti de Qui-Gon, Xanatos. Impressionné par les dons d'Obi-Wan, le Maître décida de prendre Obi-Wan sous son aile et de le former.",
  image:
},
{
  name: "Belle",
  univers: "Princesses Disney",
  description: "Premier rôle féminin du classique de 1991 La Belle et la Bête, Belle est une jeune femme épanouie vivant aux côtés de son père Maurice au cœur de la campagne française dans un charmant petit village très tranquille... Trop tranquille, en réalité, pour cet esprit libre qui rêve d’aventures et du grand amour. Vivant en total décalage avec la population locale, laquelle ne peut d’ailleurs s’empêcher de cancaner sur son passage, l’héroïne ne comprend pas, en effet, le peu d’intérêt de ses gens qui, autour d’elle, se sont englués dans la même routine sans se soucier réellement d’autre chose que de leur petite vie paisible. Aussi, ne trouvant aucune personne avec qui discuter, hormis son père et le libraire, Belle se plonge dans les livres, accentuant encore les commérages des bonnes gens qui, estimant qu’elle a toujours la tête dans les nuages, préfèrent l’ignorer. Seul Gaston, le bellâtre écervelé du coin, manifeste de l’intérêt pour la demoiselle, la plus belle du village qu’il souhaite intéressée à des « choses plus importantes » que ses simples lectures dont il ne comprend lui-même rien.",
  image:
},{
  name: "Blanche Neige",
  univers: "Princesses Disney",
  description: "Blanche Neige inscrit son nom dans l’œuvre de Jacob et Wilhelm Grimm en 1812. Les deux frères s’inspirent alors de versions antérieures de l’histoire pour créer la leur. Ils présentent ainsi Blanche Neige comme la fille naturelle d’une Reine. Malheureuse de ne pas avoir d’enfant, celle-ci se lamente sur son sort. Assise sur le rebord d’une fenêtre en bois d’ébène, elle passe ses journées à coudre. Un jour d’hiver, elle se pique le doigt avec son aiguille. Trois gouttes de sang tombent dans la neige. La Reine se met alors à rêver d’avoir un jour une fille à la peau blanche comme la neige, aux lèvres rouges comme le sang et aux cheveux noirs comme l’ébène."
  image:
},{
  name: "Ariel",
  univers: "Princesses Disney",
  description: "Apparue en 1837 dans le conte éponyme d’Hans Christian Andersen, la Petite Sirène fait partie de ce peuple de la mer vivant loin en-dessous de la surface. Fille du roi à présent veuf, l’enfant est élevée avec ses cinq sœurs au cœur d’un château aux murs de corail, aux fenêtres d’ambre et aux toits faits de coquillages. Présentée comme « la plus belle » de la fratrie, elle possède une « peau douce et diaphane comme une feuille de rose et les yeux bleus comme un lac profond ».",
  image:
},{
  name: "Mulan",
  univers: "Princesses Disney",
  description: "Issue du folklore populaire chinois, l’existence de Hua Mulan, ou Fa Mulan, est aujourd’hui encore sujette à débats. Chantée par les poètes depuis des siècles, l’histoire, en effet, se mêle à la légende. Mulan aurait vécu au Ve siècle, à l’époque de la dynastie Wei. Originaire du nord de la Chine actuelle, la jeune femme, dont le prénom signifie « Magnolia » en mandarin, est tisseuse de son état. La légende raconte alors qu’elle aurait pris les armes et l’armure de son père afin de combattre à sa place contre l’envahisseur mongol. Habillée en homme, elle aurait ainsi quitté sa famille, avec l’accord de ses parents cependant, et passé douze ans sur les champs de bataille dans les rangs de l’armée de l’empereur Taiwudi. Ce n’est qu’à la toute fin de son épopée, lorsque la guerre fut terminée, qu’elle aurait enfin révélé sa véritable identité. Se présentant devant ses camarades le visage maquillé et vêtue d’une robe, elle aurait alors profondément choqué son régiment. Néanmoins, malgré le fait qu’elle soit une femme, elle aurait reçu les honneurs de la part de ses officiers et des dirigeants du pays qui lui auraient offert un poste à responsabilité. La jeune femme aurait néanmoins décliné, demandant seulement à ce qu'un cheval rapide lui soit donné afin de rentrer chez elle et dès lors retourner le plus tôt possible à sa vie d’antan.",
  image:
},{
  name: "Pocahontas",
  univers: "Princesses Disney",
  description: "Personnage historique d’envergure dont l’histoire a, par bien des aspects, rejoint la légende, Pocahontas est née aux alentours de 1595-1596 à l’est de l’actuelle Virginie. De son vrai nom Mataoaka (ou Matoax) qui signifie « Petite plume de neige », elle est la fille de Wahunsunacock, le chef des Powhatans, une confédération occupant le territoire de Tsenacommacah situé dans la baie de Chesapeake et dans lequel sont rassemblés près de vingt-mille Amérindiens issus d’une trentaine de tribus algonquiennes. Sa jeunesse, peu documentée, est de fait mal connue des historiens. Sa mère, Nonoma Winanuske Matatiske, une femme sans doute issue de basse extraction, serait morte en couche. Rien n’atteste, toutefois, cette information. Mataoka est dès lors élevée par son père qui, polygame, est à la tête d’une fratrie de nombreux enfants.",
  image:
},{
  name: "Jasmine",
  univers: "Princesses Disney",
  description: "Elle est indépendante, intelligente, elle a du cran et suit les inclinations de son cœur. Jasmine a souffert de la vie confinée au palais et étouffe sous la tutelle de son père, le sultan. À quelques jours de ses seize ans, le jour où par la loi elle doit choisir un prétendant, elle décide de fuguer et se réfugie au marché. Là, à la suite d'une altercation avec un marchand, Aladdin la tire de ce mauvais pas. C'est à ce moment que commence une magnifique histoire d'amour qui aura pour but, sous la permission du sultan, de réunir le pauvre voleur et la belle princesse.",
  image:
},{
  name: "Raiponce",
  univers: "Princesses Disney",
  description: "La princesse Raiponce (Rapunzel en anglais et allemand) est un personnage de fiction inspiré par le personnage du conte Raiponce des frères Grimm. Elle apparut pour la première fois dans le long métrage d'animation Raiponce (Tangled), en 2010. Elle fait partie de la franchise Princesses Disney.
  Le prénom de la princesse vient de la fleur de la raiponce. Les énormes yeux verts de Raiponce évoquent la curiosité.",
  image:
},
