-- Données des 25 tickets :

-- Ticket 1
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Maître des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-01-05', '2023-01-10',
    'Les alertes automatiques pour les fluctuations du marché ne se déclenchent pas correctement. L’utilisateur signale que les notifications ne sont pas envoyées lorsque le seuil défini pour une action est atteint.',
    'Correction d''une erreur dans la gestion des seuils d''alerte dans le module de notifications. Mise à jour du service de notification pour envoyer des alertes en temps réel.'
);

-- Ticket 2
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxiété sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-02-12', 
    'L''application se ferme de manière inattendue lorsque l''utilisateur tente de planifier une session d''exercice. Cela semble se produire principalement lors de l''utilisation du mode hors ligne.'
);

-- Ticket 3
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entraînement'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-03-15',
    'Les rappels pour les séances d''entraînement ne sont pas synchronisés avec l’agenda de l’utilisateur. Les rappels n’apparaissent pas dans l’application Calendrier d’iOS.'
);

-- Ticket 4
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Maître des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-07-07', '2023-07-14',
    'L''outil de calcul des dividendes affiche des montants incorrects lorsque plusieurs devises sont utilisées pour les transactions.',
    'Correction de l''algorithme de conversion des devises pour les calculs de dividendes. Ajout de tests supplémentaires pour les transactions multi-devises.'
);

-- Ticket 5
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxiété sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-05-22', '2023-05-30',
    'Les utilisateurs ne peuvent pas enregistrer de nouvelles stratégies d’adaptation après une mise à jour récente.',
    'Correction d''un problème lié à la base de données qui empêchait l''enregistrement de nouvelles entrées.'
);

-- Ticket 6
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entraînement'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-06-04', '2023-06-10',
    'Les notifications d’entraînement ne s’affichent pas correctement lorsque l’appareil est en mode économie d’énergie.',
    'Modification de l''API utilisée pour les notifications afin de les rendre compatibles avec le mode économie d’énergie d’Android.'
);

-- Ticket 7
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Maître des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '2.1' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-04-28',
    'L''exportation des rapports financiers vers Excel échoue systématiquement pour les fichiers de plus de 100 lignes. L''application génère un fichier corrompu.'
);

-- Ticket 8
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.2' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-02-03', '2023-02-20',
    'Le bouton "Confirmer l''achat" reste actif après avoir cliqué, provoquant des achats en double si l’utilisateur clique plusieurs fois.',
    'Implémentation d''un mécanisme de désactivation du bouton après le premier clic, ajout d''une animation de chargement pour indiquer le traitement de la transaction.'
);

-- Ticket 9
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxiété sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-01-05',
    'Les utilisateurs signalent que certaines données ne sont pas correctement synchronisées entre leurs appareils (iPhone et MacBook).'
);

-- Ticket 10
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entraînement'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-05-01', '2023-05-08',
    'Les résultats des tests de performance physique ne sont pas sauvegardés après leur saisie. L’utilisateur doit entrer les résultats à nouveau à chaque redémarrage.',
    'Correction du mécanisme de sauvegarde pour enregistrer les résultats après chaque saisie, même après un redémarrage.'
);

-- Ticket 11
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Maître des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-06-15', '2023-06-21',
    'Le calcul du rendement des investissements ne prend pas en compte les dividendes réinvestis.',
    'Ajout de la gestion des dividendes réinvestis dans les calculs financiers de l''application.'
);

-- Ticket 12
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-02-08',
    'L’application se bloque systématiquement lors de l’utilisation de la fonctionnalité de prévisualisation des transactions avant validation.'
);

-- Ticket 13
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entraînement'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-03-22', '2023-03-29',
    'Les utilisateurs ne peuvent pas modifier leurs objectifs d''entraînement après les avoir définis une première fois.',
    'Correction du bug dans le formulaire de mise à jour des objectifs d’entraînement.'
);

-- Ticket 14
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxiété sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-05-11', '2023-05-20',
    'Les exercices guidés audio ne se lancent pas sur certaines distributions Linux en raison d’un problème de compatibilité avec le lecteur multimédia intégré.',
    'Mise à jour du lecteur multimédia pour qu’il soit compatible avec un plus large éventail de distributions Linux.'
);

-- Ticket 15
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.3' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-04-15', '2023-04-25',
    'L’application ne permet pas de modifier les ordres existants après leur création.',
    'Ajout de la fonctionnalité de modification des ordres en cours de traitement.'
);

-- Ticket 16
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entraînement'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-06-12', '2023-06-15',
    'L''application se ferme de manière inattendue lors de l''ajout d''un exercice personnalisé.',
    'Correction du bug dans la fonctionnalité d''ajout d''exercices, avec une mise à jour de la gestion mémoire.'
);

-- Ticket 17
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Maître des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '2.1' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-03-30',
    'L''interface ne se redimensionne pas correctement sur les iPhone de petite taille, rendant certains boutons inutilisables.'
);

-- Ticket 18
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.2' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-04-10', '2023-04-15',
    'Le graphique des cours des actions ne se met pas à jour automatiquement lorsqu''une nouvelle transaction est effectuée.',
    'Mise à jour du module d''affichage pour rafraîchir les données après chaque transaction sans redémarrer l''application.'
);

-- Ticket 19
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entraînement'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-03-12', '2023-03-19',
    'Les utilisateurs rapportent que la fonction de suivi des calories brûlées est incorrecte lorsqu''ils sélectionnent "Course à pied" dans les types d''exercices.',
    'Correction de l''algorithme de calcul des calories en fonction de l''intensité et de la durée de l''exercice.'
);

-- Ticket 20
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.3' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-06-03', '2023-06-08',
    'L’affichage des valeurs boursières dans l''application n''est pas actualisé en temps réel. Un délai de plusieurs minutes est constaté entre les fluctuations réelles du marché et les données présentées aux utilisateurs.',
    'Optimisation de la connexion avec l’API des données boursières pour une actualisation plus fréquente et réduction des délais de synchronisation.'
);

-- Ticket 21
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxiété sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-01-20', '2023-02-01',
    'Les exercices de respiration guidée ne se lancent pas si l’utilisateur a activé le mode silencieux sur son téléphone, ce qui peut entraîner des confusions.',
    'Modification du comportement de l''application pour forcer le son dans les exercices guidés, même si le mode silencieux est activé.'
);

-- Ticket 22
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Maître des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '2.1' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-03-10', '2023-03-16',
    'Les graphiques de rendement sur les investissements à long terme présentent des écarts lorsque l’utilisateur zoome sur une période spécifique.',
    'Correction du bug d''affichage dans la gestion des échelles de temps des graphiques pour des périodes longues.'
);

-- Ticket 23
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.2' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-02-15', '2023-02-22',
    'L’application ne permet pas de modifier les préférences de notification pour certaines actions.',
    'Ajout de la possibilité de personnaliser les notifications par catégorie d''événement dans les paramètres.'
);

-- Ticket 24
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entraînement'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Linux'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-07-12',
    'L''application bloque lorsque l''utilisateur tente de sauvegarder un programme d''entraînement pour une durée supérieure à 12 semaines.'
);

-- Ticket 25
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxiété sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'Résolu'),
    '2023-02-19', '2023-02-27',
    'La fonctionnalité de journal personnel de l''application ne se synchronise pas correctement avec le cloud.',
    'Correction du mécanisme de synchronisation pour gérer les enregistrements hors ligne et assurer leur sauvegarde automatique dès que l''appareil se reconnecte à Internet.'
);


