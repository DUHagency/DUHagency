---
power: 
moderator: 
reference: 
tags: 
time created: Wednesday, August 6th 2025, 4:11:52 pm
last update: Thursday, August 7th 2025, 9:27:03 pm
---
```
// Paste this in a Templater script or console
app.vault.modify(await app.vault.getAbstractFileByPath("Error Log.md"), 
  new Date().toISOString() + ": " + lastError + "\n\n" + 
  (await app.vault.read(await app.vault.getAbstractFileByPath("Error Log.md")));
```
