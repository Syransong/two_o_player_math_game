## Two-O-Player Math Game Planning

## Description
* Create a 2-Player math game where players take turns to answer simple math addition problems.
* A new math question is generated for each turn by picking two numbers between 1 and 20. 
* The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details 
* Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

* The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Planning Tasks 

## Task 1: Extract Nouns for Classes
Potential Nouns: 
* Players 
* Questions 
* Game

## Task 2: Write their roles

Prompts: 
* What is the role for each class?
  * Remember that objects are important for two things:
    1. State: Storing data describing themselves (variables)
    2. Behaviour: Defining actions that can be performed on them (methods)
* Things to consider:
  * What information is relevant to each class?
  * What will they need in order to be initialized?
  * What public methods will be defined on them?
  * Which class will contain the game loop (where each instance of the loop is the other players turn)?
  * Which class should manage who the current_player is?
  * Which class(es) will contain user I/O and which will not have any?

Player
* State/Variables:
  * Player Name/ID number ex. Player 1, Player 2
  * Lives (how many lives left => current_score)
* Behaviour:
  * At game start, 2 players will be initialized and given 3 lives 
    * score = 3
  * Getter/setter(accessor) for player lives aka current_score
    * method to keep track if both players are still alive 
  * One life will be lost when a player gets an answer wrong
  * Number of lives are reset when gameover

Questions
* State/variables: none
* Behaviour:
  * two random numbers will be generated between 1 and 20 
  * must generate a question using the randomly generated numbers
    * What does #{number1} plus #{number2} equal?
  * store a solution to the question 
  * Have a response if the player answers is wrong => "Seriously? NO!"
  * Have a response if the player answers it right => "YES! You are correct."

Game
* State/Variables:
  * Current Player (who's turn it is)
  * Game Status 
* Behaviour:
  * Tracks who's turn it is
  * Check the current status of the players' lives to see if the game continues or not
    * If yes, question is generated 
    * If no, game ends when one of the players loses all their lives 
      * Winner will be announced and what the other player's score is
        * ex. Player 1 wins with a score of 1/3 
  



