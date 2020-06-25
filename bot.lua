local discordia = require('discordia')
local client = discordia.Client()
local prefix = "/"
local token = "Njk5NDg0MjA5NDY2ODM0OTQ0.Xu1NGg.XbWSXUPTKFGVmOEMBgGUibBdWXU"
local quote = "> "
local colourembed = 27, 7, 6
local owneravatar = "https://cdn.discordapp.com/avatars/343102736083976203/a_04c00bb23d8fb78e80d9dc42ab496d20.gif"
local version = "v1.3 inDev"
local line = 0


client:on('messageCreate', function(message) 
	-- Variables
	local content = message.content
	local author = message.author
	local username = author.username
	local line = line + 1 

--[[NORMAL COMMANDS]]
	-- Help command, Shows a list of commands from a table above.
	if content:lower() == prefix..'help' then
	
		print("\27[95m====================================================")
		print("\27[96m"..author.tag.." triggered the help command")
		
		
		message:delete()
		message:reply{
				embed = {
					title = "Help!",
					color = colourembed,
					thumbnail = {
						url = client.user.avatarURL,
					},
					fields = {
						{
							name = "**/help:**",
							value = "Shows this menu!",
						},
						{
							name = "**/Cat:**",
							value = "Kitties! - Sends a picture of a cute cat",
						},
						{
							name = "**/Dog:**",
							value = "Doggos! - Sends a picture of a cute dog",
						},
						{
							name = "**/kill:**",
							value = "Returns cause of death - \n You can ping other users to kill them too!",
						},
						{
							name = "**/Gay:**",
							value = "Tells you how gay you or another user is!",
						},
						{
							name = "**/Roll:**",
							value = "Roll the dice!",
						},
						{
							name = "**/Profile:**",
							value = "Unfinished!",
						},
						{
							name = "**/randomhex**",
							value = "Gives a random hex code, WIP",
						},
						{
							name = "**/Changelog:**",
							value = "Shows recent bot updates!",
						},
						{
							name = "**/emotes:**",
							value = "Shows the different emote commands!",
						},
						{
							name = "**/support:**",
							value = "Unofficial official support server, or something like that",
						},
					},
					footer = {
					text = "Unity "..version.." - Made by I'mKevin#6252",
					icon_url = owneravatar,
				},
				

				}
			}
			print("\27[96mCommand: \"help\" successfully triggered for "..author.tag)
				print("\27[95m====================================================")
				
				
	end

	-- Dice roll command, Will return a random number from 1-6, as if rolling a dice.
	if content:lower() == prefix..'roll' then
	
		print("\27[95m====================================================")
		print("\27[96m"..author.tag.." triggered the dice_roll command")
		
		
		message:delete()
		local value = math.random(1,6)
		message:reply{
			embed = {
				color = colourembed,
				title = "Roll the dice!",
				description = "You rolled a "..value.."!",
				footer = {
					text = "Unity "..version.." - Made by I'mKevin#6252",
					icon_url = owneravatar,
				},
			}
		}
		print("\27[92m"..author.tag.." rolled a "..value)
		print("\27[96mCommand: \"dice_roll\" successfully triggered for "..author.tag)
			print("\27[95m====================================================")
			
	end
	
	-- Profile command, Unfinished but will show info on the user.
	if content:lower() == prefix..'profile' then
	
		print("\27[95m====================================================")
		print("\27[96m"..author.tag.." triggered the profile command")
		
		

		message:delete()
		message:reply{
			embed = {
				color = colourembed,
				title = author.tag.."\'s Profile",
				description = "This section isn't finished yet - \n New features coming soon! \n\n ** **",
				fields = {
				{
					name = "**Avatar link:**",
					value = author.avatarURL,
					url = author.avatarURL,
				}
			},
				--url = link,
				--[[author = {
					name = author.username,
					icon_url = author.avatarURL
				},]]
				thumbnail = {
					url = author.avatarURL,
				},

				footer = {
					text = "Unity "..version.." - Made by I'mKevin#6252",
					icon_url = owneravatar,
				},
			}

		}
		print("\27[96mCommand: \"profile\" successfully triggered for "..author.tag)
			print("\27[95m====================================================")
			
	end

	-- Cat command, Sends a random picture of a cute cat, in the chat.
	if content:lower() == prefix..'cat' then
	
		print("\27[95m====================================================")
		print("\27[96m"..author.tag.." triggered the cat command")
		
		
		message:delete()
		-- List of links to use for random cat images.
			local catslist = {
			'https://i.pinimg.com/736x/de/e0/aa/dee0aacb86c2f168c6b3a8a008cd006f.jpg',
			'https://i.ytimg.com/vi/gUIJ-UkQsXI/maxresdefault.jpg',
		'https://meowlogy.com/wp-content/uploads/2019/06/Kittens-cutest-7-685x460.jpg',
		'https://media.tenor.com/images/bcf4d183aefc4cb5a559dafc0c3c7435/tenor.gif',
		'https://i.pinimg.com/736x/f0/1e/e0/f01ee02f387647e8f2e8218284f6c6c6.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/American-shorthair-cat.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/shutterstock_1031164915.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/Birman-kitten.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/British-Blue-Silver-Kitten.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/colored-british-shorthair-760x506.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/cat-760x506.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/Exotic-Shorthair-760x506.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/Maine-Coon-kitten-760x506.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/4651445a-1-760x506.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/Persian-kitten-760x506.jpg',
		'https://www.rd.com/wp-content/uploads/2019/05/Ragdoll-cat-760x506.jpg',
		'https://media1.tenor.com/images/a862d2cb92bfbe6213e298871b1e8a9a/tenor.gif',
		'https://i.pinimg.com/originals/8f/46/c5/8f46c58eb5ef0f59bced2f795d5dfde2.gif',
		'https://66.media.tumblr.com/bd46d4220d92ed4e5af427fa2740486c/tumblr_pw1twrqMet1s9a9yjo1_400.gif',
		'https://i.chzbgr.com/original/8578092800/hB808C1C0/hello-beautiful',
		'https://66.media.tumblr.com/9408b73d447199c766eb139d0400b2ea/tumblr_mocrsrr81a1sqzb2wo1_400.gifv',
		'https://media.giphy.com/media/13McATXm3umOL6/200.gif',
		'https://66.media.tumblr.com/d8d174c6a811c559d99e914cd56f06ab/tumblr_pohbccSJHm1u7gnm9o1_400.gifv',
		'https://media.discordapp.net/attachments/662367260223995915/724357111760420889/cute-cat-videos-lede.png?width=1001&height=679',
		'https://cdn.discordapp.com/attachments/662367260223995915/724357368787501096/Confirm-sign-that-your-cute-cat-believe-you-800x445.png',
		'https://www.rd.com/wp-content/uploads/2018/06/11_%E2%80%9CCan-I-haz-it-%E2%80%9D.jpg',
		'https://i.kym-cdn.com/photos/images/newsfeed/000/805/621/cd9.gif',
		'https://icatcare.org/app/uploads/2018/06/Layer-1704-1920x840.jpg',
		'https://i.insider.com/5b8407d03cccd122058b4580?width=1100&format=jpeg&auto=webp',	
	
	
		}
	

		local cat = catslist[math.random(1, #catslist)]

		message:reply{
			embed = {
				color = colourembed,
				title = "Kitty ^-^ - Requested by "..author.tag,
				image = {
					url = cat,
					height = 512,
					width = 512,
				},
				footer = {
					text = "Unity "..version.." - Made by I'mKevin#6252",
					icon_url = owneravatar,
				},
			}
		}
		print("\27[96mCommand: \"cat\" successfully triggered for "..author.tag)
			print("\27[95m====================================================")
			
	end

	-- Sends a random picture of a cute dog, in the chat.
	if content:lower() == prefix..'dog' then
	
		print("\27[95m====================================================")
		print("\27[96m"..author.tag.." triggered the dog command")
		
		
		message:delete()
		-- List of links to use for random dog images.
		local dogslist = {
			'https://cdn.discordapp.com/attachments/711179077855346720/724998467621224468/dog_6.jpg',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998477980893284/dog_9.jpg',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998508825804841/dog_ten.png',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998511208431616/dog_twelve.jpg',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998514500829194/DOG1.jpg',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998516715421726/dog5.jpg',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998518111993957/dog2.png',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998518212788284/dog6.jpg',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998518514647120/dog3.png',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998520297357312/dog7.jpg',
			'https://cdn.discordapp.com/attachments/711179077855346720/724998522105102426/dog8.jpg',
		}

		local dog = dogslist[math.random(1, #dogslist)]
		message:reply{
			embed = {
				color = colourembed,
				title = "Pupper ^-^ - Requested by "..author.tag,
				image = {
					url = dog,
					height = 512,
					width = 512,
				},
				footer = {
					text = "Unity "..version.." - Made by I'mKevin#6252",
					icon_url = owneravatar,
				},
			}
		}
		print("\27[96mCommand: \"dog\" successfully triggered for "..author.tag)
			print("\27[95m====================================================")
			
	end

	if content:lower():sub(1,#"/avatar") == "/avatar" then
		print("\27[95m====================================================")
		print("\27[96m"..author.tag.." triggered the avatar command")
		
		
		message:delete()
		local mentioned = message.mentionedUsers
		local member = message.member
		local memberid = message.member.id


		if #mentioned == 1 then
			p(mentioned[1])
			local link = 
			message:reply(mentioned[1][1])
		elseif #mentioned == 0 then
			p(memberid)
		end

		message:reply{
			embed = {
				color = colourembed,
				title = author.username.."'s avatar!",
				image = {
					url = author.avatarURL,
					height = 1024,
					width = 1024,
				} ,

				footer = {
					text = "Unity "..version.." - Made by I'mKevin#6252",
					icon_url = owneravatar,
				},
			}
		}
		print("\27[96mCommand: \"avatar\" successfully triggered for "..author.tag)
			print("\27[95m====================================================")
			print("\27[95m"..line)
	end

	if content:lower():sub(1,#"/kill") == "/kill" then
		print("\27[95m====================================================")
		print("\27[96m"..author.tag.." triggered the kill command")
		
		
		message:delete()

		-- List of ways to die

			local diereason = {
			' died of hypothermia',
			' forgot to breathe',
			' had to talk to Isaac for an hour',
			' "just fell over and died"',
			' got yeeted',
			' fell off a bridge',
			' was beaten by a crowd of angry karens',
			' didn\'t social distance',
			' is aliven\'t',
			' shit their guts out',
			' cancelled their subscription to life',
			'\'s free trial for oxygen ran out',
			' died',
			' got hit by a truck',
			' drowned',
			' was promoted to a **lvl 1** corpse',
			' got free tickets to a 6ft under concert',
			' decided to live in a hole',
			' voted for brexit',
			' fell down the stairs',
			' died of extreme obesity',
			' was killed by the architects',
			' got slam dunked',
			' fell down a hole',
			' got impaled by a toothbrush',
			' got flushed away',
			' had a sex change',
			' doesn\'t stan K-POP',
			}

			local death = diereason[math.random(1, #diereason)]

		local mentioned = message.mentionedUsers
		local authorid = author.id
		if #mentioned == 1 then
			message:reply{
				embed = {
					color = colourembed,
					description = "<@"..mentioned[1][1].."> "..death.." :skull_crossbones:",
					footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
						icon_url = owneravatar,
					},
				}
			}
		elseif #mentioned == 0 then
			message:reply{
				embed = {
					color = colourembed,
					description = "<@"..authorid.."> "..death.." :skull_crossbones:",
					footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
						icon_url = owneravatar,
					},
				}
			}
		end
		print("\27[96mCommand: \"kill\" successfully triggered for "..author.tag)
			print("\27[95m====================================================")
			
	end

	-- Gay command, Returns a random percentage from 0-100% and tells the user they're gay.

	if content:lower():sub(1,#"/gay") == "/gay" then
		print("\27[95m====================================================")
		print("\27[96m"..author.tag.." triggered the gay command")
		
		
		message:delete()
		local gayness = math.random(0,100)
		local mentioned = message.mentionedUsers
		local authorid = author.id

		if gayness >= 85 then
				if #mentioned == 1 then
				message:reply{
					embed = {
						color = colourembed,
						description = "<@"..mentioned[1][1].."> is so gay that we can't fit the number in this message! :rainbow_flag:",
						footer = {
							text = "Unity "..version.." - Made by I'mKevin#6252",
						},
					}
				}
			elseif #mentioned == 0 then
				message:reply{
					embed = {
						color = colourembed,
						description = "<@"..authorid.."> is so gay that we can't fit the number in this message! :rainbow_flag:",
						footer = {
							text = "Unity "..version.." - Made by I'mKevin#6252",
						},
					}
				}
			end

		elseif gayness < 80 then
				if #mentioned == 0 then
				message:reply{
					embed = {
						color = colourembed,
						description = "<@"..authorid.."> is "..gayness.."% gay :rainbow_flag:",
						footer = {
							text = "Unity "..version.." - Made by I'mKevin#6252",
						},
					}
				}
				elseif #mentioned == 1 then
					message:reply{
						embed = {
							color = colourembed,
							description = "<@"..mentioned[1][1].."> is "..gayness.."% gay :rainbow_flag:",
							footer = {
								text = "Unity "..version.." - Made by I'mKevin#6252",
							},
						}
					} 
				end
		

			print("\27[92m"..author.tag.." is "..gayness.."% gay")
		end
		print("\27[96mCommand: \"gay\" successfully triggered for "..author.tag)
			print("\27[95m====================================================")
			
	end

	if content:lower() == prefix.."changelog" then
		print("\27[95m====================================================")
		print("\27[96m"..author.tag.." triggered the changelog command")
		
		 

		message:delete()
		message:reply{
			embed = {
				title = "What\'s New? - "..version,
				fields = {
					{
						name = "**Changelog:**",
						value = "- Added /emotes command \n\n - Added multiple emote commands for interacting with other users \n\n - Added more images to the /cat and /dog commands"
					},
					--[[{
						name = "**Planned features:**",
						value = "- Emote commands for annoying your friends!"
					}]]
				},
				thumbnail = {
					url = client.user.avatarURL,
				},
				footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
						icon_url = owneravatar,
				},
				color = colourembed,

			}
		}
		print("\27[96mCommand: \"changelog\" successfully triggered for "..author.tag)
			print("\27[95m====================================================")
			
			
	end
	if content:lower() == prefix.."randomhex" then
		local value = math.random(0,999999),
		message:delete()
		message:reply{
			embed = {
				title = "This is a really bad random hex generator, will be improved soon",
				description = "#"..value,
			footer = {
				text = "Unity "..version.." - Made by I'mKevin#6252",
				icon_url = owneravatar,
			},
			color = colourembed,
		}
	}
	end

	if content:lower() == prefix.."support" then 
		message:delete()
			message:reply{
				embed = {
					thumbnail = {
						url = client.user.avatarURL,
					},
					footer = {
							text = "Unity "..version.." - Made by I'mKevin#6252",
							icon_url = owneravatar,
					},
					color = colourembed,
					title = "**Join my server!**",
					description = "Do it, you know you want to ;)",
					url = "https://discord.gg/3QFU8Mx", 
				}
			}
		end

--[[EMOTE COMMANDS BELOW]]
	if content:lower() == "/emotes" then
		message:delete()
		message:reply{
			embed = {
				title = "Emotes:",
				fields = {
					{
						name = "**/hug:**",
						value = "hug another user",
					},
					{
						name = "**/slap:**",
						value = "slap the shit out of someone",
					},
					{
						name = "**/punch:**",
						value = "punch someone for being a twat",
					},
					{
						name = "**/cry:**",
						value = "big sad",
					}
				},
				footer = {
					text = "Unity "..version.." - Made by I'mKevin#6252",
					icon_url = owneravatar,
				},
				thumbnail = {
					url = client.user.avatarURL,
				},
			}
		}
	end
	if content:lower():sub(1,#"/hug") == "/hug" then

		local huglinks = {
			'https://media.tenor.com/images/46242b4474d209325622e693b87f61ec/tenor.gif',
			'https://media.tenor.com/images/12ce5c56f8cf49aa0ad21df72eb0eeb1/tenor.gif',
			'https://media.tenor.com/images/598541e281510f2aa3b4b626f5cfc3f2/tenor.gif',
			'https://media.tenor.com/images/fa4b1a5fc7b85618bed176b256fc23be/tenor.gif',
			'https://media.tenor.com/images/443e7ae59588bbfb46ba8114c442ed0b/tenor.gif',
			'https://media.tenor.com/images/778282e02d511fbc061e1439a5105c6f/tenor.gif',
			'https://media.tenor.com/images/949b124d5b8cd0955d637dfb45352c7c/tenor.gif',
		}

		local hug = huglinks[math.random(1, #huglinks)]
		
		message:delete()
		local gayness = math.random(0,100)
		local mentioned = message.mentionedUsers
		local authorid = author.id

		if #mentioned == 1 then	
			message:reply{
				embed = {
					color = colourembed,
					description = "<@"..mentioned[1][1].."> was hugged by <@"..authorid..">!",
					image = {
						url = hug,
					},
					footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
					},
				}
			}
		else
			message:reply{
				embed = {
					description = "<@"..authorid.."> is really lonely :(",
					footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
					},
				}
			}
		end
	end
	if content:lower():sub(1,#"/slap") == "/slap" then

		local slaplinks = {
			'https://media1.giphy.com/media/Gf3AUz3eBNbTW/giphy.gif',
			'https://media.tenor.com/images/49b0ce2032f6134c31e1313cb078fe5a/tenor.gif',
			'https://i.pinimg.com/originals/4a/fb/2c/4afb2c9b1d06035d64db1a93ae78a16f.gif',
			'https://i.pinimg.com/originals/68/d3/cd/68d3cd90baa448b24aebd79f40efad6c.gif',
			'https://media.discordapp.net/attachments/707455293507764324/719946768116088873/IncompatibleIncompatibleAmericanavocet-size_restricted.gif',
			'https://media1.tenor.com/images/39217af96b95eb7d4e2df39b53b6597f/tenor.gif',
		}

		local slap = slaplinks[math.random(1, #slaplinks)]
		
		message:delete()
		local gayness = math.random(0,100)
		local mentioned = message.mentionedUsers
		local authorid = author.id

		if #mentioned == 1 then	
			message:reply{
				embed = {
					color = colourembed,
					description = "<@"..mentioned[1][1].."> was slapped by <@"..authorid..">!",
					image = {
						url = slap,
					},
					footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
					},
				}
			}
		else
			message:reply{
				embed = {
					description = "<@"..authorid.."> keeps hitting themself!",
					footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
					},
				}
			}
		end
	end
	if content:lower():sub(1,#"/punch") == "/punch" then

		local punchlinks = {
			'https://media1.tenor.com/images/d2257d7a3803a4aabcdddf3878149d01/tenor.gif',
			'https://media.tenor.com/images/4c327366e1adb964dfe30ae91c730840/tenor.gif',
			'https://media1.tenor.com/images/f03329d8877abfde62b1e056953724f3/tenor.gif?itemid=13785833',
			'https://media.tenor.com/images/63ffd4f118419334c1a3a87b214e434d/tenor.gif',


		}

		local punch = punchlinks[math.random(1, #punchlinks)]
		
		message:delete()
		local gayness = math.random(0,100)
		local mentioned = message.mentionedUsers
		local authorid = author.id

		if #mentioned == 1 then	
			message:reply{
				embed = {
					color = colourembed,
					description = "<@"..mentioned[1][1].."> was punched by <@"..authorid..">!",
					image = {
						url = punch,
					},
					footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
					},
				}
			}
		else
			message:reply{
				embed = {
					description = "<@"..authorid.."> tried to punch a ghost!",
					footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
					},
				}
			}
		end
	end
	if content:lower() == prefix.."cry" then
		local crylinks = {
			'https://media.tenor.com/images/7ed06f70f88d261c468e2e7ade1eee54/tenor.gif',
			'https://media.discordapp.net/attachments/697285241785548821/714339503476572201/tenor-1.gif',
			'https://media.tenor.com/images/5612ce9b777d526b72ac4c7cf4e57ad8/tenor.gif',
			'https://media1.tenor.com/images/bab39de2e95b92fe1245835c34fbdd9f/tenor.gif',
			'https://media.tenor.com/images/f65460bc8bfc52f030e4745ba1034280/tenor.gif',
			'https://media.tenor.com/images/2dd2296d45906283fa94374e87329d8c/tenor.gif',

		}

		local cry = crylinks[math.random(1, #crylinks)]
		message:delete()
		
		message:reply{
			embed = {
				title = author.username.." is sad :(",
				image = {
					url = cry
				}
			}
		}
	end




	--[[AAAAAAAAAAAAAAAAAA]]

		if content:lower() == "how do i spawn a car" then
			local server = message.guild.id
			if server == "522437632832045066" then
			message:reply{
				embed = {
					title = "Help",
					description = "Please use '/help' ingame! <@"..author.id..">",
					footer = {
						text = "Unity "..version.." - Made by I'mKevin#6252",
					},
				}
			}
			end
		end



end)


--[[BOT STARTUP TASKS]]
client:on("ready", function() -- bot is ready
	local botstatus = "/help - for help :)"
	print("\27[95m")
	print("====================================================")

	print("\27[97m Bot started on version:\27[96m "..version)

	print("\27[97m Bot logged in as:\27[96m " .. client.user.tag)
	client:setGame(botstatus)

	print("\27[97m Set playing status to:\27[96m Playing "..botstatus)

	print("\27[97m Bot created by:\27[96m I'mKevin#6252")

	print("\27[95m====================================================")
	print("\27[97m")
end)
client:run("Bot "..token)
