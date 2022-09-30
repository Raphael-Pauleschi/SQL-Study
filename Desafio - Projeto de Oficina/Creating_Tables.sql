create database oficina;
use oficina;

create table address(
	idAddress int primary key not null,
    CEP varchar(8) not null,
    street varchar(45) not null,
    district varchar(45) not null,
    city varchar(45) not null,
    numberAddress int not null,
    complement varchar(20)
);

create table clients(
	idClient int primary key auto_increment,
    cpf varchar(11) unique not null,
    clientName varchar(20) not null,
    clientSurname varchar(30) not null,
    idCaddress int,
    constraint fk_client_address foreign key (idCaddres) references address(idAddress)
);

create table enginner(
 idEnginner int primary key auto_increment,
 cpf varchar(11) unique not null,
 enginnerName varchar(20) not null,
 enginnerSurname varchar(30) not null,
 especiality ENUM("General", "Motorcycle", "Electric", "Shocks"),
 idAaddress int,
 idAteam int,
 constraint fk_enginner_team foreign key (idAteam) references team(idTeam),
 constraint fk_enginner_address foreign key (idAaddress) references address(idAddress)
);

create table team(
	idTeam int primary key auto_increment,
    teamName varchar(10)
);

create table vehicle(
	idVehicle int primary key auto_increment,
    idVclient int,
    brand varchar(15) not null,
    model varchar(25) not null,
    color varchar(10) not null,
    plateNumber varchar(7) not null unique,
    renavam varchar(11) not null unique,
    constraint fk_vehicle_client foreign key (idVclient) references clients(idClient)
);

create table serviceOrder(
 idOrder int primary key auto_increment,
 dataEmision date not null,
 dataConclusion date not null,
 price double not null,
 serviceStatus enum ("Requested", "In Process", "Completed", "Cancelled") default "Requested",
 idSteam int,
 idSvehicle int,
 constraint fk_team_vehicle foreign key (idSvehicle) references vehicle(idVehicle),
 constraint fk_team_service foreign key (idSteam) references team(idTeam)
);

create table service(
	idService int primary key auto_increment,
    price double not null,
    dercriptionService varchar(100) not null
);

create table pieces(
	idPiece int primary key auto_increment,
    statusPiece enum("In stock","Out of stock","Requested") not null,
    price double not null,
    pieceName varchar(50) not null
);

create table orderPieces(
	idPpiece int,
    idPorder int,
    constraint fk_order_piece foreign key (idPpiece) references pieces(idPiece),
    constraint fk_piece_order foreign key (idPorder) references serviceOrder(idOrder)
);

create table orderServices(
	idSservice int,
    idSorder int,
    finished boolean default false,
    constraint fk_order_service foreign key (idPservice) references service(idService),
    constraint fk_service_order foreign key (idPorder) references serviceOrder(idOrder)
);

alter table address auto_increment = 1;
alter table clients auto_increment = 1;
alter table enginner auto_increment = 1;
alter table team auto_increment = 1;
alter table vehicle auto_increment = 1;
alter table serviceOrder auto_increment = 1;
alter table service auto_increment = 1;
alter table pieces auto_increment = 1;
