-- criação do bd para o cenário de E-commerce
create database ecommerce;
use ecommerce;
create table clients(
	idClient int auto_increment primary key,
    fname varchar(10),
    minit char(3),
    lname varchar(20),
    address varchar(100),
    anniversary date not null
);

create table privateIndividual(
	idIclient int,
    CPF char(11) unique not null,
    constraint fk_individual foreign key (idIclient) references clients(idClient)
);

create table legalEntity(
	idLclient int,
    CNPJ char(14) unique not null,
    constraint fk_legal foreign key (idLclient) references clients(idClient)
);

create table product(
	idProduct int auto_increment primary key,
    productName varchar(45) not null,
    category enum("Eletronics","Furniture","Toys","Food","Clothing") not null,
    price float not null,
    avaliation float default 0,
    classificationKids boolean default false,
    size varchar(10), 
    productDescription varchar(45)
);

create table payments(
	idPclient int,
    idPayment int auto_increment,
    typePayment enum("Billet","PIX","Debit Card","Credit Card"),
    constraint fk_payment_client foreign key (idPclient) references clients(idClient),
    primary key(idPclient, idPayment)
);

create table pix (
	idPpayment int,
    pKey varchar(45) not null,
    constraint fk_pix foreign key (idPpayment) references payments(idPayment)
);
create table card(
	idCpayment int,
    cardNumber varchar(20) unique not null,
    cvv char(3) not null,
    titularName varchar(45) not null,
    validateDate date not null,
    cardLimit float,
    constraint fk_card foreign key (idCpayment) references payments(idPayment)
);

create table productOrder(
	idOrder int auto_increment primary key,
    idOrderClient int,
    shippingPrice float default 10,
    requestDescription varchar(45),
    requestStatus ENUM("Canceled","In progress", "Processing", "Send", "Arrived") default "In progress",
	paymentCash boolean default false,
    -- idPayment 
    constraint fk_order_Client foreign key (idOrderClient) references clients(idClient)
    on update cascade
);

create table delivery(
	idDorder int,
	deliveryStatus ENUM("In way", "Arrived", "Delivery Failure"),
	trackingCode int not null,
    constraint fk_delivery foreign key (idDorder) references productOrder(idOrder)
);

create table supplier(
	idSupplier int auto_increment primary key,
    socialName varchar(45) not null,
    CNPJ varchar(14) unique not null,
    contact char(11) not null
);

create table thirdPartySeller(
	idThirdPatter int auto_increment primary key,
    socialName varchar (45) not null,
    abstName varchar (45),
    CNPJ char(14),
    CPF char (11),
    location varchar(45),
    contact varchar(12) not null
);

create table stock(
	idStock int auto_increment primary key,
    quantity int,
	stockLocation varchar(45)
);

create table stockLocation(
	idLproduct int,
    idLstock int,
    location char(2),
	constraint fk_stockLocation_Stock foreign key (idLstock) references stock(idStock),
    constraint fk_stockLocation_Product foreign key (idLproduct) references product(idProduct),
    primary key (idLproduct, idLstock)
);

create table sellerProducts(
	idSseller int,
    idSroduct int,
    primary key (idSseller, idSproduct),
	constraint fk_sellerProducts_seller foreign key (idSseller) references thirdPartSeller(idThirdPatter),
	constraint fk_sellerProducts_product foreign key (idSproduct) references product(idProduct),
	sQuantity int default 1
);

create table providedProducts(
	idPproduct int,
    idPsupplier int,
    primary key (idPsupplier, idPproduct),
	constraint fk_providedProducts_supplier foreign key (idPsupplier) references supplier(idSupplier),
	constraint fk_providedProducts_product foreign key (idPproduct) references product(idProduct),
	pQuantity int not null
);

create table requestedProduct(
	idRorder int,
    idRproduct int,
	primary key(idRorder, idRproduct),
	constraint fk_requestedProduct_Order foreign key (idRorder) references productOrder(idOrder),
	constraint fk_requestedProduct_Product foreign key (idRproduct) references product(idProduct),
    proStatus enum ("Available","Not Available") default "Available",
	rQuantity int default 1
);

alter table payment auto_increment = 1;
alter table stock auto_increment = 1;
alter table clients auto_increment = 1;
alter table product auto_increment = 1;
alter table productOrder auto_increment = 1;
alter table thirdPartySeller auto_increment = 1;
alter table supplier auto_increment = 1;