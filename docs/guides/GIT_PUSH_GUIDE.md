# Step-by-Step Git Push Guide

This guide will show you exactly how to save your current project files and push them to an online repository (like GitHub, GitLab, or Bitbucket) using Git.

## Prerequisites
1. Ensure you have **Git** installed on your computer.
2. Ensure you have created a new, empty repository on your online platform (like GitHub). The website will give you a "Repository URL" (it looks like `https://github.com/your-username/your-repo-name.git`).

---

## The Step-by-Step Commands

Open your Command Prompt, PowerShell, or Git Bash, and navigate to your project folder (`c:\Users\LENOVO\Documents\antigravity\fervent-kepler`). Then, type the following commands one by one, pressing **Enter** after each one:

### 1. Initialize the Repository
**Command:** 
`git init`
**Explanation:** This creates a hidden folder that allows Git to start tracking the history of the files in your project.

### 2. Add Your Files
**Command:** 
`git add .`
**Explanation:** The period (`.`) tells Git to prepare *all* the files and folders in your project to be saved. This is called "staging".

### 3. Save Your Files (Commit)
**Command:** 
`git commit -m "Initial commit: Complete AES-128 masking RTL, testbenches, and Vivado scripts"`
**Explanation:** This officially saves the current state of your files into the Git history. The text inside the quotes is a message explaining what you saved. 

### 4. Create the Main Branch
**Command:** 
`git branch -M main`
**Explanation:** This ensures your primary timeline of code is named "main" (which is the modern standard), rather than the older "master" name.

### 5. Link to Your Online Repository
**Command:** 
`git remote add origin <PASTE_YOUR_REPOSITORY_URL_HERE>`
*Make sure to replace `<PASTE_YOUR_REPOSITORY_URL_HERE>` with your actual URL, for example: `git remote add origin https://github.com/ish-bhati/aes-masked-fpga.git`*
**Explanation:** This tells your local Git folder where the online repository lives on the internet so they can communicate.

### 6. Upload Your Files (Push)
**Command:** 
`git push -u origin main`
**Explanation:** This sends all your saved files and history up to the online repository. The `-u` links your local "main" branch to the online "main" branch so that next time, you can just type `git push`.
