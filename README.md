# Escape From Somewhere

Escape From Somewhere est une fiction hypertextuelle interactive à choix multiples, l'histoire évolue selon les réponses que vous choisissez.
___

![demo Escape from somewhere](https://i.imgur.com/IOMRAZD.gif)

___

### Synopsis

Vous êtes un guérier qui se retrouve enfermé dans une cellule, vous ne savez pas ce que vous faites-là cependant vous allez tout faire pour ne pas y rester.

### Construction de l'histoire

L'histoire est assez courte mais elle demande un développement minutieux pour que chaque choix possède une suite convenable. Voici comment cette histoire a été schématisée :

![Schema histoire](https://i.imgur.com/HGVrbDh.png)

## Installation

Cette fiction a été conçue en JavaScript et en PHP, l'histoire et les réponses sont stockés dans une base de donnée MySQL. Il vous faudra donc un serveur Web compatible PHP (>= 5.6) pour la faire fonctionner.

- Télécharger/Cloner ce répertoire
- Changer les informations de connexion à la base de donnée dans : `includes/connexion.php`
- Créer une base de donnée et importer les tables stockées dans : `includes/db.sql`
- Ouvrir le repertoire depuis votre serveur Web
- C'est terminé !

### Fonctionnement

L'histoire et les réponses sont stockés dans une base de données et récupéré(es) en PHP, elles sont ensuite affiché à l'aide d'une fonction JavaScript qui envois une requette Ajax qui va se charger de demander l'histoire qui correspond à la réponse choisie ainsi que les réponses correspondantes à l'histoire qui va être affichée. A chaque réponse sélectionnée une requette va être envoyé pour récupérer l'histoire et les réponses.

La progression de l'utilisateur est stockée en JavaScript à l'aide du LocalStorage, ainsi tant que l'utilisateur ne vide pas son cache navigateur la progression sur le site va être sauvegardée et l'utilisateur pourra retourner là où il s'est arrêté dans l'histoire. Sa progression est sauvegardé à chaque réponse sélectionnée.

Le Player Audio est créer et controller en JavaScript, les contrôles permettent de lancer la musique d'ambiance ou de la mettre en pause.

## Informations supplémentaires


| Frameworks |
| --- | 
| Bootstrap v4.0.0 |

| Librairies |
| -- |
| jQuery 3.2.1 |
| popper.js |

| Soundtrack |
| --- | 
| [Medieval II Total War Theme - OST](https://www.youtube.com/watch?v=oCEI0-Yrp1c) |

| Images |
| --- | 
| [Flaticon](https://www.flaticon.com/) |

| Polices |
| --- | 
| [Noto Serif](https://fonts.google.com/specimen/Noto+Serif) |

___

Crédits : [Clément Guérin](https://github.com/ClementGuerin), [Dimitri Fouque](https://github.com/Nyroux).