-- This script needs to be loaded before other scripts that use it.

local PlayerDefaults = {
	__index = {
		initialize = function(self)
			self.ActiveModifiers = {
				JudgmentGraphic = "Love",
				Mini = "Normal",
				ScreenFilter = "Off",
				SpeedModType = "x",
				SpeedMod = 1.00
			}
			self.HighScores = {
				EnteringName = false, 
				Name = nil
			}
			self.Stages = {
				Played = {},
			}
		end
	}
}

local GlobalDefaults = {
	__index = {
		initialize = function(self)
			self.ActiveModifiers = {
				MusicRate = 1.00,
			}
			self.Stages = {
				Remaining = PREFSMAN:GetPreference("SongsPerPlay")
			}
			self.ScreenAfter = {
				PlayerOptions,
				PlayerOptions2
			}
		end
	}
}


-- "SL" is a general-purpose table that can be accessed from anywhere
-- within the theme and stores info that needs to be passed between screens
SL = {
	P1 = setmetatable( {}, PlayerDefaults),
	P2 = setmetatable( {}, PlayerDefaults),
	Global = setmetatable( {}, GlobalDefaults)
}

function InitializeSimplyLove()
	SL.P1:initialize()
	SL.P2:initialize()
	SL.Global:initialize()
end

InitializeSimplyLove()