#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

echo "$($PSQL "CREATE TABLE users();")" 
echo "$($PSQL "CREATE TABLE games();")" 

echo "$($PSQL "ALTER TABLE users ADD COLUMN user_id SERIAL primary key;")" 
echo "$($PSQL "ALTER TABLE users ADD COLUMN username varchar(22) NOT NULL;")" 

echo "$($PSQL "ALTER TABLE games ADD COLUMN game_id SERIAL primary key;")" 
echo "$($PSQL "ALTER TABLE games ADD COLUMN user_id INT NOT NULL REFERENCES users(user_id);")" 
echo "$($PSQL "ALTER TABLE games ADD COLUMN guess_number INT NOT NULL;")" 



