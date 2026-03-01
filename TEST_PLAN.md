# 🧪 PIANO TEST COMPLETO - ARK GAMES 3.0

**Data:** 2026-03-01
**Obiettivo:** Verificare OGNI funzionalità end-to-end

---

## 📋 CHECKLIST MASTER

### 1. 🔐 ADMIN AUTHENTICATION
- [ ] Accesso /admin
- [ ] Form email visibile
- [ ] Form PIN visibile
- [ ] Login con credenziali corrette
- [ ] Redirect a dashboard dopo login
- [ ] Session salvata in localStorage

### 2. 🏆 GESTIONE SEASON (Admin)
- [ ] Creazione nuova season
- [ ] Compilazione form (nome, date, categorie)
- [ ] Configurazione capacità (durata, heat, lane)
- [ ] Salvataggio su Firebase
- [ ] Caricamento season esistente
- [ ] Modifica season
- [ ] Generazione WOD con AI
- [ ] Aggiunta WOD manuale
- [ ] Visualizzazione team iscritti
- [ ] Generazione calendario
- [ ] Gestione disponibilità
- [ ] Pubblicazione season

### 3. 🎯 GESTIONE GARA (Admin)
- [ ] Creazione nuova gara
- [ ] Configurazione WOD
- [ ] Setup categorie
- [ ] Setup heat
- [ ] Salvataggio su Firebase
- [ ] Caricamento gara esistente
- [ ] Timeline management

### 4. 👤 APP ATLETA
- [ ] Accesso /app
- [ ] Visualizzazione tab Gare
- [ ] Visualizzazione tab Seasons
- [ ] Click su season → dettaglio
- [ ] Iscrizione a season/gara
- [ ] Form iscrizione completo
- [ ] Selezione disponibilità calendario
- [ ] Visualizzazione giorni pieni (rosso)
- [ ] Salvataggio disponibilità
- [ ] Profilo atleta

### 5. ⚖️ JUDGE
- [ ] Accesso /judge
- [ ] PIN pad visibile
- [ ] Inserimento PIN
- [ ] Selezione gara/season
- [ ] Selezione heat
- [ ] Selezione atleta/team
- [ ] Counter +/- reps
- [ ] Timer sync con regia
- [ ] Submit score
- [ ] Score salvato su Firebase

### 6. 🎬 REGIA
- [ ] Accesso /regia
- [ ] Selezione gara/season
- [ ] Timer START funziona
- [ ] Timer PAUSE funziona
- [ ] Timer RESET funziona
- [ ] Countdown 3-2-1-GO
- [ ] Selezione heat corrente
- [ ] Sync con Firebase (currentHeat)
- [ ] Controllo audio (beep)

### 7. 📺 LIVE
- [ ] /live/tv - Display timer
- [ ] /live/tv - Display heat info
- [ ] /live/leaderboard - Classifica
- [ ] /live/leaderboard - Aggiornamento real-time
- [ ] /live/output - OBS overlay

### 8. 📹 CAMERA/STREAMING
- [ ] /camera-webrtc - Accesso camera
- [ ] /camera-webrtc - Permessi camera
- [ ] /camera-webrtc - Stream a Firebase
- [ ] /stream-webrtc - Ricezione stream
- [ ] /stream-webrtc - Multi-camera view

### 9. 🔥 FIREBASE SYNC
- [ ] Scrittura dati funziona
- [ ] Lettura dati funziona
- [ ] Real-time listeners funzionano
- [ ] Path ark2/ corretto

### 10. 📱 RESPONSIVE
- [ ] Homepage mobile
- [ ] Admin mobile
- [ ] App mobile
- [ ] Judge mobile (importante!)
- [ ] Regia tablet

---

## 🤖 DISTRIBUZIONE AGENTI

| Agente | Test Assegnati |
|--------|----------------|
| **CAPO** | Coordinamento + Firebase + Flow E2E |
| **ANALYZER** | UI/UX + Form validation + Console errors |
| **REGISTA** | Visual design + Responsive + Screenshots |

---

## 🧪 TEST DATA

**Season Test:** `season_test_1772379430`
**Admin Credentials:** 
- Email: eugenio (o admin)
- PIN: (da verificare in Firebase)

**Firebase Path:** `ark2/`
**Database:** `copilota-6d94a`

---

## 📊 RISULTATI

| Test | Status | Note |
|------|--------|------|
| Admin Auth | ⏳ | |
| Season CRUD | ⏳ | |
| Gara CRUD | ⏳ | |
| App Atleta | ⏳ | |
| Judge | ⏳ | |
| Regia | ⏳ | |
| Live | ⏳ | |
| Camera | ⏳ | |
| Firebase | ⏳ | |
| Responsive | ⏳ | |

---

**Ultimo aggiornamento:** In corso...
