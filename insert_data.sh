#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams")

cat games.csv | while IFS="," read YR RND WIN OPP W_GOAL O_GOAL 
do
 # echo $YR, $RND, $WIN

  TEAMW=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")

  if [[ $WIN != "winner" ]]
  then
    if [[ -z $TEAMW ]]
    then
      IN_W_ID=$($PSQL "INSERT INTO teams(name) VALUES('$WIN')")
      if [[ $IN_W_ID == "INSERT 0 1" ]]
      then
        echo Inserted into winner, $WIN
      fi
    fi
  fi

  TEAML=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")

  if [[ $OPP != "opponent" ]]
  then
    if [[ -z $TEAML ]]
    then
      IN_O_ID=$($PSQL "INSERT INTO teams(name) VALUES('$OPP')")
      if [[ $IN_W_ID == "INSERT 0 1" ]]
      then
        echo Inserted into opponent, $OPP
      fi
    fi
  fi

  TEAM_ID_W=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
  TEAM_ID_L=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")

  if [[ -n $EAM_ID_W || -n $TEAM_ID_L ]]
  then
    if [[ $YR != "year" ]]
    then
      IN_GAME=$($PSQL "INSERT INTO games(winner_id, opponent_id, winner_goals, opponent_goals, year, round) VALUES('$TEAM_ID_W','$TEAM_ID_L','$W_GOAL','$O_GOAL','$YR','$RND')")
      if [[ $IN_GAME == "INSERT 0 1" ]]
      then
        echo Insert game history, $YR
      fi
    fi
  fi


done
