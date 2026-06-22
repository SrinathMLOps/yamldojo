# Start here

## 1. Unzip
Unzip this folder anywhere — Desktop is fine. You should see:
```
yaml-dojo/
├── index.html      ← the practice tool
├── README.md       ← full details + resource checklist
├── push.sh         ← one-command GitHub push (Mac/Linux)
├── push.bat        ← one-command GitHub push (Windows)
└── START_HERE.md   ← this file
```

## 2. Open it in Kiro
Launch Kiro → **Open a project** → select the `yaml-dojo` folder.
(Or, from a terminal already inside this folder: `kiro .`)

## 3. Run it
There's nothing to build or install. Just open `index.html` in your browser —
double-click it in Kiro's file Explorer, or right-click → **Reveal in
Finder/Explorer** and double-click it there.

Want live-reload while editing? Install the **Live Server** extension from
Kiro's Extensions panel, then right-click `index.html` → **Open with Live
Server**.

## 4. Push it to GitHub
**a.** Go to github.com → **New repository** → name it (e.g. `yaml-dojo`) →
keep it Public or Private, your call → **do NOT** tick "Add a README" or
".gitignore" → **Create repository**. Copy the URL it shows you, something
like `https://github.com/<you>/yaml-dojo.git`.

**b.** In Kiro, open a terminal in this folder (Terminal → New Terminal) and run:

- **Mac/Linux:**
  ```
  chmod +x push.sh
  ./push.sh https://github.com/<you>/yaml-dojo.git
  ```
- **Windows:**
  ```
  push.bat https://github.com/<you>/yaml-dojo.git
  ```

That one command initializes git, commits everything, and pushes it up.

## 5. Turn on GitHub Pages (get a permanent link)
On GitHub: **Settings → Pages → Source → Deploy from a branch** → pick
`main` and `/ (root)` → **Save**. After a minute or two, it's live at:

```
https://<you>.github.io/yaml-dojo/
```

Bookmark that — open it any time, from any device, to practice.

---

Need to add a resource that's missing? Either use the **✨ Generate with
Claude** button inside the tool (needs your own Anthropic API key, asked for
once per session), or just tell Claude in chat to add it and re-export the
file. See `README.md` for the full built-in resource list and the much
larger study checklist.
