{algo garage voiture

cette version ne contient pas la fin de la procédure initialisation voiture, le programme principal , les dates , et l'argus 



 
// BUT Mannier les enregisrtrement
// ENTRE enregistrement de tout les vehicule et garage saisie par l'utilisateur 
// SORTIE affichage garages et de leurs vehicules, affichage du garage qui a le plus de vehicules,affichage du véhicule le plus ancien 
//, affichage de la moyenne des valeurs des véhicules par garage, puis pour les 2 garages, affichage vehicule + chere puis coté argus 3 ans 
//Recherche de véhicules a partir de critère passés en paramètres

type 
	garage=enregistrement 
	Nom:chaine 
	numero:entier
	rue:chaine 
	CP:chaine 
	Ville:chaine 
	pays:chaine 
	telephone:chaine 
	email:chaine
	Nbvoiture:entien
fin enregistrement 
	
type marque(BMW,AUDI,WW,MERC,TOYOTA)

type energie(Essence,Diesel,GPL,Electrique,Hybride)

type fonction_voit (accoudoir,clim,radio,gps,blutooth)

type 
	voiture=enregisrtrement
	modele:marque
	Eenergie:energie
	puissance_fiscale:entier 
	CV:entier
	couleur:chaine
	options : fonction_voit
	annee_modele:chaine 
	prix_neuf:chaine 
	argus:entier 
	circulation: chaine 
	age:chaine 
	plaque:chaine 
fin enregistrement 

type tabgar=tableau[1..2] de garage 
type tabvoit=tableau[1..30] de voiture 
procedure création_garage (var gar:tabgar)
var 
	i:entier 

debut 
	pour i de 1 a 2 
		ECRIRE ('veuiller saisir le nom du garage')
		LIRE tabgar[i].nom
		ECRIRE ('veuiller saisir le num du garage')
		LIRE tabgar[i].numero
		ECRIRE ('veuiller saisir le nom de la rue')
		LIRE tabgar[i].rue 
		ECRIRE ('veuiller saisir le code postal')
		LIRE tabgar[i].CP
		ECRIRE ('veuiller saisir la ville')
		LIRE tabgar[i].ville 
		ECRIRE ('veuiller saisir le pays')
		LIRE tabgar[i].pays
		ECRIRE ('veuiller saisir le num de tel') 
		LIRE tabgar[i].telephone
		ECRIRE ('veuiller saisir l'email')
		LIRE tabgar[i].email
	fin pour 
fin procedure

procedure creation_voiture (var voit:tabvoit)

var 
	i:entier 
	nb:entier 
debut 
	ECRIRE ('veuiller saisir le nb de voiture que vous voulez entre') 
	LIRE (nb)
	tant que (nb <1) ou (nb>30) faire 
		ECRIRE ('veuiller saisir un nb entre 1 et 30)
		LIRE (nb)
	fin tant que 
	pour i de 1 jusqu a nb faire 
		ECRIRE:  ('veuillez choisir une marque de voiture parmis BMW,AUDI,WW,MERC,TOYOTA')
		LIRE voit[i].modele
		tant que que voit[i].modele <> marque faire 
			ECRIRE('veuiller choisir parmis les marques proposer Essence,Diesel,GPL,Electrique,Hybride')
			lire voit[i].Eenergie
		tant que voit voit[i].Eenergie <> energie faire 
			ECRIRE ('veuiller saisir un type de carburant proposer')
			lire voit[i].Eenergie 
		fin tant que 
		ECRIRE ('veuiller saisir votre energie parmis ')
		LIRE voit[i].Eenergie.
		ECRIRE ('veuiller saisir la puissance fiscal')
		LIRE voit[i].puissance_fiscale
		ECRIRE ('veuiller saisir la puissance CV')
		LIRE voit[i].CV
		ECRIRE ('veuiller saisir la couleur')
		LIRE voit[i].couleur
		ECRIRE ('veuiller saisir les options parmis accoudoir,clim,radio,gps,blutooth ')
		LIRE voit[i].options
		tant que voit[i].options <> fonction_voit faire 
			ECRIRE ('veuiller saisir parmis les options proposer')
			LIRE voit[i].options
		fin tant que 
		ECRIRE ('veuiller saisir l'année millésime')
		LIRE voit[i].millésime
		ECRIRE ('prix du modele') 
		LIRE voit[i].prix_neuf 
		
			
		
		
	
}