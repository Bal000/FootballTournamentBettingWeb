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

print 'Running post-deployment script...'


MERGE INTO [dbo].[T_TournamentType] AS Target 
USING (VALUES 
(1, N'Premier Leauge', N'English Premier Leauge'),
(2, N'La liga', N'Spanish La Liga'),
(3, N'Serie A', N'Italian Seria A'),
(4, N'Bundesliga', N'German Bundesliga'),
(5, N'Premier League', N'Russian Premier League'),
(6, N'Primeira Liga', N'Portugese Primeira Liga'),
(7, N'Süper Lig', N'Turkish Süper Lig'),
(8, N'Bundesliga', N'German Bundesliga'),
(9, N'World Cup', N'International World Cup'),
(10, N'Euro Cup', N'International Euros'), 
(11, N'Europa Leauge', N'Europa Leauge'),
(12, N'Champions Leauge', N'Champions Leauge'),
(13, N'MLS', N'USA Major League Soccer'),
(14, N'Série A', N'Brazilian Série A'),
(15, N'Ligue 1', N'French Ligue 1'),
(16, N'Eredivisie', N'Dutch Eredivisie'),
(17, N'Primera Division', N'Argentine Leauge Primera Division')
) 
AS Source ([TournamentTypeID], [TournamentType], [Description]) 
ON Target.[TournamentTypeID]= Source.[TournamentTypeID] 
--update matched rows 
WHEN MATCHED THEN 
UPDATE 
SET [TournamentTypeID] = Source.[TournamentTypeID],
	[TournamentType] = Source.[TournamentType],
	[Description] = Source.[Description]
--insert new rows 
WHEN NOT MATCHED BY TARGET THEN 
INSERT ([TournamentTypeID], [TournamentType],[Description]) 
VALUES ([TournamentTypeID], [TournamentType],[Description]) 
--delete rows that are in the target but not the source 
WHEN NOT MATCHED BY SOURCE THEN 
DELETE;

print 'Finnished running post-deployment script...'
