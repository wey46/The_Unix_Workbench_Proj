## Count the files
num_files=$(ls | wc -l)

## Game function
function guessnum {

if [[ $1 -gt $num_files ]]
then
    echo "Your guessing is too high "
    echo "Try again!"

elif [[ $1 -lt $num_files ]]
then
    echo "Your guessing is too low "
    echo "Try again!"

else
    echo "You're right."
    echo "Congratulations!!!"
fi
}

###################################

response=""
while [[ $response -ne $num_files ]]
do
  echo "How many files are in the current directory?"
  read response
  guessnum $response
  let response=$response
done
