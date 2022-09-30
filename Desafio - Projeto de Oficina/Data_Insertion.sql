use oficina;
insert into address(CEP,street,district,city,numberAddress,complement) values
("04560905","Rua Nebraska","Brooklin Paulista","São Paulo",497,null),
("06721507","Rua Mário Andreatini", "da Graça","Cotia",160,"comercio"),
("13053009","Rua Palmeira Ráfia","Jardim Irmãos Sigrist","Campinas",255,null),
("11677090","Rua Pescador Manoel Marcondes Sodré","Massaguaçu","Caraguatatuba",802,"A"),
("07223181", "Viela Nepal", "Cidade Industrial Satélite de São Paulo","Guarulhos",424,null),
("15046120","Rua João Gomes de Rezende","Parque Residencial Dom Lafaiete Libânio","São José do Rio Preto",424,null),
("02329020","Rua Inverno","Jardim Hebrom","São Paulo",701,"portão dourado"),
("05615000","Rua José Jannarelli","Vila Progredior","São Paulo", 1002,"Apt 210"),
("07243110","Rua Capelinha","Cidade Parque Brasília", "Guarulhos",93,null),
("07855050","Rua Santiago","Parque Vitória","Franco da Rocha",1889,"B");

insert into clients(cpf,clientName,clientSurname,idCaddress) values
("87863947030","Sebastião","Danilo Silveira",1),
("53506264001","Kauê","Luiz Gomes",2),
("53506264001","Daniel","Caio Peixoto",3),
("07922752091","Manoel Rafael","Fernando Freitas",4),
("48116244086","Roberto","Danilo Silveira",1),
("34398732004","Malu","Débora Cardoso",5),
("44335146086","Camila","Larissa da Mata",6),
("41895254051","Sérgio","Julio de Paula",2);

insert into team(teamName) values ("Team 1"),("Team 2");

insert into vehicle(idVclient,brand,model,color,plateNumber,renavam) values
(1,"Fiat","Siena","Vermelho","MNR9325","20941290730"),
(2,"VolksWagen","Saveiro","Azul","NDV8999","64633536250"),
(3,"Toyota","Celica","Prata","MOH9452","00403095379"),
(4,"VolksWagen","Fox Plus","Marrom","JLO3777","49610236310"),
(4,"Subaru","Impreza","Dourado","MJS6331","19411586174"),
(5,"Fiat","Bravo Sporting","Laranja","KCV3761","92271464749"),
(6,"VolksWagen","Gol","Branco","MWS9479","63113898256"),
(7,"Ford","Ranger","Preto","JJK8714","91236741164"),
(2,"Ford","Mustang","Prata","JZO5355","Dourado");

insert into engineer(cpf, enginnerName, enginnerSurname, especiality, idAaddress, idAteam) values
("36149113574","Rafael","Caleb Cardoso","Motorcycle",5,2),
("05233083965","Louise","Francisca Gonçalves","General",7,2),
("90883763524","Daiane","Julia das Neves","General",8,1),
("24635102262","Sabrina","Aparecida da Costa","Shocks",9,1),
("74002041301","Nina","Mariana Cavalcanti","Eletric",10,1);

insert into serviceOrder(dataEmision, dataConclusion, price, serviceStatus, idSteam, idSvehicle) values
('2022-09-20','2022-10-01',400,"In Process",1,1),
('2022-03-12','2022-03-16',2000,"Cancelled",2,2),
('2022-04-14','2022-06-21',600,"Completed",2,3),
('2022-01-01','2022-02-28',2000,"Completed",2,4),
('2022-03-14','2022-03-31',3400,"Completed",1,5),
('2022-07-11','2022-08-01',1200,"Cancelled",1,6),
('2022-09-29','2022-11-25',600,"In Process",2,7);

insert into service(price, dercriptionService) values
(1000,"Pintura"),(100,"Trocar peças"),(299,"Pneu Furado"),(213,"Problema no motor");

insert into pieces(statusPiece,price,pieceName) values
("In stock",78,"Aro de Pneu"),
("Requested",35,"Tinta automotiva laranja"),
("In stock",162,"Pneu"),
("Out of stock",4000,"Motor"),
("In stock",35,"Tinta automotiva prata");

insert into orderServices(idSorder,idSservice,finished) values 
(1,1,false),(2,4,false),(3,4,true),
(4,3,true),(5,2,true),(6,3,false),
(7,1,false);

insert into orderPieces(idPpiece,idPorder) values
(5,1),(4,2),(4,3),(3,4),(1,5),(3,6),(4,7);





