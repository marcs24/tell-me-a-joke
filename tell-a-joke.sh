
jokes=$(curl -s 'https://official-joke-api.appspot.com/jokes/programming/ten')

for jokeNumber in {0..9}
do
  setup=$(echo $jokes | jq -r .[$jokeNumber].setup)
  punchline=$(echo $jokes | jq -r .[$jokeNumber].punchline)
  echo $setup
  say -v Alex $setup
  sleep 0.5

  echo $punchline
  say $punchline

  sleep 1
  echo  
  echo 
done