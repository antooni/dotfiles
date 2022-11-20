sh -c "$(wget -O- https://raw.githubusercontent.com/antooni/dotfiles/master/install.sh)"
yarn install
psql -h localhost postgres -U postgres -c 'CREATE DATABASE l2beat_local' 
psql -h localhost postgres -U postgres -c 'CREATE DATABASE l2beat_test' 
