-- Donn�es des 25 tickets :

-- Ticket 1
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Ma�tre des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-01-05', '2023-01-10',
    'Les alertes automatiques pour les fluctuations du march� ne se d�clenchent pas correctement. L�utilisateur signale que les notifications ne sont pas envoy�es lorsque le seuil d�fini pour une action est atteint.',
    'Correction d''une erreur dans la gestion des seuils d''alerte dans le module de notifications. Mise � jour du service de notification pour envoyer des alertes en temps r�el.'
);

-- Ticket 2
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxi�t� sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-02-12', 
    'L''application se ferme de mani�re inattendue lorsque l''utilisateur tente de planifier une session d''exercice. Cela semble se produire principalement lors de l''utilisation du mode hors ligne.'
);

-- Ticket 3
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entra�nement'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-03-15',
    'Les rappels pour les s�ances d''entra�nement ne sont pas synchronis�s avec l�agenda de l�utilisateur. Les rappels n�apparaissent pas dans l�application Calendrier d�iOS.'
);

-- Ticket 4
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Ma�tre des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-07-07', '2023-07-14',
    'L''outil de calcul des dividendes affiche des montants incorrects lorsque plusieurs devises sont utilis�es pour les transactions.',
    'Correction de l''algorithme de conversion des devises pour les calculs de dividendes. Ajout de tests suppl�mentaires pour les transactions multi-devises.'
);

-- Ticket 5
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxi�t� sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-05-22', '2023-05-30',
    'Les utilisateurs ne peuvent pas enregistrer de nouvelles strat�gies d�adaptation apr�s une mise � jour r�cente.',
    'Correction d''un probl�me li� � la base de donn�es qui emp�chait l''enregistrement de nouvelles entr�es.'
);

-- Ticket 6
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entra�nement'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-06-04', '2023-06-10',
    'Les notifications d�entra�nement ne s�affichent pas correctement lorsque l�appareil est en mode �conomie d��nergie.',
    'Modification de l''API utilis�e pour les notifications afin de les rendre compatibles avec le mode �conomie d��nergie d�Android.'
);

-- Ticket 7
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Ma�tre des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '2.1' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-04-28',
    'L''exportation des rapports financiers vers Excel �choue syst�matiquement pour les fichiers de plus de 100 lignes. L''application g�n�re un fichier corrompu.'
);

-- Ticket 8
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.2' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-02-03', '2023-02-20',
    'Le bouton "Confirmer l''achat" reste actif apr�s avoir cliqu�, provoquant des achats en double si l�utilisateur clique plusieurs fois.',
    'Impl�mentation d''un m�canisme de d�sactivation du bouton apr�s le premier clic, ajout d''une animation de chargement pour indiquer le traitement de la transaction.'
);

-- Ticket 9
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxi�t� sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-01-05',
    'Les utilisateurs signalent que certaines donn�es ne sont pas correctement synchronis�es entre leurs appareils (iPhone et MacBook).'
);

-- Ticket 10
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entra�nement'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-05-01', '2023-05-08',
    'Les r�sultats des tests de performance physique ne sont pas sauvegard�s apr�s leur saisie. L�utilisateur doit entrer les r�sultats � nouveau � chaque red�marrage.',
    'Correction du m�canisme de sauvegarde pour enregistrer les r�sultats apr�s chaque saisie, m�me apr�s un red�marrage.'
);

-- Ticket 11
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Ma�tre des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-06-15', '2023-06-21',
    'Le calcul du rendement des investissements ne prend pas en compte les dividendes r�investis.',
    'Ajout de la gestion des dividendes r�investis dans les calculs financiers de l''application.'
);

-- Ticket 12
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-02-08',
    'L�application se bloque syst�matiquement lors de l�utilisation de la fonctionnalit� de pr�visualisation des transactions avant validation.'
);

-- Ticket 13
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entra�nement'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-03-22', '2023-03-29',
    'Les utilisateurs ne peuvent pas modifier leurs objectifs d''entra�nement apr�s les avoir d�finis une premi�re fois.',
    'Correction du bug dans le formulaire de mise � jour des objectifs d�entra�nement.'
);

-- Ticket 14
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxi�t� sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-05-11', '2023-05-20',
    'Les exercices guid�s audio ne se lancent pas sur certaines distributions Linux en raison d�un probl�me de compatibilit� avec le lecteur multim�dia int�gr�.',
    'Mise � jour du lecteur multim�dia pour qu�il soit compatible avec un plus large �ventail de distributions Linux.'
);

