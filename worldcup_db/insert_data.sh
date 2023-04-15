#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then 
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'; ")

    # if not found
    if [[ -z $WINNER_ID ]]
    then
      INSERT_WINNER_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
      echo "Inserting winner team -> $WINNER"
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'; ")
    fi

    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    if [[ -z $OPPONENT_ID ]]
    then
      INSERT_OPPONENT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
      echo "Inserting winner team -> $OPPONENT"
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    fi
  
  # Insert all values
    GAMES_VALUES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)";)
    echo "Inserting info -> $YEAR, $ROUND, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS"
  fi
done
