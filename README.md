# informatique_deploy

Déploiement du site https://informatique.centrale-marseille.fr

# Architecture

Le déploiement dépend de plusieurs autre rpojet github. L'organisation pour que tout fonctionne est : 

- deploy/ : contient le projet https://github.com/informatiqueecm/informatique_deploy
- home/ : continent le projet https://github.com/informatiqueecm/informatique_home
- tutos/ : contient le projet https://github.com/informatiqueecm/informatique_tuto  Attention à la dépendance du thème(1)
- tc_poo/ : contient le projet https://github.com/informatiqueecm/informatique_tc_poo Attention à la dépendance du thème(1)
- public/ : continent à la fin le projet statique compilé

# Compilation

Sous mac/linux, exécutez la commande deploy/deploy.sh

(1) Le thème utilisé est : https://github.com/informatiqueecm/informatique_hugo_theme
    Il faut l'ajouter dans /themes pour pouvoir compiler le site
