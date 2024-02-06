--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--

entered = false 

castSpellLib = false 

  

function story(aName) 

    if aName == "start" then 

        playMusic("background.wav") 

        setBackground("huis.JPG") 

        createTextfield("You are lost in the dark and have no idea how you got here.                          What will you do?") 

        createButton("entrance", "Enter") 
        createButton("woods", "I'll just sleep in the forest.") 

    elseif aName == "entrance" then 

        if not entered then 

            playSound("door.wav") 

            entered = true 
        end

        CLS()  

        setBackground("kamer.JPG") 

        createTextfield("You've entered the empty room ; it seems abandoned.") 

        createButton("left room", "Go to the room on your left") 

        createButton("right room", "Go to the room on your right") 

        createButton("corridor", "keep walking") 

     elseif aName == "woods" then  

            --("storm.wav") 
            CLS()

            setBackground("afstant.jpg") 

            createTextfield("You see something or rather someone in the distance.") 

            createButton("exit", "Leave") 

            createButton("look", "Get closer") 

      elseif aName == "look" then
            CLS()
          setBackground("heks in het bos.jpg")
          createTextfield("helloooooo what are you doing here?")
          createButton("truth", "im lost ")
          createButton("lie","just taking a stroll get out of here old hag")

     elseif aName == "lie" then 
      CLS()
      playSound("doodgaan.wav")
      setBackground("death.jpg")


    elseif aName == "left room" then 
    --setBackground("")

        playSound("footstep.wav") 

        CLS() 

        setBackground("library.JPG") 

        createTextfield("You stumble upon an ancient library, but there's nothing here what will you do?") 

        createButton("entrance", "Go back to the hall.") 

        if not hasSpell then 

            createButton("searchBooks", "Take a closer look at the books") 

        end 

    elseif aName == "searchBooks" then 

        CLS() 

        playSound("secret door.wav") 

        createTextfield("you found a secret entrence will you enter") 
        createButton("dungeon","you go discover whats down there")
        createButton("entrance", "You go back to the corridor") 

      elseif aName == "dungeon" then
        setBackground("stairs.jpg")


    elseif aName == "right room" then 

        CLS() 
        playsound("")


        playSound("footstep.wav") 

        setBackground("rightHallway.jpg") 

        if castSpellLib then 

            createTextfield("The old living room has a green flare to it") 

        else 

            createTextfield("You enter an old living room. Even though the place looked entirely abandoned, the fire is somehow lit.") 

        end 

        createButton("entrance", "You warm up at the fire and leave the room") 

        if hasSpell and not castSpellLib then 

            createButton("rightHallwaySpell", "Recite the words of incantation learned from the library") 

        end 

    elseif aName == "rightHallwaySpell" then 

        CLS() 

        createTextfield("The fire turns eerily green") 

        castSpellLib = true 

        createButton("entrance", "The fire is warmer now, you heat up and go back to the main hall") 

    elseif aName == "corridor" then 

        CLS() 

        playSound("footstep.wav") 

        if hasSpell and castSpellLib then 

            setBackground("CryptLord.jpg") 

            createTextfield("Thank you for burning my flame, you can join me now in my army of DARKNESSSS") 

            createButton("exit", "You praise the Dark Lord for his gift and together you shall scour the night in search of prey") 

        else 

            setBackground("succubus.jpg") 

            createTextfield("You have been deemed worthy you will                                                         be here with me forever")  

            createButton("next", "You faint as the succuby slowly moves towards you.. with your last second of consciousness you see her walking towards you and she picks you up") 

        end 

    elseif aName == "next" then 

        CLS() 

        playSound("mee nemen.wav") 

        setBackground("donker.jpg") 

        createTextfield("I will keep you here till you're dry") 

        createButton("Brainroom", "Open eyes") 

        createButton("stay", "Lay still") 

    elseif aName == "Brainroom" then 
    CLS()

        setBackground("nieuwe.jpg") 

        createTextfield("This is where you will stay with me") 

    else 

        setBackground("donker.jpg")  

    end 

  

    if aName == "exit" then 

        exitGame() 

    end 

end 
    