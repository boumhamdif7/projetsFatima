# Application Spring Boot MVC avec Thymeleaf

## Description

Cette application est basée sur Spring Boot et utilise Thymeleaf comme moteur de templates pour la partie MVC. 
Elle démontre comment créer une application web simple avec des pages dynamiques.

## Fonctionnalités

- Affichage de la liste des ateliers
- Réservation d'un atelier
- Annulation d'une réservation
- Affichage de la liste des réservations

## Prérequis

- Java JDK 17 ou supérieur
- Maven

## Installation

1. Clonez le projet :

   ```bash
   git clone https://github.com/boumhamdif7/projetsFatima.git

2. Créez une base de données local MySql en utilisant le script /Projet_Final_JavaSpringBoot/ReservationAteliers.sql

3. Accédez au répertoire du projet :

   ```bash
   cd votre-projet
   
4. Exécutez l'application avec Maven :

   ```bash
   mvn spring-boot:run
   
5. Ouvrez votre navigateur et accédez à http://localhost:8080.


## Utilisation
- Consultez la liste des ateliers
- Réservez un atelier en cliquant sur le bouton "Réserver"
- Annulez une réservation si nécessaire
- Consultez la liste des réservations


## Configuration
	Aucune configuration spécifique n'est requise pour cette application. 
	Elle utilise la configuration par défaut de Spring Boot.

### application.properties
	Le fichier `src/main/resources/application.properties` contient la configuration principale de l'application.

## Auteur
Fatima Boumhamdi