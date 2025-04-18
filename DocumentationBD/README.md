Itération 5: J'ai rajouté une table User avec une liaison FAVORISER même si je n'ai pas pu arriver a cet étape 
dans mes itérrations avec la table Movie j'ai mis comme cardinalités 0,n des deux côtés car: 
un utilisateur peut avoir aucun ou plusieur film en favoris et un film peux ne pas être mis en favoris
ou être plusieur fois en favoris.

Dans la table User j'ai mis un id qui est la clés primaire de ma table et avec comme information stocké j'ai 
mis le nom, l'image de profil et l'âge du profil ou j'ai mis 3 VARCHAR de 250 pour être sur d'avoir l'espace que je veux 
notamment pour les images vue que leur nom peuvent être long.