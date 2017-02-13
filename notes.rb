# Create a 2-Player math game
# where players take turns to
# answer simple math addition problems.

# A new math question is generated
# for each turn by picking two numbers
# between 1 and 20.

# The player whose turn it is is prompted
# the question and must answer correctly
# or lose a life.


#BOTH PLAYERS START WITH 3 LIVES
#THEY LOOSE A LIFE IF THE MIS-ANSWER A QUESTION
#OUTPUT OF UPDATED SCORES WHEN ANSWER IS WRONG

#GAME DOES NOT END UNTIL THE LIVES OF ONE PLAYER ARE ALL LOST
#GAME SHOULD ANNOUNCE WHO WON

CLASSES
game -
state: turn, gameOnOrOver
behavior: changeTurn, checkScore, winnerGagnat,
method: changeTurn(change state between both players)
method: checkScore(if a score hits 0, game over)
method: puts ---- NEW TURN ----
method: winner(annonce winner and their current score)

question -
state: answerToQuestion
behavior: questionGenerator(gets.chomp)
method: answerCheck(check input to output of questionGenerator)
method: outputMessage

player -
state: individualScore(3)
behavior: changeScore(-1), playerConstructor, changeInScore
method: changeScore(subtract 1 off of player\'s score if question does not match the answer)
method: playerConstructor(create a player that holds a score state(3))
method: changeInScore(announce current score when changed)
