#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

secret_number=$(( $RANDOM % 1000 + 1 ))
COUNT=0

MAIN_MENU(){
  echo -e "\nEnter your username:\n"
  read username
  # cleanse data, remove whitespace
  username=$(echo $username | sed 's/ //g')
  VERIFY_USERNAME
}
VERIFY_USERNAME(){
  wordcount=${#username} 
  # if [[ $wordcount -lt 1 || $wordcount -gt 22 ]]
  # if [[  $wordcount -lt 1  &&  $username =~ [a-z]  ]];
  if [[ ! $username =~ ^[A-Za-Z0-9|_|\-]+$  ||  $wordcount -lt 1 ]];
  then
    # NO INPUT OR >= 23 character. Re-enter username
    # echo $wordcount
    MAIN_MENU
  else
    # pass verification.
    # echo $wordcount
    USER_ID_QUERY_RESULT="$($PSQL "SELECT user_id FROM users WHERE username='$username';")" 
    # check if NEW user
    if [[ -z $USER_ID_QUERY_RESULT ]]
    then
      # new user
      echo "Welcome, $username! It looks like this is your first time here."
    else
      # old user
      games_played="$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID_QUERY_RESULT;")" 
      best_game="$($PSQL "SELECT MIN(guess_number) FROM games WHERE user_id=$USER_ID_QUERY_RESULT;")" 

      # cleanse data, remove whitespace
      games_played=$(echo $games_played | sed 's/ //g')
      best_game=$(echo $best_game | sed 's/ //g')

      echo -e "\nWelcome back, $username! You have played $games_played games, and your best game took $best_game guesses.\n"
    
    fi
    # then, play games
    echo -e "\nGuess the secret number between 1 and 1000:\n"
    GAME_MENU
  fi
}
GAME_MENU(){
  COUNT=$(( $COUNT  + 1  ))
  read guess
  CHECK_ANSWER
}
CHECK_ANSWER(){
  # verify input is a number only
  if [[ ! $guess =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:\n"
    GAME_MENU
  elif [[ $guess -gt  $secret_number ]]
  then
    # actual is lower
    echo -e "\nIt's lower than that, guess again:\n"
    GAME_MENU
  elif [[ $guess -lt $secret_number ]]
  then
    # actual is higher
    echo -e "\nIt's higher than that, guess again:\n"
    GAME_MENU
  elif [[ $guess -eq $secret_number ]]
  then 
    # a match, winner!
    WIN_DISPLAY
  fi
}
WIN_DISPLAY(){
  # REGISTER IF IS NEW USER, and get new user_id
  if [[ -z $USER_ID_QUERY_RESULT ]]
  then
    INSERT_USERS_RESULT="$($PSQL "INSERT INTO users(username) VALUES('$username') ;")" 
    USER_ID_QUERY_RESULT="$($PSQL "SELECT user_id FROM users WHERE username='$username';")" 
  fi

  # INSERT INTO GAMES
  INSERT_GAMES_RESULT="$($PSQL "INSERT INTO games(user_id, guess_number) VALUES($USER_ID_QUERY_RESULT,$COUNT) ;")" 

  echo -e "\nYou guessed it in $COUNT tries. The secret number was $secret_number. Nice job!\n"
  exit
}
MAIN_MENU