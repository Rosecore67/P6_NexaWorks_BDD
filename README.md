# P6_NexaWorks_BDD

### Diagramme entité-association

![Capture d'écran 2024-10-18 113927](https://github.com/user-attachments/assets/2d0c6e8c-ebe4-4c89-a659-9254fe42471c)


---

Modèle Entité-Association : Système de Gestion de Tickets

## Introduction

Ce projet est un système de gestion de tickets pour suivre et résoudre les problèmes rencontrés avec des produits logiciels. Le modèle entité-association conçu pour ce projet est structuré autour de plusieurs entités principales : **Produit**, **Version**, **Système d'exploitation**, **Compatibilité**, **Statut du ticket**, et **Ticket**. Ce README décrit la structure de la base de données et les relations entre ces entités, accompagnées des contraintes d'intégrité et des détails d'implémentation.

## Structure des tables

### 1. **Produit**
   - **Description** : Représente un produit logiciel ou un service pour lequel des tickets peuvent être créés.
   - **Attributs** :
     - `id_produit` (INT) : Clé primaire unique du produit.
     - `nom_produit` (VARCHAR) : Nom du produit.

   ```sql
   CREATE TABLE Produit (
       id_produit INT PRIMARY KEY,
       nom_produit VARCHAR(255) NOT NULL
   );
   ```

### 2. **Version**
   - **Description** : Représente les différentes versions d'un produit.
   - **Attributs** :
     - `id_version` (INT) : Clé primaire unique de la version.
     - `numero_version` (VARCHAR) : Numéro de la version.
     - `id_produit` (INT) : Clé étrangère référant à l'entité **Produit**.
   - **Contrainte** :
     - Relation unique entre `id_produit` et `id_version` pour garantir que chaque version est bien associée à un produit unique.

   ```sql
   CREATE TABLE Version (
       id_version INT PRIMARY KEY,
       numero_version VARCHAR(10),
       id_produit INT,
       FOREIGN KEY (id_produit) REFERENCES Produit(id_produit),
       UNIQUE (id_produit, id_version)
   );
   ```

### 3. **Système d'Exploitation**
   - **Description** : Représente les différents systèmes d'exploitation compatibles avec les produits.
   - **Attributs** :
     - `id_systemeexploitation` (INT) : Clé primaire unique du système d'exploitation.
     - `nom_systemeexploitation` (VARCHAR) : Nom du système d'exploitation.

   ```sql
   CREATE TABLE SystemeExploitation (
       id_systemeexploitation INT PRIMARY KEY,
       nom_systemeexploitation VARCHAR(255) NOT NULL
   );
   ```

### 4. **Compatibilité**
   - **Description** : Définit les compatibilités entre un produit, une version, et un système d'exploitation.
   - **Attributs** :
     - `id_produit` (INT) : Clé étrangère vers la table **Produit**.
     - `id_version` (INT) : Clé étrangère vers la table **Version**.
     - `id_systemeexploitation` (INT) : Clé étrangère vers la table **Système d'Exploitation**.
   - **Contrainte** :
     - Clé primaire composite sur `id_produit`, `id_version`, et `id_systemeexploitation` pour garantir l'unicité de la compatibilité.

   ```sql
   CREATE TABLE Compatibilite (
       id_produit INT,
       id_version INT,
       id_systemeexploitation INT,
       PRIMARY KEY (id_produit, id_version, id_systemeexploitation),
       FOREIGN KEY (id_version) REFERENCES Version(id_version),
       FOREIGN KEY (id_systemeexploitation) REFERENCES SystemeExploitation(id_systemeexploitation),
       FOREIGN KEY (id_produit) REFERENCES Produit(id_produit)
   );
   ```

### 5. **Statut du Ticket**
   - **Description** : Indique l'état du ticket (par exemple, "En cours", "Résolu").
   - **Attributs** :
     - `id_statutticket` (INT) : Clé primaire unique du statut.
     - `nom_statut` (VARCHAR) : Nom du statut (ex : "En cours", "Résolu").

   ```sql
   CREATE TABLE StatutTicket (
       id_statutticket INT PRIMARY KEY,
       nom_statut VARCHAR(255) NOT NULL
   );
   ```

### 6. **Ticket**
   - **Description** : Représente les problèmes ou incidents signalés concernant un produit ou une version spécifique.
   - **Attributs** :
     - `id_ticket` (INT) : Clé primaire unique du ticket, avec auto-incrémentation.
     - `id_produit` (INT) : Clé étrangère vers **Produit**.
     - `id_version` (INT) : Clé étrangère vers **Version**.
     - `id_systemeexploitation` (INT) : Clé étrangère vers **Système d'Exploitation**.
     - `id_statutticket` (INT) : Clé étrangère vers **StatutTicket**.
     - `date_creation` (DATE) : Date de création du ticket.
     - `date_resolution` (DATE) : Date de résolution du ticket, peut être NULL si non résolu.
     - `description_probleme` (TEXT) : Description détaillée du problème rencontré.
     - `resolution` (TEXT) : Description de la solution apportée au problème, peut être NULL si non résolu.
   - **Contrainte** :
     - Clé étrangère multiple pour garantir que la version du produit et le système d'exploitation sont compatibles.

   ```sql
   CREATE TABLE Ticket (
       id_ticket INT PRIMARY KEY IDENTITY(1,1),
       id_produit INT,
       id_version INT,
       id_systemeexploitation INT,
       id_statutticket INT,
       date_creation DATE NOT NULL,
       date_resolution DATE,
       description_probleme TEXT,
       resolution TEXT,

       FOREIGN KEY (id_produit) REFERENCES Produit(id_produit),
       FOREIGN KEY (id_systemeexploitation) REFERENCES SystemeExploitation(id_systemeexploitation),
       FOREIGN KEY (id_statutticket) REFERENCES StatutTicket(id_statutticket),

       CONSTRAINT produit_version_fk FOREIGN KEY (id_produit, id_version)
       REFERENCES Version(id_produit, id_version),

       CONSTRAINT version_systemeexploitation_fk FOREIGN KEY (id_produit, id_version, id_systemeexploitation)
       REFERENCES Compatibilite(id_produit, id_version, id_systemeexploitation)
   );
   ```

## Relations et contraintes

- Chaque **Produit** peut avoir plusieurs **Versions**.
- Chaque **Version** d'un produit peut être compatible avec plusieurs **Systèmes d'exploitation**.
- Un **Ticket** est associé à une version spécifique d'un produit et peut avoir un **Statut**.
- La compatibilité entre une version d'un produit et un système d'exploitation est garantie via la table **Compatibilité**.

---

## Résumé des Associations

Le modèle entité-association de ce projet contient plusieurs associations entre les entités principales, décrites ci-dessous :

### 1. **Produit** ↔ **Version**
   - **Relation** : Un **Produit** peut avoir plusieurs **Versions** (relation 1 → N).
   - **Description** : Chaque produit peut être distribué en différentes versions. La table **Version** contient une clé étrangère `id_produit`, qui établit la relation avec la table **Produit**.

### 2. **Version** ↔ **Compatibilité** ↔ **Système d'Exploitation**
   - **Relation** : Une **Version** d'un produit peut être compatible avec plusieurs **Systèmes d'exploitation** (relation N → N via la table de jointure **Compatibilité**).
   - **Description** : La compatibilité entre un produit, une version et un système d'exploitation est gérée par la table **Compatibilité**. Chaque ligne de la table **Compatibilité** associe un produit (`id_produit`), une version (`id_version`), et un système d'exploitation (`id_systemeexploitation`), formant une relation tripartite.
   
### 3. **Ticket** ↔ **Produit** / **Version** / **Système d'Exploitation**
   - **Relation** : Un **Ticket** est lié à un **Produit**, une **Version**, et un **Système d'exploitation** (relation N → 1).
   - **Description** : Lorsqu'un utilisateur soumet un ticket pour un problème, celui-ci est lié à une version spécifique d'un produit et à un système d'exploitation. La table **Ticket** contient des clés étrangères vers les entités **Produit**, **Version**, et **Système d'exploitation**, assurant ainsi que chaque ticket est correctement lié à un environnement produit.

### 4. **Ticket** ↔ **Statut du Ticket**
   - **Relation** : Un **Ticket** possède un **Statut** qui définit son état actuel (relation N → 1).
   - **Description** : Chaque ticket a un statut qui peut être "En cours" ou "Résolu", ou tout autre statut pertinent. Cette relation est gérée par la table **StatutTicket**, et la table **Ticket** possède une clé étrangère `id_statutticket` pour lier chaque ticket à son statut.

### 5. **Version** ↔ **Produit**
   - **Relation** : Une **Version** appartient à un **Produit** (relation 1 → N).
   - **Description** : Un produit peut avoir plusieurs versions, mais une version est toujours associée à un seul produit. Cette relation est définie par la clé étrangère `id_produit` dans la table **Version**, qui fait référence à la table **Produit**.

### 6. **Compatibilité** ↔ **Version** / **Système d'Exploitation**
   - **Relation** : La table **Compatibilité** gère une relation **N → N** entre les versions de produits et les systèmes d'exploitation.
   - **Description** : Elle permet de lier plusieurs versions de produits à plusieurs systèmes d'exploitation en garantissant que certains systèmes sont compatibles avec des versions spécifiques.

### Diagramme Résumé :
   - Chaque **Produit** peut avoir plusieurs **Versions**.
   - Chaque **Version** peut être associée à plusieurs **Systèmes d'Exploitation** via la table **Compatibilité**.
   - Chaque **Ticket** est lié à un **Produit**, une **Version**, un **Système d'Exploitation** et un **Statut**.

---

### Exemple d'Associations

- **Produit → Version** : "Planificateur d'entraînement" a des versions "1.0", "1.1", "2.0".
- **Version → Système d'Exploitation (via Compatibilité)** : La version "2.0" du "Planificateur d'entraînement" est compatible avec "Windows", "macOS", et "Android".
- **Ticket → Statut** : Un ticket est soumis pour un problème rencontré dans la version "2.0" sous **Windows** et est actuellement **En cours**.

---

## Recréer la Base de Données dans votre Propre Environnement

### Pré-requis
Avant de commencer, assurez-vous d'avoir :
- **SQL Server** installé sur votre machine (ou accès à un serveur SQL).
- **SQLCMD** configuré et fonctionnel (disponible avec SQL Server Management Studio).
- Un éditeur de texte pour modifier les variables de connexion dans le fichier **.bat** (comme Notepad ou VSCode).

### Structure du Projet
Le dossier contenant les fichiers nécessaires à la création de la base de données s'appelle **Script_BDD_P6_Exam**. Il comprend les scripts SQL pour créer et remplir la base de données ainsi qu'un script batch (.bat) pour automatiser l'exécution de ces scripts.

Voici les fichiers que vous trouverez dans ce dossier :
- **SQLQuery01_Table_Produit_Version_SystemeDexploit...** : Script SQL pour créer les tables principales de la base de données.
- **SQLQuery02_Table_Ticket.sql** : Script SQL pour créer la table des tickets.
- **SQLQuery03_Donnees_Table_Produit.sql** : Script SQL pour insérer des données dans la table Produit.
- **SQLQuery04_Donnees_Systeme_d_Exploitation.sql** : Script SQL pour insérer des données dans la table SystemeExploitation.
- (etc. pour chaque script d'insertion de données)

### Automatisation avec le Script Batch
Pour automatiser la création et le remplissage de la base de données, un script batch a été créé : **Script_table_Copie.bat**. Ce fichier .bat prend en charge la création de la base de données et l'exécution de chaque script SQL dans le dossier.

#### Contenu du Fichier `.bat` :

```batch
@echo off
SETLOCAL

:: Variables pour la connexion SQL
SET SERVERNAME=localhost\SQLEXPRESS
SET DATABASE=P6_NexaWorks_BDDTESTINT
SET SCRIPTDIR=%~dp0

:: Création de la base de données si elle n'existe pas
sqlcmd -S %SERVERNAME% -d master -E -Q "IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'%DATABASE%') BEGIN CREATE DATABASE [%DATABASE%]; END"

:: Boucle pour exécuter tous les fichiers SQL dans le répertoire
FOR %%G IN ("%SCRIPTDIR%\*.sql") DO (
    echo Exécution du script %%~nxG...
    sqlcmd -S %SERVERNAME% -d %DATABASE% -E -i "%%G"
    IF %ERRORLEVEL% NEQ 0 (
        echo Erreur d'exécution du script %%~nxG
        pause
        exit /b 1
    )
)

echo Tous les scripts ont été exécutés avec succès.

ENDLOCAL
pause
```

### Étapes pour Recréer la Base de Données

1. **Télécharger et Extraire le Dossier**  
   Téléchargez le dossier **Script_BDD_P6_Exam** contenant tous les scripts .sql et le fichier batch **Script_table_Copie.bat**.

2. **Modification du Fichier Batch**  
   Ouvrez le fichier **Script_table_Copie.bat** et modifiez les variables si nécessaire :
   - **SERVERNAME** : Le nom de votre serveur SQL (par défaut `localhost\SQLEXPRESS`).
   - **DATABASE** : Le nom de la base de données à créer (par défaut `P6_NexaWorks_BDDTESTINT`, modifiable selon vos besoins).

3. **Exécuter le Script Batch**
   - Ouvrez le dossier **Script_BDD_P6_Exam** et double clicker sur le fichier **Script_table_Copie.bat**.
   - Le script batch créera la base de données et exécutera chaque fichier .sql pour créer les tables et insérer les données.

4. **Vérification**  
   Après l'exécution du script, la base de données **P6_NexaWorks_BDDTESTINT** sera créée avec toutes les tables nécessaires et les données pré-remplies. Vous pouvez accéder à la base de données via **SQL Server Management Studio** pour vérifier que tout a été correctement installé.

### Personnalisation
- **Nom de la base de données** : Si vous souhaitez utiliser un autre nom pour la base de données, modifiez simplement la variable `DATABASE` dans le fichier .bat.
- **Fichiers SQL** : Si vous ajoutez de nouveaux fichiers .sql dans le dossier, le script batch les prendra automatiquement en compte lors de l'exécution.

---

## Conclusion

Ce modèle entité-association (MEA) garantit la gestion des tickets en assurant l'intégrité des données et en facilitant la recherche et la gestion des incidents relatifs à un produit ou une version spécifique sur différents systèmes d'exploitation. Le modèle impose des contraintes d'intégrité référentielle, tout en permettant une gestion souple et évolutive des produits et versions à mesure que les produits évoluent.
