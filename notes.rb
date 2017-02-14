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
turn -
state: question
method: questionGenerator
game -
state: gameOnOrOver, players
behavior: changeTurn, checkScore, winnerGagnat,
method: checkScore(if a score hits 0, game over)
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



#Incremental steps
-Build a question that takes an answer/output the answer GOOD
-Modify question to have if statements to check if true GOOD
-Modify question to generate random numbers/store them as the answer

-Create a score of 3/have one player
-Adjust turn if answer is wrong
-Do something once score hits 0

-puts ---- NEW TURN ---- on every questions
-create player playerConstructor
-switch between players each question
-adjust score accordingly

-Match all instances together
-Have a file for each class
-Define a main.rb that requies all other files
-Define a constant MathGame

-TEST CONTINOUSLY UNTIL PERFECTION

