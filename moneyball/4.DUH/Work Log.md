---
created: 2025-08-11T16:08
updated: 2025-08-11T16:16
---
```dataview
TABLE WITHOUT ID
    file.link AS "Note",
    dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Last Modified",
    dateformat(file.ctime, "yyyy-MM-dd") AS "Created"
FROM ""
WHERE file.mtime >= date(today) - dur(7 days)  // Optional: Filter by timeframe
SORT file.mtime DESC
LIMIT 25
```


# Fix for last edit
```dataview
TABLE WITHOUT ID
    file.link AS "Note",
    dateformat(file.mtime, "yyyy-MM-dd HH:mm") AS "Modified",
    "[[Editor_Tracker]]" AS "Check History"
FROM ""
SORT file.mtime DESC
LIMIT 25
```

