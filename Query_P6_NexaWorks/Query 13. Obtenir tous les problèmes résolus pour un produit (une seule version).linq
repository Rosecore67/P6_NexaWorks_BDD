<Query Kind="Statements">
  <Connection>
    <ID>77d6d372-a427-4cd5-b66a-78f971b00f11</ID>
    <NamingServiceVersion>2</NamingServiceVersion>
    <Persist>true</Persist>
    <Server>localhost\SQLEXPRESS</Server>
    <AllowDateOnlyTimeOnly>true</AllowDateOnlyTimeOnly>
    <Database>P6_NexaWorks_BDD</Database>
    <DriverData>
      <LegacyMFA>false</LegacyMFA>
    </DriverData>
  </Connection>
</Query>

string nomProduit = "Planificateur d'entraînement";
string nomVersion = "2.0";

var problemesResolusVersion = from t in Tickets
                              join p in Produits on t.Id_produit equals p.Id_produit
                              join v in Versions on t.Id_version equals v.Id_version
                              join s in SystemeExploitations on t.Id_systemeexploitation equals s.Id_systemeexploitation
                              join st in StatutTickets on t.Id_statutticket equals st.Id_statutticket
                              where p.Nom_produit == nomProduit 
                                    && v.Numero_version == nomVersion 
                                    && st.Nom_statut == "Résolu"
                              select new 
                              {
                                  Produit = p.Nom_produit,
                                  Version = v.Numero_version,
                                  SystemeExploitation = s.Nom_systemeexploitation,
                                  Statut = st.Nom_statut,
                                  t.Date_creation,
                                  t.Description_probleme,
                                  t.Resolution
                              };

problemesResolusVersion.Dump();