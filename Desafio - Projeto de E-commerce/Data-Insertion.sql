use ecommerce;

show tables;

insert into clients(fname, minit, lname, address, anniversary) values 
		("Maria","M","Silva","rua silva de prata 29, Carangola- Cidade das flores",27/01/1961),
		("Matheus","O","Pimentel","rua alemada 289, Centro - Cidade das flores",12/09/1971),
        ("Ricardo","F","Silva","avenida alemada vinha 1009, Centro Cidade das flores",16/04/1996),
        ("Julia","S","França","rua lareijas 861, Centro - Cidade das flores",22/05/1984),
        ("Roberta","G","Assis","avenida de koller 19, Centro - Cidade das flores",21/03/2002),
        ("Isabela","M","Cruz","rua alameda das flores 28, Centro - Cidade das flores",04/03/1989),
        ("Rafael","C","Martins","Avenida Dona Deise 916, Setor Planície - Aparecida de Goiânia",05/07/1991),
        ("Helena","V","Rodrigues","Avenida Brigadeiro Trompowsky 176, Centro - Parnamirim",13/09/1978);

insert into legalEntity(idLclient,CNPJ) values
		(7,29139401000109),
        (8,20871415000148);

insert into privateIndividual(idIclient,CPF) values
		(1,123456789),(2,987654321),
        (3,45678913),(4,789123456),
        (5,987345631),(6,954789123);

insert into payments(idPclient, typePayment) values
		(1,"Billet"),(1,"Credit Card"),
        (2,"PIX"),(3,"Debit Card"),
        (3,"Credit Card"),(3,"Debit Card"),
        (4,"PIX");

insert into card(idCpayment, cardNumber, cvv, titularName, validateDate, cardLimit) values
		(2,"5342114776661253","866","Maria M Silva",00/04/2023, 2000),
        (4,"30268338062638","923","Ricardo F Silva",00/04/2024, 500),
        (5,"5000888219274708","284","Ricardo F Silva",00/28/09/2023, 1500),
        (6,"3564162494777279","711","Marcela F Silva",00/03/2023, 3000);
        
insert into pix(idPpayment,Pkey) values
	(3,"5891230985"),(7,"Julia.Franca@outlook.com");         

insert into product(pname, classificationKids, category, avaliation, size) values
		("Headphone",false,"Eletronics","3",null),
		("Barbie Elsa",true,"Toys","4",null),
		("Body Carters",true,"Clothing","5",null),
		("Microphone Vedo - Youtuber",false,"Eletronics","4",null),
		("Refractile sofa", false,"Furniture","3","3x57x80"),
		("Rice flour", false,"Food",null),
		("Fire Stick Amazon", false,"Eletronics","3",null);
 
 select * from clients;
 select * from product;
 
 insert into productOrder (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
	(1, "Send", "Compra via aplicativo", null,1),
	(2, default, "Compra via aplicativo",50,0),
	(3,"Processing",null, null,1),
	(4,"Send","Compra via site",150,0);
 
 insert into delivery(idDorder, deliveryStatus, trackingCode) values
	(1,"In way","SL123456789BR"),
	(4,"Delivery Failure","PK654901712BR");
 
 insert into requestedProduct (idRroduct, idRorder, rQuantity, proStatus) values
 (1,5,2,null),(2,5,1,null),(3,6,1,null);
 
 insert into stock ( stockLocation, quantity) values
 ("Rio de Janeiro",1000),("Rio de Janeiro",500),
 ("São Paulo",10),("São Paulo",100),
 ("São Paulo",10),("Brasilia",10);
 
 insert into stockLocation (idLproduct, idLstock, location) values
 (1,2,"RJ"),(2,3,"GO");
 
 insert into supplier (socialName, CNPJ, contact) values
 ("Almeida e filhos", 12345678123456, "21985474"),
 ("Eletrônicos Silva",854519649143457, "21985484"),
 ("Eletrônicos Valma",934567893934695, "21975474");
 
 insert into providedProducts (idPsupplier, idPproduct, quantity) values
 (1,1,500),(1,2,400),(2,4,633),(3,3,5),(2,5,10);
 
 insert into thirdPartySeller(socialName, abstName, CNPJ, CPF, location, contact) values
    ("Tech eletronics",null, 123456789456321, null,"Rio de Janeiro",219946287),
    ("Botique Durgas",null,null,123456782,"Rio de Janeiro",219567895),
    ("Kids World",null,456789123654485,"Sao Paulo",119865784);
    
insert into sellerProducts (idSseller, idSproducts, sQuantity) values
(1,6,80),(2,7,10);