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
sword  = false
castSpellLib = false 
demonring = false
  

function story(aName) 

    if aName == "start" then 
    playSound("intro.wav")

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

         playSound("storm.wav") 
            CLS()

            setBackground("afstant.jpg") 

            createTextfield("You see something or rather someone in the distance.") 

            createButton("exit", "Leave") 

            createButton("look", "Get closer") 

      elseif aName == "look" then

         playSound("blaadjes.WAV")
            CLS()
        
          setBackground("heks in het bos.jpg")
          createTextfield("helloooooo what are you doing here?")
          createButton("truth", "im lost ")
          createButton("lie","just taking a stroll get out of here old hag")

     elseif aName == "lie" then 
      CLS()
      playSound("doodgaan.wav")
      setBackground("death.jpg")

      elseif aName == "truth" then 
      CLS()
      setBackground("heks hut.jpg")
      createTextfield("oh come follow me to my home")
      createButton("witch","ofcource")
      createButton("lie","i don't need your help")

      elseif aName == "witch" then 
      CLS()
      playSound("witch house.wav")
      setBackground("binnekant.jpg")
      createTextfield("sit down ill get us something to drink")
      createButton("drink","(say nothing)")
      createButton("drink niet","friendly decline")

     elseif aName == "drink" then
     CLS()
     playSound("bier.wav")
     setBackground("drinken.jpg")
     createTextfield("this tastes really good")
     createButton("lie","i feel really sleepy im gonna pass out")

     elseif aName == "drink niet" then
     CLS()
     setBackground("sword on wall.jpg")
     createTextfield("im gonna head out for a little bit dont touch anything!")
     createButton("grab","grab the sword on the wall next to you")
     createButton("run","i think there was poison    RUNNNN")

     elseif aName == "run" then 
      exitGame()

     elseif aName == "grab" then 
     sword = true
     CLS()
     setBackground("witch home.png")
     createTextfield("what are you doing with my stuff PUT IT DOWN NOWWW!!")
     createButton("entrance","try and run to the house")
     createButton("kil","try and fight the witch")

     elseif aName == "kil" then 
     CLS()
     setBackground("domain1.jpg")
     createTextfield("she just used a domain expesion forest of death")
     createButton("cool","use you own domain")
     createButton("lie","rush her with the sword")

     elseif aName == "cool" then 
     CLS()
     setBackground("mickey.jpg")
     playSound("mickey.wav")
     createTextfield("u destroyed that pethetic old woman (you can go back)")
     createButton("entrance","go to the house")


     

    elseif aName == "left room" then 
    --setBackground("hell.jpg")

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
      CLS()
        playSound("trap af.wav")
        setBackground("stairs.jpg")
      
        createTextfield("its a long way down will you continue?")
        createButton("left room","no")
        createButton("grot","yes")

        elseif aName == "grot" then
        CLS()
        playSound("countdown.wav")
        setBackground("secret item.jpg")
        createTextfield("you hear something omineus calling you toward it                                                  and you cannot escape its grasp")
        createButton("ring","walk towards it")
        createButton("ring","walk towards it")

        elseif aName == "ring" then
        CLS()
        setBackground("closer.jpg")
        createTextfield("as you walk towards it you see somthing shining in the bowl                                       (you still cant leave)")
        createButton("gem","look inside the bowl")

        elseif aName == "gem" then 
        CLS()
        setBackground("gym.jpg")
        createButton("left room","grab ring and go back")
        demonring = true 
        createButton("sad","don't take the ring")

        elseif aName == "sad" then 
        CLS()
        playSound("splat.wav")
        setBackground("death.jpg")
        createTextfield("the ring consumes you as you try and walk away")


    elseif aName == "right room" then 

        CLS() 
        playSound("hell2.wav")
        setBackground("hell.jpg") 

        createTextfield("             what is it that you see infront of you is that                                                          THE GATE OF HELLLLLLLL.")

        createButton("entrance", "this is not a place i should be at i better leave") 
        createButton("go in","i wonder how hell looks")
        elseif aName == "go in" then 
        CLS()
        setBackground("entrance hell.jpg")
        playSound("hell sound.wav")
        createTextfield("holy shit you actualy made it into hell")
        createButton("right room","damn its hot in here i should leave")
        createButton("keep going","im not scared ill kill anything that comes in my way")

        elseif aName == "keep going" then 
        CLS()
        setBackground("hell boss.jpg")
        playSound("grawl.wav")
        createTextfield("you see a giant fucking monster that can only be described as                         satan himself suddenly something you where holding                                   start shining ")

        if sword == true then 

            createButton("kill","use the sword excaliber to slay the beast")

        else

            createButton("lie","try and run away")
        end
       elseif aName == "kill" then 
       CLS()
       setBackground("victory.png")
       playSound("winnn.wav")
       createTextfield("as you slay the giant beast from                                                     hell you regain your memories")
       createButton("exit","go home")

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
        elseif aName == "stay" then 
        CLS()
        setBackground("sucked.jpg")
        createTextfield("u have been sucked dry")
        createButton("lie","accept your fate")


    elseif aName == "Brainroom" then 
    CLS()

        setBackground("nieuwe.jpg") 

        createTextfield("This is where you will stay with me") 
        createButton("repel","no this cant be happening")
        createButton("lie","accept you fate")

        elseif aName == "repel" then 
       CLS()
       setBackground("never.jpg")
       createTextfield("she comes closer a you hear something wisper in your ear                                               it says hold your hand up")
       if demonring == true then 
       createButton("king of hell","use the ring to repel her")
        else
       createButton("lie","hold your hand up") 
       end
       elseif aName == "king of hell" then 
       CLS()
       playSound("bright.wav")
       setBackground("light.jpg")
       createTextfield("you see nothing biut you know something is happening")
       --createButton
       
    end 

  

    if aName == "exit" then 

        exitGame() 

    end 

end 
    