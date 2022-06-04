#! /bin/sh

new_file() {

  file_name="file_$RANDOM.txt"

  touch $file_name

  for i in {1..5}
  do
    echo "$i $RANDOM" >> $file_name
  done

}

new_files() {
  for i in $(eval echo {1..$1})
  do
    echo $i
    new_file
  done

}

new_files $1
