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
-- TipoPendencia - INCLUSÃO DOS VALORES INICIAIS
INSERT INTO [dbo].[TipoPendencia] (IdTipoPendencia, Nome)
SELECT 1, N'Manual'
WHERE not exists (select 1 from [dbo].[TipoPendencia] where IdTipoPendencia = 1)

INSERT INTO [dbo].[TipoPendencia] (IdTipoPendencia, Nome)
SELECT 2, N'Sistema'
WHERE not exists (select 1 from [dbo].[TipoPendencia] where IdTipoPendencia = 2)
--
