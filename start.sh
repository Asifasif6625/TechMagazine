if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Asifasif6625/TechMagazine.git /TechMagazine       
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TechMagazine 
fi
cd /TechMagazine 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
