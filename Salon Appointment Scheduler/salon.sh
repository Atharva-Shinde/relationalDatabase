#! /bin/bash

PSQL="psql -X  --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n ~~ Welcome to the Salon Appointment Scheduler ~~\n"

MAIN_MENU() {
  if [[ $1 ]] 
   then 
    echo -e "\n$1"
  fi
  echo -e "here are the services we offer, pick a service"
  SERVICES=$($PSQL "SELECT * FROM services")
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE
  do
    echo "$SERVICE_ID) $SERVICE"
  done
  read SERVICE_ID_SELECTED
  case $SERVICE_ID_SELECTED in
    1) BOOK_APPOINTMENT ;;
    2) BOOK_APPOINTMENT ;;
    3) BOOK_APPOINTMENT ;;
    *) MAIN_MENU
  esac
}

BOOK_APPOINTMENT() {
  echo -e "\n enter your phone number"
  read CUSTOMER_PHONE
  GET_CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  if [[ -z $GET_CUSTOMER_NAME ]]
    then
      echo -e "\n enter your name"
      read CUSTOMER_NAME
      ADD_CUSTOMER=$($PSQL "INSERT INTO customers(phone,name) VALUES('$CUSTOMER_PHONE','$CUSTOMER_NAME')")
  fi
  GET_CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  echo -e "\n enter your appointment time"
  read SERVICE_TIME
  ADD=$($PSQL "INSERT INTO appointments(time,customer_id,service_id) VALUES('$SERVICE_TIME',$GET_CUSTOMER_ID,$SERVICE_ID_SELECTED)")
  GET_CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  echo -e "\nI have put you down for a $(echo $SERVICE_NAME | sed -r 's/^ *| *$//g') at $SERVICE_TIME, $(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g')."
  # echo your name: $CUSTOMER_NAME, your phone: $CUSTOMER_PHONE, appointment booked for: $SERVICE_TIME
}

MAIN_MENU