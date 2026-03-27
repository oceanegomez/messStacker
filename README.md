Nom du projet: File par tableau circulaire

Description du projet : 
L’objectif de ce sujet est de concevoir une librairie nommée MessStacker
permettant de gérer une file (une pile FIFO) de messages. Des producteurs (les
expéditeurs) alimentent la file en « postant » des messages. Et des
consommateurs (les receveurs) analysent le contenu de ces messages un par un,
puis demandent de passer au message suivant. Cette librairie expose pour cela
un ensemble de fonction qui vont permettre la gestion du stockage des messages
reçus, en attendant qu’ils soient consultés puis retirés du stock.


Arborescence du projet : 
Messtackers est composé de 3 dossiers : src, build et test, ainsi que d'un fichier makfile et d'un fichier .gitignore.
-> src : contient ma bibliothèque messStacker.
-> test : contient un fichier test_lib qui va permettre de tester à tout moment notre librairie.
-> build : contient les fichiers exécutés de mon programme test_lib.
-> makefile : règles pour simplifier l'utilisation de notre librairie. 
-> .gitignore : permets d'ignorer les fichiers .o 