-- Ticket 15
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.3' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-04-15', '2023-04-25',
    'L�application ne permet pas de modifier les ordres existants apr�s leur cr�ation.',
    'Ajout de la fonctionnalit� de modification des ordres en cours de traitement.'
);

-- Ticket 16
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entra�nement'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-06-12', '2023-06-15',
    'L''application se ferme de mani�re inattendue lors de l''ajout d''un exercice personnalis�.',
    'Correction du bug dans la fonctionnalit� d''ajout d''exercices, avec une mise � jour de la gestion m�moire.'
);

-- Ticket 17
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Ma�tre des investissements'),
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
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-04-10', '2023-04-15',
    'Le graphique des cours des actions ne se met pas � jour automatiquement lorsqu''une nouvelle transaction est effectu�e.',
    'Mise � jour du module d''affichage pour rafra�chir les donn�es apr�s chaque transaction sans red�marrer l''application.'
);

-- Ticket 19
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entra�nement'),
    (SELECT id_version FROM Version WHERE numero_version = '2.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-03-12', '2023-03-19',
    'Les utilisateurs rapportent que la fonction de suivi des calories br�l�es est incorrecte lorsqu''ils s�lectionnent "Course � pied" dans les types d''exercices.',
    'Correction de l''algorithme de calcul des calories en fonction de l''intensit� et de la dur�e de l''exercice.'
);

-- Ticket 20
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.3' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Windows'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-06-03', '2023-06-08',
    'L�affichage des valeurs boursi�res dans l''application n''est pas actualis� en temps r�el. Un d�lai de plusieurs minutes est constat� entre les fluctuations r�elles du march� et les donn�es pr�sent�es aux utilisateurs.',
    'Optimisation de la connexion avec l�API des donn�es boursi�res pour une actualisation plus fr�quente et r�duction des d�lais de synchronisation.'
);

-- Ticket 21
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxi�t� sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.1' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'iOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-01-20', '2023-02-01',
    'Les exercices de respiration guid�e ne se lancent pas si l�utilisateur a activ� le mode silencieux sur son t�l�phone, ce qui peut entra�ner des confusions.',
    'Modification du comportement de l''application pour forcer le son dans les exercices guid�s, m�me si le mode silencieux est activ�.'
);

-- Ticket 22
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Ma�tre des investissements'),
    (SELECT id_version FROM Version WHERE numero_version = '2.1' AND id_produit = 2),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-03-10', '2023-03-16',
    'Les graphiques de rendement sur les investissements � long terme pr�sentent des �carts lorsque l�utilisateur zoome sur une p�riode sp�cifique.',
    'Correction du bug d''affichage dans la gestion des �chelles de temps des graphiques pour des p�riodes longues.'
);

-- Ticket 23
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Trader en herbe'),
    (SELECT id_version FROM Version WHERE numero_version = '1.2' AND id_produit = 1),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'MacOS'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-02-15', '2023-02-22',
    'L�application ne permet pas de modifier les pr�f�rences de notification pour certaines actions.',
    'Ajout de la possibilit� de personnaliser les notifications par cat�gorie d''�v�nement dans les param�tres.'
);

-- Ticket 24
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, description_probleme)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''entra�nement'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 4),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Linux'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'En cours'),
    '2023-07-12',
    'L''application bloque lorsque l''utilisateur tente de sauvegarder un programme d''entra�nement pour une dur�e sup�rieure � 12 semaines.'
);

-- Ticket 25
INSERT INTO Ticket (id_produit, id_version, id_systemeexploitation, id_statutticket, date_creation, date_resolution, description_probleme, resolution)
VALUES (
    (SELECT id_produit FROM Produit WHERE nom_produit = 'Planificateur d''anxi�t� sociale'),
    (SELECT id_version FROM Version WHERE numero_version = '1.0' AND id_produit = 3),
    (SELECT id_systemeexploitation FROM SystemeExploitation WHERE nom_systemeexploitation = 'Android'),
    (SELECT id_statutticket FROM StatutTicket WHERE nom_statut = 'R�solu'),
    '2023-02-19', '2023-02-27',
    'La fonctionnalit� de journal personnel de l''application ne se synchronise pas correctement avec le cloud.',
    'Correction du m�canisme de synchronisation pour g�rer les enregistrements hors ligne et assurer leur sauvegarde automatique d�s que l''appareil se reconnecte � Internet.'
);


