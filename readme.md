# Projet Mathématiques STPI-2

Ce programme met en place 3 méthodes de résolution d'équation non linéaires dont la méthode de la dichotomie, Newton et du point fixe.  
Voici le lien github du projet:  
https://github.com/DimitriTimoz/prj-math
```
prj-math/
 - main.pas // Programme principal appliquant les méthodes dans différents contextes.
 - dichotomieMethode.pas // Application de la méthode du point fixe.
 - newtonMethode.pas // Application de la méthode de Newton .
 - methodePointFixe.pas // Application de la méthode du point fixe.
 - functions.pas // Fonction de la trajectoire et sa dérivée.
 - utils.pas // Structure des données à retourner pour chaque méthode.
 - resultats.txt // Fichier contenant le résultat d'une exécution

```

Pour compiler le programme utilisez ```fpc main.pas``` dans le répertoire du code source.  
Pour exécuter le programme utilisez ```./main``` sur une machine basée sous linux ou ```./main.exe``` sur windows.  
  
La version du compilateur utilisé est la 3.2.2 pour une architecture aarch64.  
Le programme devrait compiler correctement sur tous les architecutres communes si le compilateur est correctement paramétré.
Nous avons utilisé un Macbook Pro M1 2022, 16 Go RAM pour les mesures réalisées.

