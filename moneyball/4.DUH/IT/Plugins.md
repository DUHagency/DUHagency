---
power: 
moderator: 
reference: 
tags:
  - priority
  - it
time created: Monday, May 19th 2025, 2:11:02 am
last update: Friday, August 8th 2025, 3:43:28 pm
created: 2025-05-18T22:11
updated: 2025-08-12T18:15
---
```table-of-contents
```
# Templater
[templater tutorial](https://silentvoid13.github.io/Templater/)

# Community sync
## calendar

## kanban
kanban is a file, not a reader. No ability to receive anything.  may need to modify java of plugin "kanban"
[[DUH IT Documentation]]

# Ensuring stability
## **1. Sync Settings Are Not Enabled Properly**

- By default, Obsidian Sync does **not** automatically sync community plugins or their settings. You must manually enable these options in the Sync settings for **each device**:
    
    - **Active community plugin list**: Toggle this to sync which plugins are enabled/disabled.
        
    - **Installed community plugin list**: Toggle this to sync the plugins themselves.
        
    - **Community plugin settings**: Ensures plugin configurations (e.g., `data.json` files) are synced 34.
        
- If these options are off on any device, plugins may appear missing or reset to defaults.
    

---

## **2. Obsidian Needs a Restart After Syncing**

- Plugin settings (e.g., `data.json`) are **not loaded dynamically** while Obsidian is running. Even if files sync correctly, changes won’t take effect until you **fully quit and restart Obsidian** on all devices 48.
    
- **Common mistake**: Users assume sync failed because settings don’t appear immediately, leading them to manually reconfigure plugins. This overwrites the synced settings and causes conflicts 4.
    

---

## **3. Race Conditions or Sync Order Issues**

- If you enable sync on a new device **after** modifying plugins on another, the new device might upload its default (empty) settings first, overwriting the remote vault. This can delete plugin configurations or disable plugins 12.
    
- **Solution**:
    
    1. Ensure the primary device (with correct settings) is fully synced first.
        
    2. On the new device, enable sync options **before** opening the vault, then wait for a full sync before making changes.
        

---


## **4. Plugin-Specific Compatibility Issues**

- Some plugins (e.g., QuickAdd, Tasks) have reported sync conflicts where settings are lost or plugins are disabled during sync. This may stem from how the plugin stores data or handles file locks 47.
    
- **Workaround**:
    
    - Backup plugin settings (e.g., `.obsidian/plugins/plugin-name/data.json`) before syncing.
        
    - Test with simpler plugins to isolate the issue.
        

---

## **5. Sync Logs and Troubleshooting Steps**

- Check the **Sync Log** (Settings > Sync > Status) to confirm if plugin files (e.g., `community-plugins.json`, `data.json`) are being uploaded/downloaded 5.
    
- **Steps to fix**:
    
    1. Toggle sync settings off/on and restart Obsidian.
        
    2. Manually trigger a sync and wait for "Fully Synced" status.
        
    3. Verify the `.obsidian` folder structure matches across devices 8.
# Formatting
## **1. Sync Settings Are Not Enabled Properly**

- By default, Obsidian Sync does **not** automatically sync community plugins or their settings. You must manually enable these options in the Sync settings for **each device**:
    
    - **Active community plugin list**: Toggle this to sync which plugins are enabled/disabled.
        
    - **Installed community plugin list**: Toggle this to sync the plugins themselves.
        
    - **Community plugin settings**: Ensures plugin configurations (e.g., `data.json` files) are synced 34.
        
- If these options are off on any device, plugins may appear missing or reset to defaults.
    

---

## **2. Obsidian Needs a Restart After Syncing**

- Plugin settings (e.g., `data.json`) are **not loaded dynamically** while Obsidian is running. Even if files sync correctly, changes won’t take effect until you **fully quit and restart Obsidian** on all devices 48.
    
- **Common mistake**: Users assume sync failed because settings don’t appear immediately, leading them to manually reconfigure plugins. This overwrites the synced settings and causes conflicts 4.
    

---

### **3. Race Conditions or Sync Order Issues**

- If you enable sync on a new device **after** modifying plugins on another, the new device might upload its default (empty) settings first, overwriting the remote vault. This can delete plugin configurations or disable plugins 12.
    
- **Solution**:
    
    1. Ensure the primary device (with correct settings) is fully synced first.
        
    2. On the new device, enable sync options **before** opening the vault, then wait for a full sync before making changes.
        

---

### **4. Plugin-Specific Compatibility Issues**

- Some plugins (e.g., QuickAdd, Tasks) have reported sync conflicts where settings are lost or plugins are disabled during sync. This may stem from how the plugin stores data or handles file locks 47.
    
- **Workaround**:
    
    - Backup plugin settings (e.g., `.obsidian/plugins/plugin-name/data.json`) before syncing.
        
    - Test with simpler plugins to isolate the issue.
        

---

### **5. Sync Logs and Troubleshooting Steps**

- Check the **Sync Log** (Settings > Sync > Status) to confirm if plugin files (e.g., `community-plugins.json`, `data.json`) are being uploaded/downloaded 5.
    
- **Steps to fix**:
    
    1. Toggle sync settings off/on and restart Obsidian.
        
    2. Manually trigger a sync and wait for "Fully Synced" status.
        
    3. Verify the `.obsidian` folder structure matches across devices 8.
        

---

### **Alternative Sync Methods**

If issues persist, consider:

- **iCloud/Git/Syncthing**: These may handle plugin files more reliably for some users, though they lack Obsidian Sync’s integration 9.
    
- **Manual backups**: Periodically copy the `.obsidian` folder to avoid data loss 5.
# Google Calendar
# Markdown
# Sql

# Ai
#ryan
## **1. AI-Powered Note Organization & Auto-Filing**

### **A. Obsidian Plugins with AI Features**

1. **Smart Connections** ([GitHub](https://github.com/marcusolsson/obsidian-smart-connections))
    
    - Uses embeddings (like OpenAI) to suggest related notes and improve linking.
        
    - Helps in discovering where a note should be filed based on semantic similarity.
        
2. **Text Generator** ([GitHub](https://github.com/nhaouari/obsidian-textgenerator-plugin))
    
    - Integrates with OpenAI to generate content, summaries, and even suggest better note structures.
        
    - Can help in auto-filing by analyzing note content.
        
3. **Templater** ([GitHub](https://github.com/SilentVoid13/Templater)) (Not AI, but powerful)
    
    - Allows dynamic template generation with metadata, which can be combined with AI tools.
        
4. **Linter** ([GitHub](https://github.com/platers/obsidian-linter))
    
    - Helps enforce consistent structure in notes, making AI classification easier.
        
5. **QuickAdd** ([GitHub](https://github.com/chhoumann/quickadd))
    
    - Can automate note creation and filing based on rules (can be combined with AI).
        

---

### **B. External AI Tools for Auto-Filing**

1. **Mem.ai** ([Website](https://mem.ai/))
    - AI-powered knowledge management that auto-tags and organizes notes.
    - Can be used alongside Obsidian (export notes periodically).
2. **GPT-4 (OpenAI API) + Custom Scripts**
    - Write a Python script to:
        - Read new notes.
        - Ask GPT-4 to suggest a folder/category.
        - Move files automatically (using Obsidian’s filesystem).
## **2. AI-Generated Templates**
1. **Obsidian + ChatGPT/Custom GPTs**
    - Use OpenAI’s API to generate templates dynamically.
    - Example:
        python
4
2. - import openai
        response = openai.ChatCompletion.create(
            model="gpt-4",
            messages=[{"role": "user", "content": "Generate an Obsidian template for meeting notes with YAML frontmatter."}]
        )
        print(response.choices[0].message.content)
        
    - Save output as a template in `Templates/`.
        
3. **NoteCraft (AI-Powered Note-Taking)** ([Website](https://notecraft.ai/))
    
    - Helps generate structured notes that can be imported into Obsidian.
        

---

## **3. AI-Powered Indexing & Search**

1. **Obsidian Omnisearch** ([GitHub](https://github.com/scambier/obsidian-omnisearch))
    
    - Fast, fuzzy search that can help find misplaced notes.
        
2. **Haystack (Deepset.ai)** ([Website](https://haystack.deepset.ai/))
    
    - Open-source NLP framework to index and retrieve notes intelligently.
        
3. **Personal AI Knowledge Assistants**
    
    - **Khoj** ([GitHub](https://github.com/khoj-ai/khoj)) – Self-hosted AI for semantic search in notes.
        
    - **Rewind.ai** ([Website](https://rewind.ai/)) – Records and indexes everything (Mac-only).
        

---

## **4. Automated Folder Structuring**

1. **Python Script + AI Classifier**
    
    - Use a script to:
        
        - Scan new notes.
            
        - Send content to GPT-4 or a local model (like Llama 3) for classification.
            
        - Move files to `Projects/`, `References/`, `Journal/`, etc.
            
    - Example:
        
        python
        

2. - import shutil
        import openai
        
        def classify_note(note_content):
            response = openai.ChatCompletion.create(
                model="gpt-4",
                messages=[{"role": "user", "content": f"Classify this note into one of: Projects, References, Journal. Note: {note_content}"}]
            )
            return response.choices[0].message.content.strip()
        
        note_path = "Inbox/NewNote.md"
        with open(note_path, 'r') as file:
            content = file.read()
        category = classify_note(content)
        shutil.move(note_path, f"{category}/NewNote.md")
        
3. **Logseq + Obsidian Sync**
    
    - Logseq has strong outlining and AI-assisted structuring (can export to Obsidian).
        

---

## **5. Self-Hosted AI Options**

1. **LlamaIndex + Local LLM (Llama 3, Mistral)**
    
    - Index your vault locally for semantic search and auto-filing.
        
    - Example: [PrivateGPT](https://github.com/imartinez/privateGPT).
        
2. **Obsidian + Local Embeddings (Sentence Transformers)**
    
    - Use `all-MiniLM-L6-v2` to cluster notes into folders.
        

---

## **Recommended Workflow**

1. **Incoming Notes** → Save in `Inbox/`.
    
2. **AI Script** → Runs periodically, classifies, and moves notes.
    
3. **Smart Connections** → Helps with linking and discovery.
    
4. **Templater** → Ensures consistent structure.

|Plugin Name|Main Features|Integration/Setup|Cost|Notes|
|---|---|---|---|---|
|**AI Integration Hub**|Direct AI content generation in notes (e.g., Google Gemini), prompt selection, API/model choice|API key setup for supported models|Free|Flexible, supports multiple AI providers[4](https://obsidian.md/plugins)[6](https://www.obsidianstats.com/posts/2025-02-24-weekly-plugin-updates).|
|**Obsidian AI Knowledge Hub 2025**|Automated note generation, knowledge analytics, task automation, summarization, cross-platform|No premium required, quick setup|Free|Connects with Zotero, Notion, Google Drive; productivity analytics[7](https://github.com/Obsidian-AI-Knowledge-Hub-2025).|
|**Obsidian AI Editor**|AI-powered text processing, creative prompts, summarization, custom commands|Requires OpenAI API key|Free (API usage billed separately)|Highly configurable, integrates LLMs into workflow[8](https://github.com/buszk/obsidian-ai-editor).|
|**Spaced Repetition AI**|AI-powered flashcards for learning and memory|Plugin install, no extra setup needed|Free|Enhances study workflows with AI-generated cards[5](https://www.reddit.com/r/ObsidianMD/comments/1j7hm2t/obsidian_plugin_stats_2025_week_10/).|
|**hello nemesis**|AI-driven critical feedback and debate on note content (uses OpenAI)|Requires OpenAI API key|Free (API usage billed separately)|Analyzes logic, suggests counterpoints, deepens reflection[6](https://www.obsidianstats.com/posts/2025-02-24-weekly-plugin-updates).|