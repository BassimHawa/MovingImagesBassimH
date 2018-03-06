-----------------------------------------------------------------------------------------
-- Title: MovingObjects
-- Name: Bassim Hawa
-- Course: ICS2O/3C
-- This program moves a beetleship across the screen as well as another object moving in another direction.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
local scrollSpeed = 3

--background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 100, 100)

--set the initial x and y position of the beetleship
beetleship.x = 100
beetleship.y = display.contentHeight/3

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event) 
	  --add the scroll speed to the x-value of the ship
	  beetleship.x = beetleship.x + scrollSpeed 
	  -- change the transparency of the ship every time it moves so that it fades out
	  beetleship.alpha = beetleship.alpha + 0.01
	end

    -- MoveShip will be called over and over again
    Runtime:addEventListener("eventFrame", MoveShip)

