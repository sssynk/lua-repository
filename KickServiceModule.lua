--[[

KickService
By: ItzHiimnew

KickService by ItzHiimnew is licensed under CC BY-SA 4.0 
https://creativecommons.org/licenses/by-sa/4.0/?ref=chooser-v1

]]--

local kickService = {}

function kickService:Kick(Player, Title, Description, Footer)
	assert(typeof(Title) == "string", "KickService: Expected a string, but received a "..typeof(Title).."!")
	assert(typeof(Description) == "string", "KickService: Expected a string, but received a "..typeof(Description).."!")
	assert(typeof(Footer) == "string", "KickService: Expected a string, but received a "..typeof(Footer).."!")
	
	Title = Title or "Kicked!"
	Description = Description or "You have been kicked."
	Footer = Footer or ""
	
	Player:Kick("\n\n"..Title.."\n\n"..Description.."\n\n"..Footer.."\n")
end

return kickService
