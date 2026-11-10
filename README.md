# Covoit'Campus

Application de covoiturage universitaire – SAE BUT Informatique, IUT de Bayonne.

## Démarrage rapide

Back-end (à la racine) :
```powershell
Copy-Item backend/.env.example backend/.env
docker compose up -d --build
docker compose exec app composer install
docker compose exec app php artisan key:generate
docker compose exec app php artisan migrate
```
Test : http://localhost:8000/api/ping

Mobile (dans mobile/) :
```powershell
flutter pub get
flutter run
```

## Règles de l'équipe

- On ne pousse jamais directement sur `develop` ni `main`.
- Une tâche Trello = une branche `feature/<n° carte>-<sujet>` (ex. `feature/12-connexion-cas`).
- Commits : `type(portée): description` (ex. `feat(back): ajouter la réservation`).
- Une Pull Request vers `develop`, relue par un coéquipier, CI verte, puis **Squash and merge**.