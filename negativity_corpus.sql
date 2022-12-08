.mode csv
create table pos(id,pos);
.import pos.csv pos
create table neg(id,neg);
.import neg.csv neg
.output neg_livres.csv
select sum(n) as n,annee from gram where gram in (select neg from neg) group by annee;
.output pos_livres.csv
select sum(n) as n,annee from gram where gram in (select pos from pos) group by annee;

