#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --no-align --tuples-only -c"

if [[ $1 ]]
then
  # Check if number or not
  if [[ $1 =~ ^[0-9]+$ ]]
  then
        DATA=$($PSQL "SELECT * FROM elements FULL JOIN properties USING(atomic_number) FULL JOIN types USING(type_id) WHERE atomic_number = $1")
  else
     # Check if symbol or not
    if [[ echo $1 | awk '{print length}' -gt 2 ]]
    then
        DATA=$($PSQL "SELECT * FROM elements FULL JOIN properties USING(atomic_number) FULL JOIN types USING(type_id) WHERE symbol = '$1'")
    else
      DATA=$($PSQL "SELECT * FROM elements FULL JOIN properties USING(atomic_number) FULL JOIN types USING(type_id) WHERE name = '$1'")
    fi
  fi

  if [[ -z $DATA ]]
  then
    echo "I could not find that element in the database."
  else
    echo $DATA | while IFS="|" read TYPE_ID AN SYMBOL NAME AM MP BP TYPE
    do
      echo "The element with atomic number $AN is $NAME ($SYMBOL). It's a $TYPE, with a mass of $AM amu. $NAME has a melting point of $MP celsius and a boiling point of $BP celsius."
    done
  fi
else
  echo "Please provide an element as an argument."
fi
