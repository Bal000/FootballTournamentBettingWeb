﻿CREATE TABLE [dbo].[T_CompetitonType]
(
	[CompetitionTypeID] INT NOT NULL,
	[CompetitionType] NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(100) NOT NULL

	CONSTRAINT [PK_T_T_CompetitonType_CompetitionTypeID] PRIMARY KEY CLUSTERED ([CompetitionTypeID] ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)