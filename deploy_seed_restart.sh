git commit -a
git push -u origin --all
git push -u origin --tags
bin/cap production deploy:backup
bin/cap production deploy
bin/cap production rails:rake:db:migrate
bin/cap production rails:rake:db:seed
bin/cap production deploy:restart
