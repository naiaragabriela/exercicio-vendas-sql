CREATE database ExercicioPedido;


create table Cliente 
(

    codigoCliente int NOT NULL,
    nomeCliente varchar(100) NOT NULL,

    CONSTRAINT PK_CodigoCliente PRIMARY KEY (codigoCliente), 
)

create table Pedido
(
    numeroPedido int NOT NULL,
    dataPedido DATETIME NOT NULL,
    codigoCliente int NOT NULL,

    CONSTRAINT PK_Pedido PRIMARY KEY (numeroPedido),
    CONSTRAINT FK_Pedido FOREIGN KEY (codigoCliente) references Cliente (codigoCliente),
);

create table Telefone 
(
    numeroPedido int NOT NULL,
    numeroTelefone varchar(15) NOT NUll,

    CONSTRAINT PK_Telefone PRIMARY KEY (numeroTelefone, numeroPedido),
    CONSTRAINT FK_Telefone FOREIGN KEY (numeroPedido) references Pedido (numeroPedido),
)

create table Peca 
(
    codigoPeca int NOT NULL,
    descricaoPeca varchar (200) NOT NULL,

    CONSTRAINT PK_Peca PRIMARY KEY (codigoPeca),
)

create table Item 
(
    numeroPedido int NOT NULL,
    codigoPeca int NOT NULL,
    quantidadePeca int NOT NULL,

    CONSTRAINT PK_Item Primary KEY (numeroPedido, codigoPeca),
    CONSTRAINT FK_ItemPedido FOREIGN KEY (numeroPedido) references Pedido (numeroPedido),
    CONSTRAINT FK_ItemPeca FOREIGN KEY (codigoPeca) references Peca (codigoPeca),
);
