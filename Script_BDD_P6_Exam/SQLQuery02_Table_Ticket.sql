CREATE TABLE Ticket (
    id_ticket INT PRIMARY KEY IDENTITY(1,1),
    id_produit INT, -- Cl� �trang�re vers Produit
    id_version INT, -- Cl� �trang�re vers Version
    id_systemeexploitation INT, -- Cl� �trang�re vers SystemeExploitation
    id_statutticket INT, -- Cl� �trang�re vers StatutTicket
    date_creation DATE NOT NULL,
    date_resolution DATE, -- Peut �tre NULL si non r�solu
    description_probleme TEXT,
    resolution TEXT, -- Peut �tre NULL si non r�solu

    -- Cl�s �trang�res directes
    FOREIGN KEY (id_produit) REFERENCES Produit(id_produit),
    FOREIGN KEY (id_systemeexploitation) REFERENCES SystemeExploitation(id_systemeexploitation),
    FOREIGN KEY (id_statutticket) REFERENCES StatutTicket(id_statutticket),

    -- Contrainte pour garantir que la version est associ�e au produit correct
    CONSTRAINT produit_version_fk FOREIGN KEY (id_produit, id_version)
    REFERENCES Version(id_produit, id_version),

    -- Contrainte pour garantir que le syst�me d'exploitation est compatible avec la version et le produit
    CONSTRAINT version_systemeexploitation_fk FOREIGN KEY (id_produit, id_version, id_systemeexploitation)
    REFERENCES Compatibilite(id_produit, id_version, id_systemeexploitation)
);