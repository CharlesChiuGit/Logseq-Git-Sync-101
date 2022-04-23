# Logseq-Git-Sync-101

## Description

This repo aims to help Logseq users to sync their data with Git and GitHub.

## Credits

Credits to @danieltomasz[^1], @Sawhney[^2], @Caps[^3], @Abulafia[^4] @qwxlea[^5] for the workflow build up. And credits to @danzu[^6] for the incredicable diagram!

FYI, those IDs are IDs in [Logseq Discord Server](https://discord.gg/bZ2jF9taUg).

[^1]: danieltomasz#5748
[^2]: Sawhney#7320
[^3]: Caps#0219
[^4]: Abulafia#3734
[^5]: qwxlea#3490
[^6]: danzu#6567

---

## Why use Git + GitHub to sync Logseq graph?

### Self Managed Sync Diagram

<p style="text-align:center;">
    <figure>
        <img src="./src/self-managed-sync.png" style="width:100%"/>
        <figcaption>Drawn by @danzu</figcaption>
    </figure>
</p>

From the above diagram, it's pretty obvious that **Git** is the most robust way to sync your graph. iCloud is slow and problematic, and [Syncthing](https://syncthing.net/downloads/) is not available on iOS/iPadOS.

However, Git is quite scary for non-programmers, so this doc is here to help!

---

## Prerequisite

1. [GitHub](https://github.com/) account.
2. [Git](https://git-scm.com/downloads), on your computers.
3. [Working Copy](https://workingcopyapp.com/), for iOS/iPadOS users.
4. [Termux](https://termux.com/), for Andriod users.

<details>
    <summary>What is Git?</summary>
    Git is a specific open-source version control system created by Linus Torvalds in 2005.
</details>

<details>
    <summary>What is GitHub?</summary>
    GitHub is a for-profit company that offers a cloud-based Git repository hosting service. Essentially, it makes it a lot easier for individuals and teams to use Git for version control and collaboration.
</details>

<details>
<summary>How does Git works?</summary>
<p style="text-align:center;">
<img src="https://miro.medium.com/max/1400/1*gPBljo_uRh-IBtHY2oB7ig.png" style="width:50%;"/>
</p>
<hr>
<p style="text-align:center;">
<img src="https://miro.medium.com/max/1400/1*2QHqhirz3VbOCjfEwFbVXA.png" style="width:50%;"/>
</p>
</details>

---

## Workflow

### Set up Git

This is like typing in the account/passward, so make sure you follow **ALL** the steps in [set-up-git](https://docs.github.com/en/get-started/quickstart/set-up-git).

### Create a private repo

This is like creating a folder in GitHub, follow [create-a-repo](https://docs.github.com/en/get-started/quickstart/create-a-repo) to create a **private** repo.

※ Noted: If you create a **public** repo, that means everyone on GitHub can what you put in there. You don't waht that, do you?

### Add .gitignore in your repo (Optional)

In your repo page > Add file > Create new file > Name your file: `.gitignore`.
Type those:

```.gitignore
logseq/bak/
logseq/.recycle
```

### Download this repo

Clike the green `Code` button and `Download ZIP`, then unzip it for later use.

### <img src="./src/Windows.svg" style="width:25px;"/> For Windows users

After Git is set and a private repo is created:

1. Go to your local drive (for example: `D:\`) and right-click on it.
2. You should see `Git Bash Here`, click it.
3. type `git clone git@github.com:{your-username}/{your-reponame}.git` and hit enter.
4. If it's your first time git clone something from GitHub, it will probably ask if you agree to authorized the connection, just type `Yes` and hit enter.
5. After it's done, you should see a new folder with your repo name.
6. Open the folder, there should have a hidden folder named `.git`.
7. Copy&paste the `post-commit` and `pre-commit` in `.git/hooks`.
8. Open Logseq and add the folder with `.git` as your new graph.
9. Open Logseq > Settings > Version control > Enable Git auto commit.
10. Type something and wait few minutes to see if what you typed has also appear in GitHub.
11. If nothiong goes wrong, you are a happy Logseq user!

### <img src="./src/Apple.svg" style="width:25px;"/> For MacOS users

After Git is set and a private repo is created:

1. Go to your local drive and right-click on it.
2. You should see `New Terminal at folder`, click it. If you don't see this option, check [this link](https://www.maketecheasier.com/launch-terminal-current-folder-mac/) to enable it.
3. type `git clone git@github.com:{your-username}/{your-reponame}.git` and hit enter.
4. If it's your first time git clone something from GitHub, it will probably ask if you agree to authorized the connection, just type `Yes` and hit enter.
5. After it's done, you should see a new folder with your repo name.
6. Open the folder, there should have a hidden folder named `.git`.
7. Copy&paste the `post-commit` and `pre-commit` in `.git/hooks`.
8. Open Logseq and add the folder with `.git` as your new graph.
9. Open Logseq > Settings > Version control > Enable Git auto commit.
10. Type something and wait few minutes to see if what you typed has also appear in GitHub.
11. If nothiong goes wrong, you are a happy Logseq user!

### <img src="./src/Apple.svg" style="width:25px;"/> For iOS/iPadOS users

1. Pay for the Pro version of Working Copy, it really cheap since you will never bother by iCloud crashing your Logseq anymore.
2. Open Working Copy > Seetings(⚙️) > Hosting Providers > Click `Test` > Sign-in to your GitHub account.
3. Open `Working Copy` > click `+` > Clone repository > Choose your repo.
4. When download is done, long-press on the repo > Share > Link Repository to Folder > My iPhone/iPad (I would suggest don't choose iCloud) > Logseq-icon folder > create a new sub-folder under the Logseq-icon one (I would suggest don't name the folder with the same name as your repo.) > click `Done`
5. Open `Logseq` and add new graph to that folder.
6. Open `ShortCuts` > Automation > Create Personal Automation:
   - On App Open:
     - `App` > choose `Logseq` > click `Next`
     - Search actions > `Pull Repository` - Repo: your Logseq repo
     - Turn off ask before running (or leave it on up to you)
   - On App Close:
     - `App` > choose `Logseq` > click `Next`
     - Search actions >
       - `Stage for Commit` - Path: `*`, Repo: your Logseq repo
       - `Commit Repository` - Repo: your Logseq repo, Message: `Auto-commit from iOS/iPadOS`
       - `Push Repository` - Repo: your Logseq repo
     - Turn off ask before running (or leave it on up to you)
7. Type something and wait few minutes to see if what you typed has also appear in GitHub.
8. If nothiong goes wrong, you are a happy Logseq user!

※ Noted: If you are a student, you can sign up [github student pack](https://education.github.com/pack) and apply for free Working Copy Pro.

### <img src="./src/android.svg" style="width:25px;"/> For Android users

Steps are provides by @Abulafia[^4], sorry that I don't know the exact steps of everything.

1. Set up Git in your `Termux`.
2. Open Termux, and type git clone git@github.com:{your-username}/{your-reponame}.git and hit enter.
3. Create a shortcut in the start screen of android, called it "pull-graph", and when pressed it runs the following shell script (stored in ~/.shortcuts)

   ```bash
   #!/usr/bin/bash
   source bin/source-ssh-agent
   cd {your repo location}
   git pull
   ```

   - ※ Noted: If you use password-free private keys for git you don't need the `ssh-agent` line. You can include it to avoid typing the private key passphrase each time.

4. Create another shortcut called "push-graph".

   ```bash
   #!/usr/bin/bash
   source bin/source-ssh-agent
   cd {your repo location}
   git add -A
   git commit -m "sync from android"
   git push
   ```

### <img src="./src/linux.svg" style="width:25px;"/> For Linux users

<details>
    <summary>Linux user click here</summary>
    If you are a Linux user, why are you still watching this repo? Shooo. 😎
</details>

---

## References

- [Working Copy on iOS](https://discord.com/channels/725182569297215569/766475028978991104/946787658405908560), by @danieltomasz[^1].
- [Steps to auto sync iOS + Windows](https://discord.com/channels/725182569297215569/924907384730689566/966343847934324776), by @Caps[^3].
- [Gitea - self hosted git server](https://discord.com/channels/725182569297215569/924907384730689566/963840487712780320), by @Sawhney[^2].
- [Self Managed Sync + Android setup](https://discord.com/channels/725182569297215569/966983361249816586), by @danzu[^5] and @Abulafia[^4].
- [git hooks settings](https://discord.com/channels/725182569297215569/960982172683100160)
- [What is github?](https://kinsta.com/knowledgebase/what-is-github/)
- [How does Git work?](https://medium.com/@sahoosunilkumar/how-does-git-works-5cc8444ea383)
