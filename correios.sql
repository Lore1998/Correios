drop database correios_db;
create database correios_db;
use correios_db;

create table ufs ( id int primary key auto_increment ,sigla varchar (2) not null unique);
create table localidades( id int primary key auto_increment ,localidade varchar (100) not null);
create table bairros (id int primary key auto_increment,bairro varchar (100) not null);
create table logradouros (id int primary key auto_increment,logradouro varchar(100) not null);

alter table localidades add column uf_id int not null;
alter table localidades add constraint fk_uf_id foreign key (uf_id) references ufs (id);
alter table localidades add column cep_cidade bigint not null;
alter table localidades add constraint  cep_geral_c unique (cep_cidade);


alter table bairros add column local_id int not null;
alter table bairros add constraint local_id foreign key (id) references localidades (id);
alter table bairros add column cep_bairro bigint;

alter table logradouros add column bairro_id int not null;
alter table logradouros add constraint bairro_id foreign key (id) references bairros (id);
alter table logradouros add column cep_logradouro bigint;




INSERT into ufs (sigla) values ('BA'), ('SP'), ('RJ'), ('ES'),('PA'),('AM'),('MT'),('MG'),('CE'),('SE');

INSERT INTO localidades (localidade, uf_id,cep_cidade) VALUES ('Vitoria da Conquista',1,45000000),('Itapetinga',1,45700000), ('Pocoes',1,45260000),('Bom Jesus da Lapa',1,47600000),
															  ('Cruz das Almas',1,44380000),('Ilheus',1,45650015), ('Jacobina',1,44700000 ),('Jequie',1,45200005),
															  ('Paulo Afonso',1,48601000 ), ('Feira de Santana',1,44001001),
                                                                                                                             
                                                              ('Anhembi',2,18620000),('Americana',2,13465005),('Barueri',2,06401000),('Bauru',2,17010000),('Campinas',2, 13010000),
                                                               ('Cruzeiro',2, 12701000),('Diadema',2,09910000),('Dumont',2,14120000),('Embaúba',2,15425000),
                                                               ('Engenheiro Coelho',2,13165000),
                                                               
                                                               ('Angra dos Reis',3,23900010),('Arraial do Cabo',3,28930000),('Barra do Piraí',3,27110000),('Bom Jardim',3,28660000),
                                                               ('Cabo Frio',3, 28905000 ),('Cantagalo',3, 28500000),('Duas Barras',3,28650000),('Duque de Caxias',3,25010000),
                                                               ('Engenheiro Paulo de Frontin',3,26650000),('Saquarema',3,28990000),
                                                               
                                                               ('Aracruz',4,29190010),('Atilio Vivacqua',4,29490000 ),('Bom Jesus do Norte',4, 29460000),('Brejetuba',4,29630000),
                                                               ('Conceicao da Barra',4,29960000),('Conceicao do Castelo',4,29370000),('Domingos Martins',4, 29260000),
                                                               ('Dores do Rio Preto',4,29580000), ('Ecoporanga',4, 29850000),('Guarapari',4,29200010),     
                                                               
																('Aveiro',5,68150000),('Bagre',5,68475000),('Bannach',5,68388000),('Trairão',5,68198000),
                                                               ('Tracuateua',5, 68647000),('Viseu',5,68620000),('Vitória do Xingu',5,68383000),('Xinguara',5, 68555006),('Sapucaia',5,68548000),
                                                               ('Tailândia',5,68695000),
                                                               
																('Anama',6,69445000),('Anori',6,69440000),('Benjamin Constant',6,69630000),('Beruri',6,69430000),('Fonte Boa',6,69670000),
                                                               ('Guajará',6,69895000),('Itapiranga',6,69120000),('Manaus',6,69001009),('Nova Olinda do Norte',6,69230000),
                                                               ('Parintins',6, 69150990),

																										
																('Acorizal',7,78480000),('Água Boa',7,78635000),('Barra do Bugres',7,78390000),('Bom Jesus do Araguaia',7,78678000),
                                                                ('Confresa',7,78652000),('Guiratinga',7,78760000),('Juruena',7,78340000),('Juara',7,78575000),('Nova Canaa do Norte',7,78515000),
                                                                ('Novo Mundo',7,78528000),                    
                                                               
																('Águas Formosas',8, 39880000),('Águas Vermelhas',8, 39990000),('Douradoquara',8,38530000) ,('Entre Rios de Minas',8, 35490000) ,	
																('Entre Folhas',8, 35324000),('Fernandes Tourinho',8,35135000 ),('Florestal',8,35690000),('Fronteira',8,38230000),('Itamarandiba',8,39670000),
																('Itapecerica',8,35550000 ),
                                                               
                                                               ('Alcântaras',9,62120000),('Altaneira',9,63195000),('Chorozinho',9,62875000),('Crato',9,63100005),('Itarema',9,62590000),('Mauriti',9,63210000),
                                                                 ('Morrinhos',9,62550000),('Ocara',9,62755000),('Paraipaba',9,62685000),('Parambu',9,63680000),



																('Aracaju',10, 49000001),('Areia Branca',10,49580000),('Barra dos Coqueiros',10,49140000),('Canhoba',10,49880000),('Capela',10,49700000),
																('Ilha das Flores',10,49990000),('Laranjeiras',10,49170000),('Malhada dos Bois',10,49940000),('Nossa Senhora de Lourdes',10,49890000),
                                                                ('Riachuelo',10,49130000);
                                                                
                                                                
                                                                

