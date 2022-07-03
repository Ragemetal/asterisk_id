#/bin/bash
for ID in `seq 130 152`
do
SYMBOLS=""
for symbol in {a..z} {A..Z} {0..9}; do SYMBOLS=$SYMBOLS$symbol; 
done
SYMBOLS=$SYMBOLS'+/#$%&*()?@[]{}<>-!_='
PWD_LENGTH=28
PASSWORD=""
RANDOM=256
for i in `seq 1 $PWD_LENGTH`
do
PASSWORD=$PASSWORD${SYMBOLS:$(expr $RANDOM % ${#SYMBOLS}):1} 
done
echo "[atr$ID](atr-operators)" 
echo "username=atr$ID" 
echo "callerid= '"user"' <$ID>" 
echo "secret=$PASSWORD" 
echo 
done