-- Création de la base de données pour l'application de réservation des ateliers artisanaux
DROP DATABASE IF EXISTS reservation_ateliers;
CREATE DATABASE IF NOT EXISTS reservation_ateliers;
USE reservation_ateliers;

-- Création de la table Artisan
CREATE TABLE Artisans (
    ArtisanID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Création de la table Atelier
CREATE TABLE Ateliers (
    AtelierID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(30) NOT NULL,
    Description text,
    ArtisanID INT,
    FOREIGN KEY (ArtisanID) REFERENCES Artisans(ArtisanID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE creneaux (
  creneauid int AUTO_INCREMENT PRIMARY KEY,
  date_debut datetime DEFAULT NULL,
  date_fin datetime DEFAULT NULL,
  places_disponibles int default 0,
  atelierid int NOT NULL,
  FOREIGN KEY (atelierid) REFERENCES Ateliers(atelierid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Création de la table Participant
CREATE TABLE Participants (
    ParticipantID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(50) NOT NULL,
    Prenom VARCHAR(50) NOT NULL,
    NoTel VARCHAR(15) NOT NULL,
    Email VARCHAR(100) NOT NULL    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Création de la table Reservation
CREATE TABLE Reservations (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    ParticipantID INT NOT NULL,
    FOREIGN KEY (ParticipantID) REFERENCES Participants(ParticipantID),
    creneauid INT,
    FOREIGN KEY (creneauid) REFERENCES creneaux(creneauid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insertion de données dans la table Artisan
INSERT INTO `reservation_ateliers`.`artisans`
(`Nom`, `Prenom`, `Email`)
VALUES
('Dupon','Jhon','dupon@gmail.com'),
('Leblanc','Anne','leblanc@gmail.com'),
('Morin','James','morin@gmail.com');

-- Insertion de données dans la table Atelier
INSERT INTO `reservation_ateliers`.`ateliers`
(`Nom`, `Description`, `ArtisanID`)
VALUES
('Atelier Poterie', 'Découvrez l art de la poterie', 1),
('Atelier Couture', 'Apprenez à coudre vos propres vêtements', 2),
('Atelier Menuiserie', 'Créez des meubles en bois uniques', 3),
('Atelier Peinture', 'Exprimez-vous à travers la peinture', 1),
('Atelier Cuisine', 'Cuisinez des plats délicieux', 2),
('Atelier Bijouterie', 'Fabriquez vos propres bijoux', 3);

-- Insertion de données dans la table Creneaux
INSERT INTO `reservation_ateliers`.`creneaux`
(`date_debut`, `date_fin`, `places_disponibles`, `atelierid`)
VALUES
('2023-12-10 09:00:00', '2023-12-10 11:00:00', 3, 1),
('2023-12-10 14:00:00', '2023-12-10 16:00:00', 2, 1),
('2023-12-11 10:30:00', '2023-12-11 12:30:00', 5, 1),
('2023-12-10 09:00:00', '2023-12-10 11:00:00', 2, 2),
('2023-12-10 13:00:00', '2023-12-10 14:00:00', 4, 2),
('2023-12-10 10:00:00', '2023-12-10 11:00:00', 5, 3),
('2023-12-12 13:00:00', '2023-12-12 16:00:00', 3, 4),
('2023-12-10 09:00:00', '2023-12-10 10:00:00', 4, 5),
('2023-12-08 13:00:00', '2023-12-08 14:00:00', 4, 6);

SELECT * FROM reservation_ateliers.participants;

SELECT * FROM reservation_ateliers.reservations;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------

