

create proc Insert_Position_Details(@PositionCode char(4),
									@Description varchar(35),
									@BudgetStrength int,
									@year smallInt,
									@CurrentStrength int)
									as
									Begin
									Insert Position(cPositionCode,vDescription,iBudgetedStrength,siYear,iCurrentStrength)
									values(@PositionCode,@Description,@BudgetStrength,@year,@CurrentStrength)
									end

									sp_help position

									select * from Position
									drop proc Insert_Position_Details

									Exec Insert_Position_Details '0098','Example',25,'2024',29

									drop trigger trg_InsertIntoPositionBackup2
