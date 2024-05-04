#! /bin/bash

echo Please provide an element as an argument.
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

INPUT=$1
MAIN_MENU() {
  if [[ $INPUT =~ ^[1-9]+$ ]]
  then
    THROUGH_ATOMIC_NUMBER
  elif [[ $INPUT =~ ^[A-Z][a-z]?$ ]]
  then
    THROUGH_SYMBOL
  elif [[ $INPUT =~ ^[A-Za-z]+$ ]]
  then
    THROUGH_NAME
  else
    echo "I could not find that element in the database."
  fi

}

THROUGH_ATOMIC_NUMBER(){
  GET_DATA=$($PSQL "SELECT type_id, atomic_number, symbol, name, atomic_mass, melting_point_celsius, boiling_point_celsius, types.type from elements inner join properties using(atomic_number) inner join types using(type_id) WHERE atomic_number='$INPUT'")
  if [[ -z $GET_DATA ]]
    then
    echo no data
    else
      echo $GET_DATA | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR ATOMIC_MASS BAR MELTING_POINT_CELSIUS BAR BOILING_POINT_CELSIUS BAR TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
      done
  fi
}

#! /bin/bash

echo Please provide an element as an argument.
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

INPUT=$1
MAIN_MENU() {
  if [[ $INPUT =~ ^[1-9]+$ ]]
  then
    THROUGH_ATOMIC_NUMBER
  elif [[ $INPUT =~ ^[A-Z][a-z]?$ ]]
  then
    THROUGH_SYMBOL
  elif [[ $INPUT =~ ^[A-Za-z]+$ ]]
  then
    THROUGH_NAME
  else
    echo "I could not find that element in the database."
  fi

}

THROUGH_ATOMIC_NUMBER(){
  GET_DATA=$($PSQL "SELECT type_id, atomic_number, symbol, name, atomic_mass, melting_point_celsius, boiling_point_celsius, types.type from elements inner join properties using(atomic_number) inner join types using(type_id) WHERE atomic_number='$INPUT'")
  if [[ -z $GET_DATA ]]
    then
    echo no data
    else
      echo $GET_DATA | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR ATOMIC_MASS BAR MELTING_POINT_CELSIUS BAR BOILING_POINT_CELSIUS BAR TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
      done
  fi
}

THROUGH_SYMBOL() {
 GET_DATA=$($PSQL "SELECT type_id, atomic_number, symbol, name, atomic_mass, melting_point_celsius, boiling_point_celsius, types.type from elements inner join properties using(atomic_number) inner join types using(type_id) WHERE symbol='$INPUT'")
  if [[ -z $GET_DATA ]]
    then
    echo no data
    else
      echo $GET_DATA | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR ATOMIC_MASS BAR MELTING_POINT_CELSIUS BAR BOILING_POINT_CELSIUS BAR TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
      done
  fi
}

THROUGH_NAME(){
  GET_DATA=$($PSQL "SELECT type_id, atomic_number, symbol, name, atomic_mass, melting_point_celsius, boiling_point_celsius, types.type from elements inner join properties using(atomic_number) inner join types using(type_id) WHERE name='$INPUT'")
  if [[ -z $GET_DATA ]]
    then
    echo no data
    else
      echo $GET_DATA | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR ATOMIC_MASS BAR MELTING_POINT_CELSIUS BAR BOILING_POINT_CELSIUS BAR TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
      done
  fi
}

MAIN_MENU