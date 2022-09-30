use ecommerce;

-- Exibição dos carros de pedidos cancelados
select (model,serviceStatus) from vehicle, serviceOrder
where serviceStatus = 'Cancelled' and idVehicle=idSvehicle;

-- peças fora de estoque por preço
select * from pieces where statusPiece != 'In stock' order by price;

-- Mostrar os carros de clientes com pedido concluído
select concat(clientName,' ', clientSurname) as ClientName, concat(model,brand) as Car from clients,serviceOrder,vehicle
where idVehicle = idSVehicle and idvclient = idClient;

