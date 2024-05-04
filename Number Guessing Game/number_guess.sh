#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=points --tuples-only -c"
RND=$((RANDOM % 1000 + 1))
GUESSES=0

MAIN_MENU(){
  echo Enter your username:
  read USERNAME
  CHECK=$($PSQL "SELECT * FROM points WHERE username='$USERNAME'")
  if [[ -z  $CHECK ]]
    then
      echo Welcome, $USERNAME! It looks like this is your first time here.
      ADD_USER=$($PSQL "INSERT INTO points(username, games_played, best_game) VALUES('$USERNAME',1,1000)")
    else
      echo "$CHECK" | while read USER BAR GAMES_PLAYED BAR BEST_GAME
      do
        echo "Welcome back, $USER! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
        UPDATE_GAMES_PLAYED=$($PSQL "UPDATE points SET games_played = games_played + 1 WHERE username='$USER'")
      done
  fi

  GUESS
  CHECK=$($PSQL "SELECT best_game FROM points WHERE username ='$USERNAME'")
  echo this is the numb of guesses $GUESSES
  if [[ $CHECK -gt $GUESSES ]]
    then
      UPDATE_GUESSES=$($PSQL "UPDATE points SET best_game = $GUESSES WHERE username='$USERNAME'")
    else
      echo "this game's your best guess $GUESSES"
  fi
}

GUESS() {
  echo Guess the secret number between 1 and 1000:
  read INPUT
  if [[ ! $INPUT =~ ^[0-9]+$ ]]
      then
        echo "That is not an integer, guess again:"
        echo $GUESSES 
        GUESSES=$((GUESSES + 1))
        GUESS 
    elif [[ $INPUT -lt $RND ]] 
    then
      echo "It's higher than that, guess again:"
      echo $GUESSES
      GUESSES=$((GUESSES + 1))
      GUESS
    elif [[ $INPUT -gt $RND ]]
      then
        echo "It's lower than that, guess again:"
        echo $GUESSES
        GUESSES=$((GUESSES + 1))
        GUESS
    elif [[ $INPUT -eq $RND ]]
      then 
        echo You guessed it in $GUESSES tries. The secret number was $RND. Nice job!
  fi
}

MAIN_MENU