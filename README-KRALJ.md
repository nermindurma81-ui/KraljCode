# 👑 KRALJCODE - FREE AI CODING TOOL

**BESPLATNA VERZIJA - NO PAYMENT NEEDED! 🆓**

---

## 🚀 BRZI START (5 MINUTA)

### **1. Kloniraj Repo**

```bash
git clone https://github.com/nermindurma81-ui/KraljCode.git
cd KraljCode
```

---

### **2. Instaliraj Dependencies**

**Opcija A: Bun (Preporučeno - Brže!)**
```bash
curl -fsSL https://bun.sh/install | bash
bun install
```

**Opcija B: npm**
```bash
npm install
```

---

### **3. Kreiraj .env Fajl**

```bash
cp .env.example .env
```

---

### **4. Dodaj Svoj GROQ API Key (BESPLATAN!)**

1. Otvori: **https://console.groq.com/keys**
2. Kreiraj account (besplatan, ne treba kreditna kartica)
3. Klikni **"Create API Key"**
4. Kopiraj key (počinje sa `gsk_...`)
5. Zalijepi u `.env`:

```bash
GROQ_API_KEY=gsk_tvoj_api_key_ovdje
GROQ_MODEL=llama-3.3-70b-versatile
```

---

### **5. Pokreni KraljCode**

**Za VS Code Extension:**
```bash
npm run extension
# Ili
bun run extension
```

**Za Web App:**
```bash
npm run dev:web
# Ili
bun run dev:web
```

**Za Desktop App (Tauri):**
```bash
npm run dev:desktop
# Ili
bun run dev:desktop
```

---

## 🎯 ŠTA DOBIJAŠ:

| Feature | Status |
|---------|--------|
| **AI Autocomplete** | ✅ Radi (tvoj Groq key) |
| **AI Chat** | ✅ Radi (tvoj Groq key) |
| **Code Generation** | ✅ Radi (tvoj Groq key) |
| **Payment Required** | ❌ UKLONJENO! |
| **Subscription** | ❌ NIJE POTREBNO! |
| **Credits** | ❌ NIJE POTREBNO! |

---

## 🆓 GROQ FREE TIER:

- ✅ **100 requests/day**
- ✅ **Unlimited za ličnu upotrebu**
- ✅ **Bez kreditne kartice**
- ✅ **Dovoljno za daily coding**

---

## 🔧 TROUBLESHOOTING

### **Problem: "GROQ_API_KEY not found"**
**Rješenje:**
```bash
# Provjeri da li .env fajl postoji
ls -la .env

# Provjeri da li je key ispravan
cat .env | grep GROQ_API_KEY
```

### **Problem: "Module not found"**
**Rješenje:**
```bash
# Obriši node_modules i reinstaliraj
rm -rf node_modules
bun install
# Ili
npm install
```

### **Problem: "402 Payment Required"**
**Rješenje:**
Ova verzija ima **UKLONJEN 402 CHECK**! Ako vidiš ovu grešku:
```bash
# Provjeri da li koristiš ispravnu verziju
git pull origin main
```

### **Problem: Build failao**
**Rješenje:**
```bash
# Koristi Node 20+
node --version  # Treba biti v20 ili noviji

# Ako je stariji, instaliraj nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm install 20
nvm use 20
```

---

## 📁 STRUKTURA PROJEKTA:

```
KraljCode/
├── packages/
│   ├── kilo-vscode/        # VS Code Extension
│   ├── kilo-docs/          # Dokumentacija
│   ├── ui/                 # UI Komponents
│   ├── app/                # Web App
│   └── desktop/            # Desktop App (Tauri)
├── .env.example            # Template za env vars
├── .env                    # Tvoj config (napravi ovo!)
├── package.json            # Root package
└── README-KRALJ.md         # Ovo uputstvo
```

---

## 🎮 KOMANDE:

| Komanda | Opis |
|---------|------|
| `npm run dev` | Pokreni sve servise |
| `npm run dev:web` | Web app samo |
| `npm run dev:desktop` | Desktop app samo |
| `npm run extension` | VS Code extension |
| `npm run typecheck` | TypeScript check |
| `npm run build` | Build za produkciju |

---

## 🌟 RAZLIKA OD KILOCODE:

| Feature | KiloCode | KraljCode |
|---------|----------|-----------|
| **Cijena** | $20/mj | 🆓 BESPLATNO |
| **402 Check** | ❌ Blokira | ✅ Uklonjeno |
| **AI Provider** | Paid API | Tvoj Groq (Free) |
| **Subscription** | Required | ❌ Nije potrebno |
| **Credits** | Required | ❌ Nije potrebno |

---

## 📞 SUPPORT:

- **GitHub:** https://github.com/nermindurma81-ui/KraljCode
- **Issues:** https://github.com/nermindurma81-ui/KraljCode/issues

---

## 🎉 UŽIVAJ U BESPLATNOM AI CODINGU! 👑

**Napravljeno sa ❤️ od Kralja**
