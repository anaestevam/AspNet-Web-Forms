CREATE TABLE [dbo].[Pessoa_salario] (
    [pessoa_id] INT        NOT NULL,
    [nome]      NCHAR (40) NOT NULL,
    [salario]   FLOAT (53) NOT NULL,
    PRIMARY KEY CLUSTERED ([pessoa_id] ASC)
);

