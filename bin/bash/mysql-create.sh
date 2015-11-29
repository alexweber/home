#!/usr/bin/env bash

# Only param is database name.
DBNAME=$1

# MYSQL_ROOT_USER and MYSQL_ROOT_PASS are defined in the "private" include.
source "$HOME/.etc/private"

if [ "$DBNAME" ]; then
  read -p "Create database: $DBNAME? (y/n) " RESP

  if [ "$RESP" = "y" ]; then
    DBEXISTS=$(mysql -u$MYSQL_ROOT_USER -p"$MYSQL_ROOT_PASS" --batch --skip-column-names -e "SHOW DATABASES LIKE '"$DBNAME"';" | grep "$DBNAME" > /dev/null; echo "$?");

    if [ $DBEXISTS -eq 0 ];then
      read -p "Database $DBNAME already exists, truncate it? (y/n) " RESP

      if [ "$RESP" = "y" ]; then
        mysql -u$MYSQL_ROOT_USER -p$MYSQL_ROOT_PASS -Nse "USE '$DBNAME'; SHOW TABLES;" | while read table; do mysql -u$MYSQL_ROOT_USER -p$MYSQL_ROOT_PASS -e "drop table $table" $DBNAME; done
        echo "Database truncated!"
      fi
    else
      mysql -u$MYSQL_ROOT_USER -p$MYSQL_ROOT_PASS -Nse "CREATE DATABASE \`$DBNAME\` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"
      echo "Database created!"
    fi
  fi
else
  echo "Please specify a database name."
fi
