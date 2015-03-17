# Qualification CS Games 2015

Ce répertoire contient tous les détails nécessaires pour les qualifications de
la DCI pour les CS Games 2015.

## Introduction

Votre mission, si vous l'acceptez, sera de développer un gestionnaire d'horaire
de compétition. Chaque année, les organisateurs de la qualification passent un temps
non négligeable à tenter de construire des horaires de compétition allant plaire
à tout le participant tout en s'assurant qu'une série de règles soit suivie telle que
tout le monde ait la chance de participer à un minimum de compétition ou encore que
personne n'ait à être à deux compétitions au même moment. Ainsi, vous aurez
trois heures afin de développer le plus de fonctionnalité demander. Qui sait,
peut-être que votre application sera utilisée pour créer votre horaire de
compétition!

## Contraintes

L'application peut-être développer à l'aide de n'importe quel langage et
technologie. Il est demandé de fournir toutes les ressources et dépendances
afin de simplifier la correction et d'éviter au correcteur de devoir trouver
pourquoi votre application refuse de fonctionner. Il est possible d'utiliser
les systèmes de dépendance de votre langage, par exemple Gem pour Ruby ou
encore npm pour nodejs (ou IO.js!). Dans le cas où vous utilisez Java ou C/C++,
veuillez distribuer les dépendances binaires (jar, dll ou so).

La conception de l'interface utilisateur est laissée au participant. Il est
possible de faire une application en console, GIU natif ou bien web. Les
correcteurs cherchent surtout à voir vos capacités de développeur et non de
designer. Il n'est donc pas recommandé d'investir une quantité de temps
majeur sur le UI. Il est à noter tout de même qu'un UI agréable sera jugé
favorablement.

## Liste de tâches

### [Document avec la liste de tâches](https://docs.google.com/spreadsheets/d/1BhsLXHFDRD98nxk1CNq4UHS2OKcykadmUC0MQu_z58k/edit?usp=sharing)

La liste de tâche est séparée en trois niveaux en ordre de difficulté (Base,
Intermédiaire et Progammagiciens). Il est prévu que la quantité de travail
excède le temps alloué. Ainsi, il est recommandé de lire la liste de tâche
en entier et bien choisir ce que vous pensez pouvoir compléter en trois
heures. Par exemple, il est inutile de construire une architecture permettant
l'évaluation d'un score si au final vous n'avez pas le temps d'implémenter
ladite évaluation du score.

Le fichier avec la liste de participant et de compétition à utiliser est
disponible dans le fichier [config.json](https://github.com/dciets/qualif_csgames_2015/blob/master/config.json) de ce répertoire.

Le fichier contient une liste de `participants` et `competitions`. Chaque participant
a un nom et une liste de préférence en ordre décroissant d'importance. La liste
de préférence est représentée sous forme de liste d'index de compétition. Ainsi,
la liste `[0,4,3]` représente une préférence pour `Scavenger hunt`, `TCS` et `Relay Programming`,
où `Savenger hunt` est préféré par rapport à `TCS`. Chaque liste de préférence est composée de
12 éléments. Étant donné qu'il y a 15 compétitions, chaque participant a donc 3 compétitions
auxquelles il ne veut pas participer.

## Remise

La remise doit être faites à [dci+qualif15@aeets.com](mailto:dci+qualif15@aeets.com) avec votre
`[QUALIF15] #{VOTRENOM}` comme sujet où #{VOTRENOM} est votre prénom et nom
de famille. Le contenu de votre courriel doit contenir votre application en pièce
jointe ou un lien vers le répertoire Git de votre application. Veuillez inclure
les indications pour exécuter votre application. Finalement, veuillez lister
les fonctionnalités de la liste de tâches que vous avez implémentée.

