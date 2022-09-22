CREATE TABLE [dbo].[Pessoa] (
    [Id]              INT           NOT NULL,
    [nome]            NVARCHAR (50) NULL,
    [cidade]          NCHAR (10)    NULL,
	[email]          NCHAR (20)    NULL,
    [cep]             NCHAR (10)    NULL,
    [endereco]        NCHAR (20)    NULL,
    [pais]            NCHAR (10)    NULL,
    [usuario]         NTEXT         NULL,
    [telefone]        NCHAR (10)    NULL,
    [data_nascimento] DATE          NULL,
    [cargo_id]        INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