insert into bairros (bairro, local_id, cep_bairro) values  ('Candeias', 1,45028440), ('Primavera',2,0),('Primavera',3,0),('Amaralina',4,0),('Centro',5,0),('Iguape',6,45658310),
														  ('Centro',7,44700973), ('Itaigara',8,5210394),('Panorama',9, 48605055),('Gabriela',10,44030785),
                                                            
                                                          ( 'Centro',11,0), ('Antônio Zanaga I',12,13474640),('Residencial Tamboré Barueri',13,06458070),
                                                          ( 'Parque das Nações',14,17053060),('Centro',15,13015180),  ('Jardim América',16,12702130),('Centro',17,09910710),                                    
														  ('Centro',18,14120000),('Centro',19,15425970),('Centro',20,13165970),
                                                          
                                                         ('Parque Mambucaba (Mambucaba)',21,23954096),('Prainha',22,0),('Oficinas Velhas',23,27110250),('Centro',24,0),
                                                         ('Jardim Flamboyant',25,28905320),('Centro',26,28500970),('Vargem Grande',27,28650972),('Parque Vila Nova',28,	25011582),  
														 ('Morro Azul do Tinguá',29,26650971),('Itaúna',30,2899000),
                                                         
                                                          ('Guaxindiba',31,29194730), ('Niteroi Atílio Vivacqua',32,0),('Belvedere',33,0),
                                                          ('Belarmino Uliana',34,0), ('Vale Encantado',35,29113200), ('Nicolau Vargas Silva',36,0),('Soido',37,0),
														 ('Centro',38,0),('Centro',39,0),('Comunidade Urbana de Iguape Guarapari',40,29227410),
                                                         
                                                         ('Aveiro',41,0),('Centro',42,0),('Centro',43,0),('Industrial',44,0),('Tapera Bragança', 45,0),('Centro',46,0),
                                                         ('Centro',47, 68383970), ('Nova Xinguara',48,68557556),('Centro',49,68548971),('Aeroporto',50,0),
															
                                                            
														('Centro',51, 69445970) , ('Sao Sebastiao',52, 69750970), ('Marizal',53, 69630000), ('Distrito Industrial I',54, 69075029),
                                                        ('Cidade Nova',55, 69670970), ('Aleixo',56, 69060691) , ('Tancredo Neves',57, 69087651), ('Japiim',58, 0),('Centro',59, 69151010),
                                                         ('Santa Rita de Cássia',60,69153285),
                                                         
                                                         ('Centro',61,0),('Jd Tropical III',62,0),('Centro',63,0),('Centro',64,78678970),('St Sudoeste Confresa',65,0),
                                                         ('Cohab Garça Branca',66,0),('Cid Alta',67,0),('Jd Stª Cruz Juara', 68,0),('Centro',69,0),('Aeroporto',70,0),

														('Água Quente',71,39880972),('Novo Progresso',72,0),('Centro',73,0),('Batista Oliveira',74,0),('Barreira',75,0),
														('Zn Rural Fernandes',76,0),('Lga Romão Florestal',77,0),('Cohab Fronteira',78,0),('Sebastião M Ramos',79,0),('Ingas',80,0),


														('Alt Bela Vista',81,0),('Zn Rural',82,0),('Zn Rural',83,0),('Parque Grangeiro',84,63106100),('Zn Rural',85,0),
														('Zn Rural',86,0),('Zn Rural',87,0),('Zn Rural',88,0),('Zn Rural',89,0),('Zn Rural',90,0),

														('Getúlio Vargas',91,49055740),('Zn Rural',92,0),('Lotm Marivan',93,0),('Centro',94,0),('Aeroporto',95,0),
														('Ilha das Flores',96,0),('Farolândia',97,0),('Malhada dos Bois',98,0),('Centro',99,0),
														('Lamarão	Riachuelo',100,0);



