/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 1, N'Dados Básicos', NULL
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 1)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 2, N'Dados Societários', NULL
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 2)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 3, N'Cadastros Adicionais', NULL
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 3)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 4, N'Informações Financeiras', NULL
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 4)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 5, N'Firmas e Poderes', NULL
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 5)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 6, N'Socioambiental', NULL
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 6)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 7, N'Qualidade e Operação', NULL
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 7)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 8, N'Recomendações de Negócio', NULL
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 8)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 9, N'Informações Adicionais', NULL
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 9)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 101, N'Dados Gerais', 1
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 101)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 102, N'Outros Enderecos', 1
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 102)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 103, N'Contatos', 1
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 103)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 201, N'Composição Acionária', 2
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 201)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 202, N'Beneficiário Final', 2
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 202)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 203, N'Documentos Societários', 2
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 203)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 301, N'PEP', 3
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 301)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 302, N'FATCA', 3
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 302)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 303, N'SCR', 3
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 303)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 401, N'Relatórios Financeiros', 4
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 401)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 402, N'Certidões e Declarações', 4
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 402)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 403, N'Contas Bancárias', 4
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 403)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 404, N'Faturamento Mensal', 4
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 404)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 501, N'Documentos de Poderes', 5
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 501)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 502, N'Representantes Legais/ Procuradores', 5
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 502)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 601, N'Documentos Socioambientais', 6
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 601)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 701, N'Documentos Qualidade e Operação', 7
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 701)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 801, N'Contatos', 8
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 801)

INSERT INTO [dbo].[GrupoInformacao] (idGrupoInformacao, NomeGrupoInformacao, idGrupoInformacaoPai)
SELECT 901, N'Documentos Adicionais', 9
WHERE not exists (select 1 from [dbo].[GrupoInformacao] where idGrupoInformacao = 901)



