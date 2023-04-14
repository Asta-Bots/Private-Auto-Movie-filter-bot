if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Asta-Bots/Private-Auto-Movie-filter-bot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Eva
fi
cd /Private-Auto-Movie-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
