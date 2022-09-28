use ecommerce;

select count(*) from clients;
select * from clients c, productOrder o where c.idClient = idOrderClient;
select fname, lname, idOrder, orderStatus from clients c, productOrder o where c.idClient = idOrderClient;
select concat(fname,' ', lname)as Client, idOrder as Request, orderStatus as Status from clients c, productOrder o where c.idClient = idOrderClient;

 insert into productOrder (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
 (2, default, "Compra via aplicativo", null,1);
 
 select count(*) from clients c, productOrder o 
 where c.idClient = idOrderClient;
 
 -- recuperando pedido com produto associado
 select * from clients c 
	inner join productOrder o  on c.idClient = o.idOrderClient
	inner join requestedProduct p on p.idRorder = o.idOrder
    group by idClient;

 -- Recuperar quantos pedidos realizados pelos clientes
 select c.idClient, fname,count(*) as Number_of_orders from clients c 
 inner join productOrder o  on c.idClient = o.idOrderClient
    group by idClient;

-- Algum vendedor também é fornecedor
select t.fantasyName,t.CNPJ from thirdSellerPatter t, supplier s
	where t.CNPJ = s.CNPJ;
    
-- Relação de produtos fornecedores e estoques
select p.idProduct, p.pname, st.idStock, sl.location, su.idSupplier, su.socialName 
	from products p, stock st, supplier su, stockLocation sl, providedProducts sp
	where p.idProduct = sl.idLproduct or p.idProduct = sp.idPproduct
	group by idProduct; 

-- Relação de nomes dos fornecedores e nomes dos produtos    
select p.idProduct, p.pname, su.idSupplier, su.socialName 
	from products p, supplier su,  providedProducts sp
	where p.idProduct = sp.idPproduct
	group by idSupplier; 