insert into logradouros (logradouro,bairro_id,cep_logradouro) values ('Avenida Luiz Eduardo',1,0),('Rua brejoes',2,0),('Rua jequie',3,0), ('Travessa Agenor Magalhaes',4,0), 
																 ('Rua 15 de Novembro',5,0), ('Rua Andrelino Manoel de Santana',6,0),('Rua Santa Rosa de Lima, s/n',7,0),
                                                                 ('Rua Aníbal dos Anjos e Silva',8,0),('Avenida Antônio Carlos Magalhães',9,0),('Rua Anita Garibaldi',10,0),
                                                                 
                                                                ('Rua Marechal Deodoro',11,0),('Rua Anita Garibaldi,',12,0),('Avenida Andradina',13,0),('Rua Aniz Nasralla',14,0),                                                              
                                                                ('Praça Anita Garibaldi',15,0 ),('Rua Anita Paltriniere Rodrigues',16,0),('Rua Antônio Carlos Luz',17,0),
                                                                ('Rua Joaquim Pereira',18,0),('Rua São Domingos 66',19,0),('Rua Jair Roberto Mulla 156',20,0),
                                                                
                                                                ('Travessa Anjo Gabriel',21,0),('Avenida Alfredo Dante Fassini',22,0),('Rua Antenor Barbosa Rego',23,0), 
                                                                ('Rua Miguel de Carvalho',24,0),('Rua Arizio Gomes da Costa',25,0),('Praça Miguel de Carvalho 35',26,0),
                                                                ('Rodovia RJ-148, s/n Quilômetro 19',27,0),   ('Rua Antares',28,0), ('Estrada RJ-121 1817',29,0),
                                                                (' Rodovia Amaral Peixoto',30,0),
                                                                
                                                                ('Rua Anjo Gabriel',31,0), ('Rua Eliza Galvão Barbieri',32,0),('Rua Edson Gomes de Souza',33,0),
                                                                ('Rua Carmem Alzerina Souza Uliana',34,0),('Avenida Conceição da Barra',35,0), ('Rua Antônio Belizario',36,0),
                                                                ('Rua Salo Rodrigues Figueiredo',37,0), ('Praca Manoel Fernandes Ornelas 30',38,0), ('Rua Ana Aurora Rossoni',39,0),
                                                                ('Avenida Ângelo Maioli',40,0),
                                                                
                                                                ('Rua Humberto de Abreu Frazão',41,0),('Travessa Vinte e Oito de Outubro',42,0),
                                                                ('Avenida Antônio Soller Bannach',43,0),('Rua Rui Barbosa',44,0),('Vila Tracuateua',45,0),('Vila de Curupaiti, s/n', 46,0),
                                                                ('Avenida Manoel Félix de Farias 432',47,0),('Rua Bronze',48,0),('Avenida Flor da Mata 188',49,0),
                                                                 ('Travessa Anápolis',50,0),
                                                                 
                                                                 
																('Rua Alvaro Maia, s/n',51,0),('Avenida 31 de Março',52,0),('Travessa 1',53,0),('Travessa Beruri',54,0),('Avenida Francisco Pereira de Souza 626',55,0),
                                                                ('Beco Guarajá',56,0),('Rua Itapiranga',57,0),('Rua Anita Malfatti',58,0),('Avenida Armando Prado',59,0),('Rua Alfredo Lima',60,0),
                                                                
                                                                
                                                                ('Rua 1',61,0) ,('Rua 1',62,0),('Rua 1',63,0),('Rua Dois, s/n Quadra 44 Lote 8',64,0),																	
																('Rua 1',65,0),('Rua 1',66,0),('Rua 13',67,0),('Rua 2',68,0),('Rua 1',69,0),('Rua Topázio',70,0),
                                                                
                                                                ('Rua Carneirinho Antonio Soares 157',71,0),('Rua Juscelino Kubitschek',72,0),('Rua João Pinheiro',73,0),
                                                                ('Rua Marta Ribeiro Batista Oliveira',74,0),('Rua Amorino Marques do Amaral',75,0),
																('Córrego Marumbar',76,0),('Rua Campo Comprido',77,0),('Rua 1',78,0),('Rua B',79,0),('Rua 1',80,0),
                                                                 
                                                                ('Rua Presidente Castelo Branco',81,0),('Fazenda Alto Alegre',82,0),('Distrito Lagoa do Cedro',83,0),
																('Rua Antônio Teodorico Barbosa',84,0),('Sítio Águas das Velhas',85,0),('Vila Antônio dos Posseiros-Sto',86,0),
																('Distrito Espinho dos Lopes',87,0),('Fazenda Adrianopoles',88,0),('Acesso Acampamento do Dnocs',89,0),
																('Distrito Algodoes',90,0),
                                                                
                                                                ('Rua Amintas de Souza Bonfim',91,0),('Rodovia BR-235',92,0),('Rua 1',93,0),('Rua Américo S da Rocha',94,0),('Rua D',95,0),
																('Rua Vasco Gama',96,0),('Rua 1',97,0),('Rua 5 Pedras',98,0),('Rua Vinte Um Abril',99,0),('Rua H',100,0);
                                                              
                                                                
                                                                
														
 alter table localidades add column sigla_uf varchar (2) not null; 
update localidades l inner join ufs u on l.uf_id = u.id set l.sigla_uf = u.sigla;


select logradouros.logradouro, bairros.bairro, localidades.localidade, localidades.sigla_uf, localidades.cep_cidade, bairros.cep_bairro, logradouros.cep_logradouro from 
logradouros inner join bairros inner join localidades where logradouros.bairro_id = bairros.id and bairros.local_id = localidades.id and bairros.bairro like'%Centro%';
