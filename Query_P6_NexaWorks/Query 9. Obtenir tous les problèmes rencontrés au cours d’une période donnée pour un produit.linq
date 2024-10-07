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
List<string> motsCles = new List<string> { "synchronisé","sauvegarder" };
DateOnly debutPeriode = new DateOnly(2023, 01, 01);
DateOnly finPeriode = new DateOnly(2023, 12, 31);

var problemesPeriodeProduitMotsCles = (from t in Tickets
                                      join p in Produits on t.Id_produit equals p.Id_produit
                                      join v in Versions on t.Id_version equals v.Id_version
                                      join s in SystemeExploitations on t.Id_systemeexploitation equals s.Id_systemeexploitation
                                      join st in StatutTickets on t.Id_statutticket equals st.Id_statutticket
                                      where p.Nom_produit == nomProduit
                                            && t.Date_creation >= debutPeriode
                                            && t.Date_creation <= finPeriode
                                      select new 
                                      {
                                          Produit = p.Nom_produit,
                                          Version = v.Numero_version,
                                          SystemeExploitation = s.Nom_systemeexploitation,
                                          Statut = st.Nom_statut,
                                          t.Date_creation,
                                          t.Description_probleme
                                      })
                                      .AsEnumerable()  
                                      .Where(t => motsCles.Any(motCle => t.Description_probleme.Contains(motCle)));

problemesPeriodeProduitMotsCles.Dump();