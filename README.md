# LLM4Yemen — Program Website

This repository hosts the public website for **LLM4Yemen**, a 6-week intensive AI skills program for Yemeni undergraduates.

🌐 **Live site:** https://YOUR-USERNAME.github.io/llm4yemen/

📧 **Contact:** llm4yemen@gmail.com

---

## What's in here

```
llm4yemen/
├── index.html              Homepage
├── program.html            Program overview
├── curriculum.html         6-week curriculum
├── team.html               Teaching team profiles
├── documents.html          Document download center
├── apply.html              Application instructions
├── faq.html                Frequently asked questions
├── style.css               Shared design system
├── site.js                 Language toggle and shared behavior
└── docs/
    ├── 03_Program_Brief.pdf
    ├── 03_Program_Brief.docx
    ├── 01_Capstone_Specification.pdf
    ├── 01_Capstone_Specification.docx
    ├── 02_Lab_Worksheet_Template.pdf
    ├── 02_Lab_Worksheet_Template.docx
    ├── 04_Application_Form_and_Rubric.pdf
    └── 04_Application_Form_and_Rubric.docx
```

## How to deploy on GitHub Pages

1. Create a new public repository (e.g., named `llm4yemen`).
2. Upload all the files in this folder to the repo, preserving the folder structure.
3. Go to **Settings → Pages**.
4. Under **Source**, select `Deploy from a branch`.
5. Pick `main` branch and `/ (root)` folder, then **Save**.
6. Wait 1–2 minutes. Your site will be live at `https://YOUR-USERNAME.github.io/llm4yemen/`.

## How to update content

All pages are plain HTML. Open the relevant `.html` file in any text editor, change the text, save, and push to the repo. GitHub Pages auto-redeploys within a minute.

The site is bilingual (Arabic + English) using a single-button language toggle in the top-right of every page. Each piece of content has both languages stored as `<span data-ar>...</span>` and `<span data-en>...</span>` — make sure to update both when editing.

## How to add a new document to the Document Center

1. Drop the new PDF/DOCX into the `docs/` folder.
2. Open `documents.html` and copy one of the existing `<div class="doc-card">` blocks.
3. Update the title, description, and the file paths in the buttons.
4. Commit and push.

## License

Content © 2026 LLM4Yemen Program. All rights reserved.
This brief is shareable; please do not modify the content without permission.
