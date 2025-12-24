-- Création de la table Clients
CREATE TABLE Clients (
    ClientId INT PRIMARY KEY,
    Nom NVARCHAR(50),
    Prenom NVARCHAR(50),
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Ville NVARCHAR(50)
);

-- Insertion de données dans la table Clients
INSERT INTO Clients (ClientId, Nom, Prenom, Email, Ville) VALUES
(1, 'Dupont', 'Jean', 'jean.dupont@email.com', 'Paris'),
(2, 'Martin', 'Sophie', 'sophie.martin@email.com', 'Lyon'),
(3, 'Bernard', 'Paul', 'paul.bernard@email.com', 'Marseille'),
(4, 'Durand', 'Claire', 'claire.durand@email.com', 'Bordeaux'),
(5, 'Leroy', 'Julien', 'julien.leroy@email.com', 'Paris'),
(6, 'Moreau', 'Emma', 'emma.moreau@email.com', 'Nice'),
(7, 'Fournier', 'Lucas', 'lucas.fournier@email.com', 'Lille'),
(8, 'Girard', 'Chloe', 'chloe.girard@email.com', 'Paris'),
(9, 'Roux', 'Maxime', 'maxime.roux@email.com', 'Strasbourg'),
(10, 'Vincent', 'Laura', 'laura.vincent@email.com', 'Marseille');

-- Exercice 1: Afficher toutes les colonnes
SELECT * 
FROM Clients;

-- Exercice 2: Afficher les noms, prénoms et emails des clients
SELECT Nom, Prenom, Email 
FROM Clients;

-- Exercices 3: Afficher la liste des villes distinctes
SELECT DISTINCT Ville
FROM Clients;

-- Exercice 4: Utilisation des alias
SELECT 
    Nom AS NomClient, 
    Prenom AS PrenomClient 
FROM Clients;