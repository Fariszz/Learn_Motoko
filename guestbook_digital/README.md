# 📘 `guestbook_digital` – Blockchain-Based Digital Guestbook

Welcome to the **guestbook\_digital** project!
This is a blockchain-based digital guestbook application built on the **Internet Computer**, where users can write their name and a message that will be stored permanently on-chain.

## 🎯 Project Description

This application is developed using the **Motoko** language and runs on the Internet Computer platform.
Its purpose is to learn the basics of **actors** in Motoko, how to store data in actor variables, and how to use **arrays** and **records or types** effectively.

### ✨ Key Features

* ✅ `addEntry(name: Text, message: Text)`
  Adds a new guestbook entry with the provided name and message.

* ✅ `getEntries() : [Person]`
  Returns all guestbook entries that have been added.

### 🧱 Data Structure

```motoko
type Person = {
  name: Text;
  message: Text;  
};
```

All entries are stored in an array within the Motoko actor.

---

## 🚀 Running the Project Locally

### 1. Navigate to the project directory

```bash
cd guestbook_digital/
```

### 2. Start the local Internet Computer environment

```bash
dfx start --background
```

### 3. Deploy the canister locally

```bash
dfx deploy
```

### 4. Interact with the canister via terminal

```bash
# Add a new guestbook entry
dfx canister call guestbook_digital addEntry '("Your Name", "Your Message")'

# View all guestbook entries
dfx canister call guestbook_digital getEntries
```

---

## 📚 Learning Objectives

By building this project, you will learn:

* ✅ The basic structure of **actors** in Motoko
* ✅ How to store data in actor variables
* ✅ How to work with **arrays** and **records** in Motoko

---

## 🔗 Relevant Documentation

* [Internet Computer Quick Start](https://internetcomputer.org/docs/current/developer-docs/setup/deploy-locally)
* [Motoko Language Guide](https://internetcomputer.org/docs/current/motoko/main/motoko)
* [Motoko Language Manual (Reference)](https://internetcomputer.org/docs/current/motoko/main/language-manual)

---

💡 *Note: This project does not use a frontend. All interaction is done via the command-line interface (CLI) using DFX.*

---