exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.fr = 'Français'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations['Français'] =
    action :
        "Barrel Roll": "Tonneau"
        "Boost": "Accélération"
        "Evade": "Évasion"
        "Focus": "Concentration"
        "Target Lock": "Acquisition de cible"
        "Recover": "Récupération"
        "Reinforce": "Renforcement"
        "Jam": "Brouillage"
        "Coordinate": "Coordination"
        "Cloak": "Occultation"
    slot:
        "Astromech": "Astromech"
        "Bomb": "Bombe"
        "Cannon": "Cannon"
        "Crew": "Équipage"
        "Elite": "Trait de pilote"
        "Missile": "Missile"
        "System": "Système"
        "Torpedo": "Torpille"
        "Turret": "Tourelle"
        "Cargo": "Soute"
        "Hardpoint": "Point d'Attache"
        "Team": "Équipe"
    sources: # needed?
        "Core": "Boite de base"
        "A-Wing Expansion Pack": "Paquet d'extension A-Wing"
        "B-Wing Expansion Pack": "Paquet d'extension B-Wing"
        "X-Wing Expansion Pack": "Paquet d'extension X-Wing"
        "Y-Wing Expansion Pack": "Paquet d'extension Y-Wing"
        "Millennium Falcon Expansion Pack": "Paquet d'extension Faucon Millennium"
        "HWK-290 Expansion Pack": "Paquet d'extension HWK-290"
        "TIE Fighter Expansion Pack": "Paquet d'extension Chasseur TIE"
        "TIE Interceptor Expansion Pack": "Paquet d'extension Intercepteur TIE"
        "TIE Bomber Expansion Pack": "Paquet d'extension Bombardier TIE"
        "TIE Advanced Expansion Pack": "Paquet d'extension TIE Advanced"
        "Lambda-Class Shuttle Expansion Pack": "Paquet d'extension Navette de classe Lambda"
        "Slave I Expansion Pack": "Paquet d'extension Slave I"
        "Imperial Aces Expansion Pack": "Paquet d'extension As Impériaux"
        "Rebel Transport Expansion Pack": "Paquet d'extension Transport Rebelle"
        "Z-95 Headhunter Expansion Pack": "Paquet d'extension Chasseur de têtes Z-95"
        "TIE Defender Expansion Pack": "Paquet d'extension Défenseur TIE"
        "E-Wing Expansion Pack": "Paquet d'extension E-Wing"
        "TIE Phantom Expansion Pack": "Paquet d'extension TIE Fantôme"
        "Tantive IV Expansion Pack": "Paquet d'extension Tantive IV"
        "Rebel Aces Expansion Pack": "Paquet d'extension As Rebelles"
        "YT-2400 Freighter Expansion Pack": "Paquet d'extension Cargo YT-2400"
        "VT-49 Decimator Expansion Pack": "Paquet d'extension Décimateur VT-49"
    ui:
        shipSelectorPlaceholder: "Choisissez un vaisseau"
        pilotSelectorPlaceholder: "Choisissez un pilote"
        upgradePlaceholder: (translator, language, slot) ->
            "Amélioration #{translator language, 'slot', slot}"
        modificationPlaceholder: "Modification"
        titlePlaceholder: "Titre"
        upgradeHeader: (translator, language, slot) ->
            "Amélioration #{translator language, 'slot', slot}"
        unreleased: "non disponible"
        epic: "épique"
    byCSSSelector:
        '.xwing-card-browser .translate.sort-cards-by': 'Trier les cartes par'
        '.xwing-card-browser option[value="name"]': 'Nom'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (par Points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (par Nom)'
        '.xwing-card-browser .translate.select-a-card': 'Sélectionnez une carte depuis la liste sur la guache.'
    singular:
        'pilots': 'Pilote'
        'modifications': 'Modification'
        'titles': 'Titre'
    types:
        'Pilot': 'Pilote'
        'Modification': 'Modification'
        'Title': 'Titre'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders['Français'] = () ->
    exportObj.cardLanguage = 'Français'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()

    # English names are loaded by default, so no update is needed
    exportObj.ships = basic_cards.ships
    
    # Rename ships
    exportObj.renameShip 'TIE Fighter', 'Chasseur TIE'
    exportObj.renameShip 'TIE Interceptor', 'Intercepteur TIE'
    exportObj.renameShip 'TIE Defender', 'Défenseur TIE'
    exportObj.renameShip 'TIE Phantom', 'TIE Fantôme'
    exportObj.renameShip 'TIE Bomber', 'Bombardier TIE'
    exportObj.renameShip 'Lambda-Class Shuttle', 'Navette de classe Lambda'
    exportObj.renameShip 'VT-49 Decimator', 'Décimateur VT-49'
    exportObj.renameShip 'Z-95 Headhunter', 'Chasseur de têtes Z-95'
    exportObj.renameShip 'CR90 Corvette (Aft)', 'Corvette CR90 (poupe)'
    exportObj.renameShip 'CR90 Corvette (Fore)', 'Corvette CR90 (proue)'
    exportObj.renameShip 'GR-75 Medium Transport', 'Transport moyen GR-75'
    

    # Names don't need updating, but text needs to be set
    pilot_translations =
        # Chasseur TIE
        "Academy Pilot":
            ship: "Chasseur TIE"
            name: "Pilote de l'académie"
        "Obsidian Squadron Pilot":
            ship: "Chasseur TIE"
            name: "Pilote de l'escadron Obsidian"
        "Black Squadron Pilot":
            ship: "Chasseur TIE"
            name: "Pilote de l'escadron Noir"
        '"Winged Gundark"':
            ship: "Chasseur TIE"
            text: """Quand vous attaquez à portée 1, vous pouvez échanger 1 de vos résultats %HIT% contre 1 résultat %CRIT%."""
        '"Night Beast"':
            ship: "Chasseur TIE"
            text: """Après avoir exécuté une manœuvre verte, vous pouvez effectuer une action de concentration gratuite."""
        '"Backstabber"':
            ship: "Chasseur TIE"
            text: """Quand vous attque en dehors de l'arc de tir du défenseur, lancez 1 dé d'attaque supplémentaire."""
        '"Dark Curse"':
            ship: "Chasseur TIE"
            text: """Quand vous défendez, les vaisseaux qui vous attquent ne peuvent ni utiliser de marquers de concentration, ni relancer les dés d'attaque."""
        '"Mauler Mithel"':
            ship: "Chasseur TIE"
            text: """Quand vous attaquez à portée 1, lancez 1 dé d'attaque supplémentaire."""
        '"Howlrunner"':
            ship: "Chasseur TIE"
            text: """Quand un autre vaisseau allié situé à portée 1 attaque avec son arme principale, il peut relancer 1 dé d'attaque."""
        # Intercepteur TIE
        "Alpha Squadron Pilot":
            name: "Pilote de l'escadron Alpha"
            ship: "Intercepteur TIE"
        "Avenger Squadron Pilot":
            name: "Pilote de l'escadron Avenger"
            ship: "Intercepteur TIE"
        "Saber Squadron Pilot":
            name: "Pilote de l'escadron Sabre"
            ship: "Intercepteur TIE"
        "Royal Guard Pilot":
            name: "Pilote de la Garde royale"
            ship: "Intercepteur TIE"
        "\"Fel's Wrath\"":
            name: "\"Colère de Fel\""
            ship: "Intercepteur TIE"
            text: """Quand le nombre de cartes de dégâts qui vous est assigné est supérieur ou égal à votre valeur de coque, vous n'êtes pas détruit avant la fin de la phase de combat."""
        "Lieutenant Lorrir":
            ship: "Intercepteur TIE"
            text: """Quand vous effectuez une action de tonneau, vous pouvez recevoir 1 marqueur de stress pour utiliser le gabarit (%BANKLEFT% 1) ou (%BANKRIGHT% 1) à la place du gabarit (%STRAIGHT% 1)."""
        "Kir Kanos":
            ship: "Intercepteur TIE"
            text: """Quand vous attaquez à portée 2-3, vous pouvez dépenser 1 marqueur d'évasion pour ajouter 1 résultat %HIT% result à votre jet."""
        "Tetran Cowall":
            ship: "Intercepteur TIE"
            text: """Quand vous révélez une manœuvre %UTURN% maneuver, vous pouvez considérer la vitesse de celle-ci comme "1", "3" ou "5"."""
        "Turr Phennir":
            ship: "Intercepteur TIE"
            text: """Après avoir effectué une attaque, vous pouvez effectuer une action gratuite d'accélération ou de tonneau."""
        "Carnor Jax":
            ship: "Intercepteur TIE"
            text: """Les vaisseaux ennemis situés à portée 1 ne peuvent pas effectuer d'actions de concentration ou d'évasion, et ne peuvent pas dépenser de marqueur de concentration ou d'évasion."""
        "Soontir Fel":
            ship: "Intercepteur TIE"
            text: """Quand vous recevez un marqueur de stress, vous pouvez assigner 1 marqueur de concentration à votre vaisseau."""
        # TIE Fantôme
        "Sigma Squadron Pilot":
            ship: "TIE Fantôme"
            name: "Pilote l'escadron Sigma"
        "Shadow Squadron Pilot":
            ship: "TIE Fantôme"
            name: "Pilote l'escadron Ombre"
        '"Echo"':
            ship: "TIE Fantôme"
            text: """Quand vous vous désoccultez, vous devez utiliser le gabarit (%BANKLEFT% 2) ou (%BANKRIGHT% 2) à la place du gabarit (%STRAIGHT% 2)."""
        '"Whisper"':
            ship: "TIE Fantôme"
            text: """Après avoir effectué une attaque qui touche, vous pouvez assigner un marqueur de concentration à votre vaisseau."""
        # Défenseur TIE
        "Onyx Squadron Pilot":
            ship: "Défenseur TIE"
            name: "Pilote l'escadron Onyx"
        "Delta Squadron Pilot":
            ship: "Défenseur TIE"
            name: "Pilote l'escadron Delta"
        "Colonel Vessery":
            ship: "Défenseur TIE"
            text: """Quand vous attaquez, juste après avoir lancé les dés d'attaque, vous pouvez vérouiller le défenseur s'il a déjà un marqueur d'acquisition de cible rouge."""
        "Rexler Brath":
            ship: "Défenseur TIE"
            text: """Après avoir effectué une attque qui inflige au moins 1 carte de dégâts au défenseur, vous pouvez dépenser 1 marqueur de concentration pour retourner ces cartes face visible."""
        # Bombardier TIE
        "Scimitar Squadron Pilot":
            ship: "Bombardier TIE"
            name: "Pilote l'escadron Cimeterre"
        "Gamma Squadron Pilot":
            ship: "Bombardier TIE"
            name: "Pilote l'escadron Gamma"
        "Captain Jonus":
            ship: "Bombardier TIE"
            name: "Capitaine Jonus"
            text: "Quand un autre vaisseau allié situé à portée 1 attaque avec une arme secondaire, il peut relancer jusqu'à 2 dés d'attaque."
        "Major Rhymer":
            ship: "Bombardier TIE"
            text: "Quand vous attaquez avec une arme secondaire, vous pouvez augmenter ou réduire de 1 la portée de l'arme dans une limite de portée 1-3."
        # TIE Advanced
        "Tempest Squadron Pilot":
            name: "Pilote l'escadron Tempest"
        "Storm Squadron Pilot":
            name: "Pilote l'escadron Storm"
        "Maarek Stele":
            text: """Si votre attaque se solde par une carte de dégâts face visible pour le défenseur, piochez 3 cartes de dégâts, choisissez-en une que vous lui infligez et défaussez les autres."""
        "Darth Vader":
            name: "Dark Vador"
            text: """Vous pouvez effectuer 2 actions lors de l'étape "Effectuer une action"."""
        # Firespray
        "Bounty Hunter":
            name:"Chasseur de primes"
        "Kath Scarlet":
            text: """Quand vous attaquez, le défenseur reçoit 1 marqueur de stress s'il annule au moins 1 résultat %CRIT%."""
        "Boba Fett":
            text: """Quand vous révélez une manœuvre de virage sur l'aile (%BANKLEFT% ou %BANKRIGHT%), vous pouvez tourner votre cadran sur la manœuvre de virage sur l'aile opposée, à la même vitesse."""
        "Krassis Trelix":
            text: """Quand vous attaquez avec une arme secondaire, vous pouvez relancer 1 dé d'attaque."""
        # Navette de classe Lambda
        "Captain Kagi":
            ship: "Navette de classe Lambda"
            name: "Capitaine Kagi"
            text: """Quand un vaisseau ennemi verrouille une cible, il doit verrouiller votre vaisseau, si possible."""
        "Colonel Jendon":
            ship: "Navette de classe Lambda"
            text: """Au début de la phase de combat, vous pouvez assigner 1 de vos marqueurs d'acquisition de cible bleus à un vaisseau allié situé à portée 1 s'il n'a pas de marqueur d'acquisition de cible bleu."""
        "Captain Yorr":
            ship: "Navette de classe Lambda"
            name: "Capitaine Yorr"
            text: """Quand un autre vaisseau allié situé à portée 1-2 est censé recevoir un marqueur de stress, vous pouvez le recevoir à sa place si vous n'avez pas déjà plus de 2 marqueurs de stress."""
        "Omicron Group Pilot":
            ship: "Navette de classe Lambda"
            name:"Pilote du groupe Omicron"
        # Décimateur VT-49
        "Rear Admiral Chiraneau":
            ship: "Décimateur VT-49"
            name: "Vice-Amiral Chiraneau"
            text: """Quand vous attaquez à portée 1-2, vous pouvez échanger 1 de vos résultats %FOCUS% contre un résultat %CRIT%."""
        # X-Wing
        "Red Squadron Pilot":
            name: "Pilote de l'escadron Rouge"
        "Rookie Pilot":
            name: "Pilote débutant"
        "Wedge Antilles":
            text: """Quand vous attaquez, réduisez la valeur d'agilité du défenseur de 1 (jusqu'à un minimum de 0)."""
        "Garven Dreis":
            text: """Après avoir utilisé un marqueur de concentration, vous pouvez placer ce dernier sur tout autre vaisseau allié situé à portée 1 ou 2 (plutôt que de le défausser)."""
        "Biggs Darklighter":
            text: """Les autres vaisseaux alliés situés à portée 1 ne peuvent être les cibles d'attaques si l'assaillant est en mesure de vous attaquer à la place."""
        "Luke Skywalker":
            text: """Quand vous défendez, vous pouvez échanger 1 de vos résultats %FOCUS% contre un résultat %EVADE%."""
        "Wes Janson":
            text: """Après avoir effectué une attaque, vous pouvez retirer 1 marqueur de concentration, d'évasion ou d'acquisition de cible bleu au défenseur."""
        "Jek Porkins":
            text: """Quand vous recevez un marqueur de stress, vous pouvez le retirer et lancer 1 dé d'attaque. Sur un résultat %HIT%, infligez 1 carte de dégâts face cachée à ce vaisseau."""
        '"Hobbie" Klivian':
            text: """Quand vous effectuez ou dépensez une acquisition de cible, vous pouvez retirer 1 marqueur de stress de votre vaisseau."""
        "Tarn Mison":
            text: """Quand un vaisseau ennemi vous déclare comme cible d'une attaque, vous pouvez le verrouiller."""
        # Y-Wing
        "Gold Squadron Pilot":
            name: "Pilote de l'escadron Or"
        "Gray Squadron Pilot":
            name: "Pilote de l'escadron Gris"
        '"Dutch" Vander':
            text: """Après avoir verrouillé une cible, choisissez un vaisseau allié situé à portée 1 ou 2. Cet autre vaisseau peut aussitôt verrouiller une cible."""
        "Horton Salm":
            text: """Quand vous attaquez à portée 2 ou 3, vous pouvez relancer vos résultats vierges."""
        # A-Wing
        "Green Squadron Pilot":
            name: "Pilote de l'escadron Vert"
        "Prototype Pilot":
            name: "Pilote sur prototype"
        "Tycho Celchu":
            text: """Vous pouvez effectuer des actions même quand vous avez des marqueurs de stress."""
        "Arvel Crynyd":
            text: """Vous pouvez attaquer un vaisseau situé dans votre arc de tir, même si vos socles se touchent."""
        # YT-1300
        "Outer Rim Smuggler":
            name: "Contrebandier de la Bordure extérieure"
        "Chewbacca":
            text: """Quand vous recevez une carte de dégâts face visible, retournez-là aussitôt face cachée (sans résoudre sa capacité)."""
        "Lando Calrissian":
            text: """Après avoir exécuté une manœuvre verte, choisissez un autre vaisseau allié situé à portée 1. Ce vaisseau peut effectuer 1 action gratuite figurant dans sa barre d'action."""
        "Han Solo":
            text: """Quand vous attaquez, vous pouvez relancer tous vos dés. Si vous décidez de le faire, vous devez relancer autant de vos dés que possible."""
        # B-Wing
        "Dagger Squadron Pilot":
            name: "Pilote de l'escadron Bleu"
        "Blue Squadron Pilot":
            name: "Pilote de l'escadron Dague"
        "Ten Numb":
            text: """Quand vous attaquez ,1 de vos résultats %CRIT% ne peut pas être annulé par les dés de défense."""
        "Ibtisam":
            text: """Quand vous attaquez ou défendez, si vous avez au moins 1 marqueur de stress, vous pouvez relancer un de vos dés."""
        # HWK-290
        "Rebel Operative":
            name: "Agent rebelle"
        "Roark Garnet":
            text: '''Au début de la phase de combat, choisissez 1 autre vaisseau allié situé à portée 1-3. Jusqu'à la fin de la phase, considérez que la valeur de pilotage de ce vaisseau est égale à 12.'''
        "Kyle Katarn":
            text: """Au début de la phase de combat, vous pouvez assigner 1 de vos marqueurs de concentration à un autre vaisseau allié situé à portée 1-3."""
        "Jan Ors":
            text: """Quand un autre vaisseau allié situé à portée 1-3 attaque, si vous n'avez aucun marqueur de stress, vous pouvez recevoir 1 marqueur de stress pour permettre à ce vaisseau de lancer 1 dé d'attaque supplémentaire."""
        # Z-95
        "Bandit Squadron Pilot":
            name: "Pilote de l'escadron Bandit"
            ship: "Chasseur de têtes Z-95"
        "Tala Squadron Pilot":
            name: "Pilote de l'escadron Tala"
            ship: "Chasseur de têtes Z-95"
        "Lieutenant Blount":
            ship: "Chasseur de têtes Z-95"
            text: "Quand vous attaquez, le défenseur est touché par votre attaque, même s'il ne subit pas de dégâts."
        "Airen Cracken":
            ship: "Chasseur de têtes Z-95"
            text: """Après avoir effectué une attaque, vous pouvez choisir un autre vaisseau allié situé à portée 1. Ce vaisseau peut effectuer une action gratuite."""
        # E-Wing
        "Knave Squadron Pilot":
            name: "Pilote de l'escadron Valet"
        "Blackmoon Squadron Pilot":
            name: "Pilote de l'escadron Lune noire"
        "Etahn A'baht":
            text: """Quand un vaisseau ennemi située dans votre arc de tir et à portée 1-3 se défend, l'attaquant peut changer 1 des ses résultats %HIT% en résultat %CRIT%."""
        "Corran Horn":
            text: """Au début de la phase de dénouement, vous pouvez effectuer une attaque. Vous ne pouvez pas attaquer au tour suivant."""
        # As Rebelles
        "Jake Farrell":
            text: """Après avoir effectué une action de concentration ou reçu un marqueur de concentration, vous pouvez effectuer une action gratuite d'accélération ou de tonneau."""
        "Gemmer Sojan": # Traduction non officielle
            text: """Tant que vous êtes à portée 1 d'au moins 1 vaisseau ennemi, augmentez votre valeur d'agilité de 1."""
        "Keyan Farlander":
            text: """Quand vous attaquez, vous pouvez retirer 1 marqueur de stress pour changer tous vos résultats %FOCUS% en résultats %HIT%."""
        "Unspoiled PS5 B-Wing Pilot":
            name: "Pilote de B-Wing de VP5 non dévoilé"
            text: """Cette carte n'a pas encore été dévoilée."""
        # Transport Rebelle
        "GR-75 Medium Transport":
            name: "Transport moyen GR-75"
            ship: "Transport moyen GR-75"
        # CR90
        "CR90 Corvette (Crippled Fore)":
            ship: "Corvette CR90 (proue)"
            name: "Corvette CR90 (proue abîmée)"
        "CR90 Corvette (Fore)":
            ship: "Corvette CR90 (proue)"
            name: "Corvette CR90 (proue)"
            text: """Quand vous attaquez avec votre arme principale, vous pouvez dépenser 1 énergie pour lancer 1 dé d'attaque supplémentaire."""
        "CR90 Corvette (Crippled Aft)":
            ship: "Corvette CR90 (poupe)"
            name: "Corvette CR90 (poupe abîmée)"
            text: """Vous ne pouvez pas choisir ou exécuter de manœuvre (%STRAIGHT% 4), (%BANKLEFT% 2), et (%BANKRIGHT% 2)."""
        "CR90 Corvette (Aft)":
            ship: "Corvette CR90 (poupe)"
            name: "Corvette CR90 (poupe)"
        # YT-2400, traduit de l'anglais
        "Dash Rendar":
            text: """Vous pouvez ignorer les obstacles durant la phase d'activation et lorsque vous effectuez des actions."""
        "Unspoiled PS3 YT-2400 Pilot":
            name: "Pilote de YT-2400 de VP3 non dévoilé"
        "Unspoiled PS5 YT-2400 Pilot":
            name: "Pilote de YT-2400 de VP5 non dévoilé"

    upgrade_translations =
        #Traits de pilotes
        "Determination":
            name: "Détermination"
            text: """Quand vous recevez une carte de dégâts assortie du trait Pilote face visible, défaussez-la aussitôt (sans résoudre sa capacité)."""
        "Swarm Tactics":
            name: "Tactique de nuée"
            text: """Au début de la phase de combat, choisissez 1 vaisseau allié situé à portée 1.<br /><br />Jusqu'à la fin de cette phase, considérez que la valeur de pilotage du vaisseau en question est égale à la vôtre."""
        "Squad Leader":
            name: "Chef d'escouade"
            text: """<strong>Action :</strong> choisissez 1 vaisseau situé à portée 1 ou 2 dont la valeur de pilotage est inférieure à la vôtre.<br /><br />Ce vaisseau peut aussitôt effectuer 1 action gratuite."""
        "Expert Handling":
            name: "As de l'espace"
            text: """<strong>Action :</strong> effectuez une <strong>action gratuite</strong> de tonneau. Si vous n'avez pas l'icône d'action %BARRELROLL%, recevez 1 marqueur de stress.<br /><br />Ensuite, vous pouvez retirer 1 acquisition de cible ennemie de votre vaisseau."""
        "Marksmanship":
            name: "Adresse au tir"
            text: """<strong>Action :</strong> en attaquant ce tour-ci, vous pouvez échanger 1 de vos résultats %FOCUS% contre 1 résultat %CRIT%, et tous vos autres résultats %FOCUS% contre des résultats %HIT%."""
        "Daredevil":
            name: "Casse-cou"
            text: """<strong>Action :</strong> exécuter une manœuvre blanche (%TURNLEFT% 1) ou (%TURNRIGHT% 1).  Puis, recevez un marqueur de stress.<br /><br />Ensuite, si vous n'avez pas l'icône d'action %BOOST%, lancez 2 dés d'attaque et subissez les dégâts (%HIT%) et les dégâts critiques (%CRIT%) obtenus."""
        "Elusiveness":
            name: "Insaisissable"
            text: """Quand vous défendez, vous pouvez recevoir un marqueur de stress pour choisir 1 dé d'attaque.<br /><br />Si vous avez au moins un marqueur de stress, vous ne pouvez pas utiliser cette capacité."""
        "Push the Limit":
            name: "Repousser les limites"
            text: """Une fois par tour, après avoir effectué une action, vous pouvez effectuer 1 action gratuite figurant dans votre barre d'action.<br /><br />Recevez ensuite un marqueur de stress."""
        "Deadeye":
            name: "Tireur d'élite"
            text: """Vous pouvez considérer l'intitulé "<strong>Attaque (acquisition de cible)</strong>" comme un intitulé "<strong>Attaque (concentration)</strong>".<br /><br />Quand une attaque vous demande d'utiliser un marqueur d'acquisition de cible, vous pouvez utiliser un marqueur de concentration à la place."""
        "Expose":
            name: "Prise de risque"
            text: """<strong>Action :</strong> jusqu'à la fin du tour, augmentez votre valeur d'arme principale de 1 et réduisez votre valeur d'agilité de 1."""
        "Wingman":
            name: "Ailier"
            text: """Au début de la phase de combat, retirez 1 marqueur de stress d'un autre vaisseau allié situé à portée 1."""
        "Decoy":
            name: "Leurre"
            text: """Au début de la phase de combat, vous pouvez choisir 1 vaisseau allié situé à portée 1-2. Échangez votre valeur de pilotage avec celle de ce vaisseau jusqu'à la fin de la phase."""
        "Outmaneuver":
            name: "Manœuvre improbable"
            text: """Quand vous attaquez un vaisseau situé dans votre arc de tir, si vous n'êtes pas dans l'arc de tir de ce vaisseau, réduisez sa valeur d'agilité de 1 (jusqu'à un minimum de 0)."""
        "Predator":
            name: "Prédateur"
            text: """Quand vous attaquez, vous pouvez relancer 1 dé d'attaque. Si la valeur de pilote du défenseur est de "2" ou moins, vous pouvez relancer jusqu'à 2 dés d'attaque à la place."""
        "Draw Their Fire":
            name: "Je les attire !"
            text: """Quand un vaisseau allié situé à portée 1 est touché par une attaque, vous pouvez subir 1 des résultats %CRIT% non annulés à la place de l'appareil visé."""
        "Adrenaline Rush":
            name: "Montée d'adrénaline"
            text: """Quand vous révélez une manœuvre rouge, vous pouvez défausser cette carte pour traiter cette manœuvre comme une manœuvre blanche jusqu'à la fin de la phase d'activation."""
        "Veteran Instincts":
            name: "Instinct de vétéran"
            text: """Augmentez votre valeur de pilotage de 2."""
        "Opportunist":
            name: "Opportuniste"
            text: """Quand vous attaquez, si le défenseur n'a pas de marqueur de concentration ou d'évasion, vous pouvez recevoir 1 marqueur de stresss pour lancer 1 dé d'attaque supplémentaire.<br /><br />Vous ne pouvez pas utiliser cette capacité si vous avez au moins un marqueur de stress."""
        # Astromechs
        "R2 Astromech":
            name: "Astromech R2"
            text: """Considérez toutes les manœuvres à vitesse 1 ou 2 comme des manœuvres vertes."""
        "R2-D2":
            text: """Après avoir exécuté une manœuvre verte, vous pouvez récupérer 1 bouclier (sans pouvoir dépasser votre valeur de boucliers)."""
        "R2-F2":
            text: """<strong>Action :</strong> augmentez votre valeur d'agilité de 1 jusqu'à la fin de ce tour."""
        "R5-D8":
            text: """<strong>Action :</strong> lancez 1 dé de défense.<br /><br />Sur un résultat %EVADE% ou %FOCUS%, défaussez 1 de vos cartes de dégâts face cachée."""
        "R5-K6":
            text: """Après avoir utilisé votre acquisition de cible, lancez 1 dé de défense.<br /><br />Sur un résultat %EVADE%, verrouillez aussitôt le même vaisseau. Vous ne pouvez cependant pas utiliser cette nouvelle acquisition de cible durant cette attaque."""
        "R5 Astromech":
            name: "Astromech R5"
            text: """Pendant la phase de dénouement, choisissez une de vos cartes dégâts face visible assortie du trait <strong>Vaisseau</strong>, et retournez-la face cachée."""
        "R7 Astromech":
            name: "Astromech R7"
            text: """Une fois par tour, quand vous défendez, si vous avez vérouillé l'attaquant, vous pouvez dépenser l'acquisition de cible pour choisir tout ou partie des dés d'attaque. L'attaquant doit relancer les dés choisis."""
        "R7-T1":
            text: """<strong>Action :</strong> choisissez un vaisseau ennemi situé à portée 1-2. Si vous êtes dans son arc de tir, vous pouvez le verrouiller. Ensuite, vous pouvez effectuer une action d'accélération gratuite."""
        "R4-D6":
            text: """Quand vous êtes touché par une attaque ayant généré au moins 3 résultats %HIT% non annulés, vous pouvez annuler les résultats que vous souhaitez jusqu'à ce qu'il n'en reste que 2. Pour chaque résultat annulé de la sorte, recevez 1 marqueur de stess."""
        "R5-P9":
            text: """À la fin de la phase de combat, vous pouvez dépenser 1 de vos marqueurs de concentration pour récupérer 1 bouclier (jusqu'à concurrence de votre valeur de boucliers)."""
        "R3-A2":
            text: """Quand vous déclarez la cible de votre attaque, si le défenseur est dans votre arc de tir, vous pouvez recevoir 1 marqueur de stress pour que le défenseur en reçoive 1 aussi."""
        "R2-D6":
            text: """Votre bandeau d'amélioration gagne l'icône d'amélioration %ELITE%.<br /><br />Vous ne pouvez pas équiper cette amélioration si vous avez déjà une icône d'amélioration %ELITE% ou si votre valeur de pilotage est de "2" ou moins."""
        # Torpilles
        "Proton Torpedoes":
            name: "Torpilles à protons"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.<br /><br />Vous pouvez échanger 1 de vos résultats %FOCUS% contre 1 resultat %CRIT%."""
        "Advanced Proton Torpedoes":
            name: "Torpilles à protons avancées"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.<br /><br />Vous pouvez échanger jusqu'à 3 de vos résultats vierge contre autant de résultats %FOCUS%."""
        "Flechette Torpedoes":
            name: "Torpilles fléchettes"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte et dépensez votre acquisition de cible pour effectuer cette attaque.<br /><br />Après que vous avez effectué cette attaque, le défenseur reçoit 1 marqueur de stress si sa valeur de coque est de "4" ou moins."""
        # Tourelles
        "Ion Cannon Turret":
            name: "Tourelles à canons ioniques"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau (même s'il se situe en dehors de votre arc de tir).<br /><br />Si cette attaque touche la cible, cette dernière subit 1 dégât et reçoit 1 marqueur ionique. Ensuite, annulez tous les résultats des dés."""
        "Blaster Turret":
            name: "Tourelles blaster"
            text: """<strong>Attaque (concentration) :</strong> dépensez un marqueur concentration pour effectuer cette attaque contre 1 vaisseau (même s'il se situe en dehors de votre arc de tir)."""
        # Missiles
        "Concussion Missiles":
            name: "Missiles à concussion"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.<br /><br />Vous pouvez échanger 1 de vos résultats vierges contre 1 résultat %HIT%."""
        "Cluster Missiles":
            name: "Missiles groupés"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque <strong>deux fois</strong>."""
        "Homing Missiles":
            name: "Missiles à tête chercheuse"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte pour effectuer cette attaque.<br /><br />Le défenseur ne peut pas utiliser de marqueurs d'évasion durant cette attaque."""
        "Assault Missiles":
            name: "Missiles d'assaut"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.<br /><br />Si cette attaque touche, chaque vaisseau situé à portée 1 du défenseur subit 1 dégât."""
        "Ion Pulse Missiles":
            name: "Missiles à pulsations ioniques"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte pour effectuer cette attaque.<br /><br />Si cette attaque touche, le défenseur subit 1 dégât et reçoit 2 marqueurs ioniques. Ensuite, annulez le résultat de <strong>tous<strong> les dés."""
        "Chardaan Refit":
            name: "Radoub à Chardaan"
            text: """Cette carte a un coût en points d'escadron négatif."""
        "Proton Rockets": # Traduction non officielle
            name: "Roquettes à proton"
            text: """<strong>Attaque (concentration) :</strong> défaussez cette carte pour effectuer cette attaque.<br /><br />Vous pouvez lancer un nombre de dés supplémentaires égal à votre valeur d'agilité, jusqu'à un maximum de 3 dés supplémentaires."""
        # Bombes
        "Seismic Charges":
            name: "Charges sismiques"
            text: """Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour  <strong>larguer</strong> 1 marqueur de charges sismiques.<br /><br />Ce marqueur <strong>explose</strong> à la fin de la phase d'activation."""
        "Proximity Mines":
            name: "Mines de proximité"
            text: """<strong>Action :</strong> défaussez cette carte pour <strong>larguer</strong> 1 marqueur de mines de proximité. Quand un vaisseau exécute une manœuvre, si son socle ou son gabarit de manœuvre chevauche ce marqueur, ce marqueur <strong>explose</strong>."""
        "Proton Bomb":
            name: "Bombes à protons"
            text: """Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour <strong>larguer</strong> 1 marqueur de bombe à protons.<br /><br />Ce marqueur <strong>explose</strong> à la fin de la phase d'activation."""
        # Canons
        "Ion Cannon":
            name: "Canon ionique"
            text: """<strong>Attaque :</strong> Attaque : attaquez 1 vaisseau.<br /><br />Si cette attaque touche, le défenseur subit 1 dégât et reçoit 1 marqueur ionique. Ensuite annulez le résultat de tous les dés."""
        "Heavy Laser Cannon":
            name: "Canon laser lourd"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau.<br /><br />Juste après avoir lancé vos dés d'attaque, vous devez changer tous vos résultats %CRIT% en résultats %HIT%."""
        "Autoblaster":
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau.<br /><br />Vos résultats %HIT% ne peuvent pas être annulés par des dés de défense. Le défenseur peut annuler les résultats %CRIT% avant les résultats %HIT%."""
        # Systèmes
        "Enhanced Scopes":
            name: "Radars améliorés"
            text: """Durant la phase d'activation, considérez que votre valeur de pilotage est égale à "0"."""
        "Fire-Control System":
            name: "Système de commande de tir"
            text: """Après avoir effectué une attaque, vous pouvez verrouiller le défenseur."""
        "Advanced Sensors":
            name: "Senseurs avancés"
            text: """Juste avant de révéler votre manoeuvre, vous pouvez effectuer 1 action gratuite.<br /><br />Si vous utilisez cette capacité, vous devez passer l'étape "Effectuer une action" ce tour-ci."""
        "Sensor Jammer":
            name: "Brouilleur de senseurs"
            text: """Quand vous défendez, vous pouvez changer un des résultats %HIT% de l'attaquant en résultat %FOCUS%. L'attaquant ne peut pas relancer le dés au résultat modifié."""
        # Équipages
        "Gunner":
            name: "Cannonier"
            text: """Après avoir effectué une attaque qui ne touche pas, vous pouvez effectuer immédiatement une attaque d'arme principale. Vous ne pouvez pas effectuer d'autre attaque ce tour-ci."""
        "Mercenary Copilot":
            name: "Copilote mercenaire"
            text: """Quand vous attaquez à portée 3, vous pouvez échanger 1 de vos résultats %HIT% contre 1 résultat %CRIT%."""
        "Weapons Engineer":
            name: "Ingénieur en armement"
            text: """Vous pouvez verrouiller 2 cibles (1 seule acquisition de cible par vaisseau ennemi).<br /><br />Quand vous verrouillez une cible, vous pouvez verrouiller 2 vaisseaux différents."""
        "Luke Skywalker":
            text: """Quand vous effectuez une attaque qui ne touche pas, effectuez aussitôt une attaque d'arme principale. Vous pouvez échanger un résultat %FOCUS% contre 1 résultat %HIT%. Vous ne pouvez pas effectuer d'autre attaque ce tour-ci."""
        "Nien Nunb":
            text: """Vous pouvez traiter toute les manœuvres %STRAIGHT% comme des manœuvres vertes."""
        "Chewbacca":
            text: """Quand vous recevez une carte de dégâts, vous pouvez la défaussez sur-le-champs et récupérer 1 bouclier. Ensuite, défaussez cette carte d'amélioration."""
        "Recon Specialist":
            name: "Officier en reconnaissance"
            text: """Quand vous effectuez une action de concentration, assignez 1 marqueur de concentration supplémentaire à votre vaisseau."""
        "Saboteur":
            text: """<strong>Action :</strong> choisissez 1 vaisseau ennemi situé à portée 1 et lancez 1 dé d'attaque. Sur un résultat %HIT% ou %CRIT%, choisissez au hasard une carte de dégâts face cachée assignée à ce vaisseau, retrounez-la et résolvez-la."""
        "Intelligence Agent":
            name: "Agent de renseignements"
            text: """Au début de la phase d'activation, choisissez 1 vaisseau ennemi situé à portée 1-2. Vous pouvez regarder la manoeuvre choisie pour ce vaisseau."""
        "Darth Vader":
            name: "Dark Vador"
            text: """Après avoir effectué une attaque contre un vaisseau ennemi, vous pouvez subir 2 dégâts pour infliger 1 dégât critique à cet appareil."""
        "Rebel Captive":
            name: "Prisonnier rebelle"
            text: """Une fois par tour, le premier vaisseau qui vous déclare comme la cible d'une attaque reçoit aussitôt 1 marqueur de stress."""
        "Flight Instructor":
            name: "Pilote instructeur"
            text: """Quand vous défendez, vous pouvez relancer 1 de vos résultats %FOCUS%. Si la valeur de pilotage de l'attaquant est de 2 ou moins, vous pouvez relancer 1 de vos résultats vierges à la place."""
        "Navigator":
            name: "Navigateur"
            text: """Quand vous révélez une manoeuvre, vous pouvez tourner le cadran sur une autre manoeuvre ayant la même direction.<br /><br />Vous ne pouvez pas touner le cadran sur une manoeuvre rouge si vous avez au moins un marqueurs de stress."""
        "Lando Calrissian": # Traduction non officielle
            text: """<strong>Action :</strong> lancez 2 dés de défense. Pour chaque résultat %FOCUS%, assignez 1 marqueur de concentration à votre vaisseau. Pour chaque résultat %EVADE%, assignez 1 marqueur d'évasion à votre vaisseau."""
        "Mara Jade": # Traduction non officielle
            text: """À la fin de la phase de combat, chaque vaisseau ennemi à portée 1 qui n'a pas de marqueur de stress reçoit 1 marqueur de stress."""
        "Fleet Officer":
            name: ""
      #      text: """<strong>Action :</strong> Choose up to 2 friendly ships within Range 1-2 and assign 1 focus token to each of those ships.  Then receive 1 stress token."""
        "Han Solo":
            text: """Quand vous attaquez, si vous avez verrouillé le défenseur, vous pouvez dépenser ce marqueur d'acquisition de cible pour changer tous vos résultats %FOCUS% en résultats %HITM."""
        "Leia Organa":
            text: """Au début de la phase d'activation, vous pouvez défausser cette carte pour permettre à tous les vaisseaux alliés qui dévoilent une manœuvre rouge de considérer cette dernière comme une manœuvre blanche jusqu'à la fin de la phase."""
        "WED-15 Repair Droid":
            name: "Droïde de réparation WED-15"
            text: """<strong>Action :</strong> dépensez 1 énergie pour défausser 1 de vos cartes de déga^ts face cachée, ou dépensez 3 énergie pour défausser 1 de vos cartes de dégâts face visible."""
        "Carlist Rieekan":
            text: """Au début de la phase d'activation, vous pouvez défausser cette carte pour traiter la valeur de pilotage de chaque vaisseau allié comme si elle s'élevait à "12", jusqu'à la fin de la phase."""
        "Jan Dodonna":
            text: """Quand un autre vaisseau allié situé à portée 1 attaque, il peut échanger 1 de ses résultats %HIT% contre un résultat %CRIT%."""
        "Tactician":
            name: "Tacticien"
            text: "Après que vous avez effectué une attaque contre un vaisseau situé dans votre arc de tir à portée 2, ce vaisseau reçoit 1 marqueur de stress."
        "R2-D2 (Crew)":
            name: "R2-D2"
            text: """À la fin de la phase de dénouement, si vous n'avez pas de boucliers, vous pouvez récupérer 1 bouclier et lancer 1 dé d'attaque. Sur un résultat %HIT%, prenez au hasard 1 de vos cartes de dégâts face cachée, retournez-la et résolvez-la."""
        "C-3PO":
            name: "Z-6PO"
            text: """Une fois par tour, avant de lancer 1 ou plusieurs dés de défense, vous pouvez tenter d'en deviner à voix haute le nombre de résultats %EVADE%. Si vous obtenez le nombre annoncé (avant de modifier des dés), ajoutez 1 résultat %EVADE%."""
        "Kyle Katarn": # Traduction non officielle
            text: """Après avoir enlevé un marqueur stress de votre vaisseau, vous pouvez assigner un marqueur concentration à celui-ci."""
        "Jan Ors": # Traduction non officielle
            text: """Une fois par tour, quand un vaisseau allié à portée 1-3 effectue une action de concentration ou doit recevoir un marqueur de concentration, vous pouvez assigner un marqueur évasion à la place."""
        "Toryn Farr":
            text: """<strong>Action :</strong> dépensez n'importe quelle quantité d'énergie pour choisir autant de vaisseaux ennemis situés à portée 1-2. Retirez tous les marqueurs de concentratino, d'évasion et d'acquisition de cible bleus de ces vaisseaux."""
        "Targeting Coordinator":
            name: "Coordinateur de visée"
            text: """<strong>Énergie :</strong> vous pouvez dépenser 1 énergie pour choisir un vaisseau allié situé à portée 1-2. Verrouillez une cible, puis assignez le marqueur d'acquisition de cible bleu au vaisseau choisi."""
        "Raymus Antilles":
            text: """Au début de la phase d'activation, choisissez 1 vaisseau ennemi situé à portée 1-3. Vous pouvez regarder la manœuvre choisie pour ce vaisseau. Si la manœuvre est blanche, assignez 1 marqueur de stress à ce vaisseau."""
        # Soute
        "Frequency Jammer":
            name: "Brouilleurs de fréquence"
            text: """Quand vous effectuez une action de brouillage, choisissez 1 vaisseau ennemi qui n'a pas de marqueur de stress et se situe à portée 1 du vaisseau brouillé. Le vaisseau choisi reçoit 1 marqueur de stress."""
        "Expanded Cargo Hold":
            name: "Compartiments supplémentaires"
            text: """Une fois par tour, quand vous êtes censé recevoir une carte de dégâts face visible, vous pouvez la piocher dans le paquet de dégâts de poupe ou de proue."""
        "Comms Booster":
            name: "Amplificateur Comm"
            text: """<strong>Énergie :</strong> dépensez 1 énergie pour retirer tous les marqueurs de stress d'un vaisseau allié situé à portée 1-3. Ensuite, assignez 1 marqueur de concentration à ce vaisseau."""
        "Slicer Tools":
            name: "Outils de slicer"
            text: """<strong>Action :</strong> choisissez 1 ou plusieurs vaisseaux ennemis situés à portée 1-3 ayant un marqueur de stress. Pour chaque vaisseau choisi, vous pouvez dépenser 1 énergie pour forcer ce vaisseau à subir 1 dégât."""
        "Shield Projector":
            name: "Projecteur de boucliers"
            text: """Quand un vaisseau ennemi devient le vaisseau actif durant la phase de combat, vous pouvez dépenser 3 énergie pour l'obliger à vous attaquer, si possible, jusqu'à la fin de la phase."""
        "Tibanna Gas Supplies":
            name: "Réserves de gaz Tibanna"
            text: """<strong>Énergie :</strong> vous pouvez défausser cette carte pour gagner 3 énergie."""
        "Ionization Reactor":
            name: "Réacteur à ionisation"
            text: """<strong>Énergie :</strong> dépensez 5 énergie de cette carte et défaussez-la pour que chaque autre vaisseau situé à portée 1 subisse 1 dégât et reçoive un marqueur ionique."""
        "Engine Booster":
            name: "Booster"
            text: """Juste avant de dévoiler votre cadran de manœuvres, vous pouvez dépenser 1 énergie pour exécuter une manœuvre (%STRAIGHT%) blanche. Vous ne pouvez pas utiliser cette capacité si elle vous fait chevaucher un autre vaisseau."""
        "Backup Shield Generator":
            name: "Générateur de boucliers auxiliaire"
            text: """À la fin de chaque tour, vous pouvez dépenser 1 énergie pour récupérer 1 bouclier (jusqu'à concurrence de votre valeur de boucliers)."""
        "EM Emitter":
            name: "Émetteur EM"
            text: """Quand vous gênez une attaque, le défenseur lance 3 dés de défense supplémentaires (au lieu de 1)."""
        # Point d'Attache
        "Single Turbolasers":
            name: "Turbolaser"
            text: """<strong>Attaque (énergie) :</strong> dépensez 2 énergie de cette carte pour effectuer cette attaque. Le défenseur double sa valeur d'agilité contre cette attaque. Vous pouvez changer 1 de vos résultats %FOCUS% en résultat %HIT%."""
        "Quad Laser Cannons":
            name: "Canons quadrilaser"
            text: """<strong>Attaque (énergie) :</strong> dépensez 1 énergie de cette carte pour effectuer cette attaque. Si cette attaque ne touche pas, vous pouvez aussitôt dépenser 1 énergie de cette carte pour effectuer à nouveau cette attaque."""
        # Équipe
        "Gunnery Team":
            name: "Équipe d'artilleurs"
            text: """Une fois par tour, quand vous attaquez avec une arme secondaire, vous pouvez dépenser 1 énergie pour change 1 de vos résultats vierges en résultat %HIT%."""
        "Sensor Team":
            name: "Équipe des senseurs"
            text: """Quand vous verrouillez une cible, vous pouvez verrouiller un vaisseau ennemi à portée 1-5 (au lieu de portée 1-3)."""
        "Engineering Team":
            name: "Équipe de mécaniciens"
            text: """Durant la phase d'activation, quand vous dévoilez une manœuvre %STRAIGHT%, gagnez 1 énergie supplémentaire lors de l'étape "Gagner de l'énergie"."""

    modification_translations =
        "Stealth Device":
            name: "Système d'occultation"
            text: """Augmentez votre valeur d'agilité de 1. Si une attaque vous touche, défaussez cette carte."""
        "Shield Upgrade":
            name: "Boucliers améliorés"
            text: """Augmentez votre valeur de boucliers de 1."""
        "Engine Upgrade":
            name : "Moteurs améliorés"
            text: """Votre barre d'actions gagne l'icône d'action %BOOST%."""
        "Anti-Pursuit Lasers":
            name: "Lasers antipoursuite"
            text: """Quand un vaisseau ennemi exécute une manœuvre qui l'oblige à chevaucher votre appareil, lancez 1 dé d'attaque. Sur un résultat %HIT% ou %CRIT%, le vaisseau ennemi subit 1 dégât."""
        "Targeting Computer":
            name: "Ordinateur de visée"
            text: """Votre barre d'action gagne l'icône d'action %TARGETLOCK%."""
        "Hull Upgrade":
            name: "Coque améliorée"
            text: """Augmentez votre valeur de coque de 1."""
        "Munitions Failsafe":
            name: "Munitions à sûreté intégrée"
            text: """Quand vous attaquez avec une arme secondaire qui vous demande de la défausser pour effectuer cette attaque, défaussez-la seulement si l'attaque touche."""
        "Stygium Particle Accelerator":
            name: "Accélérateur de particules de Stygium"
            text: """Quand vous vous désoccultez ou effectuez une action d'occultation, vous pouvez effectuer une action d'évasion gratuite."""
        "Advanced Cloaking Device":
            name: "Système d'occulation avancé"
            text: """Après avoir effectué une attaque, vous pouvez effectuer une action de d'occultation gratuite."""
        "Combat Retrofit":
            name: "Préparé pour le combat"
            text: """Augmentez votre valeur de coque de 2 et votre valeur de boucliers de 1."""
        "B-Wing/E2":
            text: """Votre barre d'améliorations gagne l'icône d'amélioration %CREW%."""

    title_translations =
        "Slave I":
            text: """Votre bandeau d'amélioration gagne l'icône %TORPEDO%."""
        "Millennium Falcon":
            name: "Faucon Millenium"
            text: """Votre barre d'actions gagne l'icône d'action %EVADE%."""
        "Moldy Crow":
            text: """Lors de la phase de dénouement, ne retirez pas les marqueurs concentrations inutilisés de votre vaisseau."""
        "ST-321":
            text: """Quand vous verrouillez une cible, vous pouvez verrouiller n'importe quel vaisseau ennemi situé dans la zone de jeu."""
        "Royal Guard TIE":
            name: "TIE de la Garde royale"
            text: """Vous pouvez vous équiper de 2 améliorations Modification différentes (au lieu de 1).<br /><br />Cette carte ne peut pas équiper un vaisseau dont la valeur de pilotage est de "4" ou moins."""
        "Dodonna's Pride":
            text: """Quand vous effectuez une action de coordination, vous pouvez choisir 2 vaisseaux alliés (au lieu de 1). Chacun de ces vaisseaux peut effectuer 1 action gratuite."""
        "A-Wing Test Pilot":
            name: "Pilote d'essai sur A-Wing"
            text: """Votre bandeau d'amélioration gagne 1 icône d'amélioration %ELITE%.<br /><br />Vous ne pouvez pas équiper 2 cartes amélioration %ELITE% identiques. Vous ne pouvez pas vous équiper de cette carte si votre valeur de pilotage est des "1" ou moins."""
        "Tantive IV":
            text: """Le bandeau d'amélioration de votre proue gagne 1 icône %CREW% et 1 icône %TEAM% d'améliorations supplémentaires."""
        "Bright Hope":
            text: """Un marqueur de renforcement assigné à votre proue ajoute 2 résultats %EVADE% (au lieu de 1)."""
        "Quantum Storm":
            text: """Au début de la phase de dénouement, si vous avez 1 marqueur d'énergie ou moins, vous gagnez 1 marqueur d'énergie."""
        "Dutyfree":
            text: """Quand vous effectuez une action de brouillage, vous pouvez choisir un vaisseau ennemi situé à portée 1-3 (au lieu de portée 1-2)."""
        "Jaina's Light":
            text: """Quand vous défendez, une fois par attaque, si vous recevez une carte de dégâts face visible, vous pouvez la défausser et piocher une autre carte de dégâts face visible."""
        "Outrider": # Traduction non officielle
            text: """Tant que vous êtes équipé d'une carte d'amélioration %CANNON%, vous <strong>ne pouvez pas</strong> effectuer d'attque d'arme principale et vous pouvez effectuer une attaque d'arme secondaire %CANNON% contre des vaisseaux en dehors de votre arc de tir."""

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations