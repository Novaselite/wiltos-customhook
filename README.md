# wOS Customhooks (by Narazuka / Novaselite)
```markdown
# ⚔️ wOS Customhooks (by Narazuka / Novaselite)

Custom hooks and fixes for **[wiltOS Advanced Lightsaber Combat](https://wiltostech.com/)**.  
This addon enhances the wOS Lightsaber system with bugfixes, custom HUD, effects, and entities.  

---

## 📦 Requirements
- [wOS Advanced Lightsaber Combat](https://wiltostech.com/) *(paid addon, required)*  
- Garry’s Mod server with Lua enabled  

---

## ✨ Features
- 🛠️ **Groundslam Fix**  
  - `lua/effects/force_groundslam.lua`  
  - Enables and fixes the missing Groundslam effect (requires original Groundslam Lua).  

- ⚡ **Lightning Explosion Effect**  
  - `lua/effects/rb655_force_lighting_explosion.lua`  
  - Adds or fixes the RB655 force lightning explosion effect.  

- 🎨 **Custom Level HUD**  
  - `lua/autorun/client/client.lua`  
  - Blocks the default wOS Level HUD and replaces it with a custom design.  
  - Includes custom material (`materials/lvl_hud.png`) and custom fonts.  

- 🌀 **Entity Fix (Meteor)**  
  - `lua/entities/star_metor/`  
  - Fixes meteor force entity (shared + client init).  

- 🦘 **Leap Adjustments**  
  - `lua/autorun/sh_customhooks.lua`  
  - Contains fixes and changes for leap-related mechanics.  

- 🔤 **Custom Fonts**  
  - `lua/fonts/Jet Set.ttf`  
  - `lua/fonts/lato-regular.ttf`  
  - `lua/fonts/SF Distant Galaxy Symbols.ttf`  
  - Used for HUD drawing and custom UI elements.  

---

## 📂 File Overview
---

## ⚙️ Installation
1. Download or clone this repository  
2. Place the folder into your server’s `garrysmod/addons/` directory  
```

garrysmod/addons/wos-customhooks/

```
3. Restart your server ✅  

---

## 📝 Notes
- Groundslam fix only works if you already own the original Groundslam Lua.  
- Fonts are included and loaded automatically for the custom HUD.  
- Some fixes (e.g. Leap) are experimental – feedback is welcome.  
- This addon **does not work standalone** – you must own **wiltOS Advanced Lightsaber Combat**.  

---

## 👑 Credits
- **wiltOS Technologies** – Advanced Lightsaber Combat (by *King David™*)  
- **Customhooks Addon** – by *Narazuka / Novaselite*  

---

## 📄 License
Free to use and modify for private servers.  
Do **not** reupload or resell.
```
