
-- Title: MovingImages
-- Name: Bassim Hawa
-- Course: ICS2O/3C
-- This program displays a beetleship moving across the screen as well as another
--object moving in a different direction.
--------------------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3
scrollSpeed2 = -4
scrollSpeed3 = 2

--background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 100, 100)

--character image with width and height
local gumby = display.newImageRect("Images/Gumby.png", 125, 125)

-- character image with width and height
local hotdog = display.newImageRect("Images/hotdog2.png", 100, 100)

--make the beetleship transparent
beetleship.alpha = 0

--set the initial x and y position of the beetleship
beetleship.x = 100
beetleship.y = display.contentHeight/3

--set the initial x and y position of gumby
gumby.x = 400
gumby.y = display.contentHeight*2.5/3

--set the initial x and y position of the beetleship
hotdog.x = 100
hotdog.y = 10

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	  --add the scroll speed to the x-value of the ship
	  beetleship.x = beetleship.x + scrollSpeed
	  -- change the transparency of the ship every time it moves so that it fades in
	  beetleship.alpha = beetleship.alpha + 0.01
	end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

--Function: MoveGumby
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of gumby
local function MoveGumby(event)
	  --add the scroll speed to the x-value of gumby
	  gumby.x = gumby.x + scrollSpeed2
	  -- change the transparency of gumby every time he moves so that he fades out
	  gumby.alpha = gumby.alpha - 0.01
	  --make gumby smaller as he moves
	  gumby:scale(1 - 0.01, 1 - 0.01)
	end

-- MoveGumby will be called over and over again
Runtime:addEventListener("enterFrame", MoveGumby)


--Function: MoveHotdog
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the hotdog
local function MoveHotdog(event)
	  --add the scroll speed to the x-value of the hotdog
	  hotdog.x = hotdog.x + scrollSpeed3
	  hotdog.y = hotdog.y + scrollSpeed3
	  -- make the hotdog spin as it moves
	  hotdog:rotate(20)
	  --make the hotdog larger as it moves
	  hotdog:scale(1 + 0.005, 1 + 0.005 ) 
	end

-- MoveHotdog will be called over and over again
Runtime:addEventListener("enterFrame", MoveHotdog)