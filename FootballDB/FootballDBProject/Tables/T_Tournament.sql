CREATE TABLE [dbo].[T_Tournament]
(
	[TournamentID] INT IDENTITY NOT NULL,
	[TournamentType] INT NOT NULL,
	[Name] VARCHAR(50) NULL,
	[StartDate] DATE NULL,
	[EndDate] DATE NULL,

	CONSTRAINT [PK_T_Tournament_TournamentID] PRIMARY KEY CLUSTERED ([TournamentID] ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	CONSTRAINT [FK_T_Tournament_TournamentType] FOREIGN KEY ([TournamentType]) REFERENCES [dbo].[T_TournamentType] ([TournamentTypeID])
)
