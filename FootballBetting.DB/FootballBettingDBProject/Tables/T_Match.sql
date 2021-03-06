﻿CREATE TABLE [dbo].[T_Match]
(
	[MatchID] INT IDENTITY NOT NULL,
	[Group] INT NOT NULL,
	[MatchDate] DATETIME NULL,
	[HomeTeam] NVARCHAR(100) NOT NULL,
	[AwayTeam] NVARCHAR(100) NOT NULL,
	[ManOfTheMatch] INT NULL


	CONSTRAINT [PK_T_Match_MatchID] PRIMARY KEY CLUSTERED ([MatchID] ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	CONSTRAINT [FK_T_Match_Group] FOREIGN KEY ([Group]) REFERENCES [dbo].[T_Group]([GroupID])

)
