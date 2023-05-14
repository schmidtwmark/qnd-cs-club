---
marp: true
theme: gaia
class: invert
---

# QND Computer Science Club Day 9
Mark Schmidt

--- 

# Agenda

- Recap
- Cryptography Part II

---

# Recap

- Ciphers
- Secret Messages

---

# Cryptography Part II

- Passwords
- How do websites keep your password safe?

---

# Passwords

1. Enter username and password
2. Website checks if password is correct
3. Gives access or asks to try again

---

# Multiple Points of Failure

- Password list can be hacked
    - This has happened!
- Man in the middle attack
- Passwords shared across websites

---

# Improvements

- Never send password in the clear
- Never store passwords in plaintext

---

# Hashing!

- Hash function
    - Takes in some data
    - Returns a number
    - Cannot be reversed
    - **Deterministic**
- Hash the password, only compare hashes!

---

# Examples

- Add up all the letters in a word
  - `hello` -> ``
  - `schmidt` -> ``
- Use length of word
  - `hello` -> `5`
  - `schmidt` -> `7`

---

# Problems

- Hash collisions
  - Any passwords of the same length would match!
- Small changes in input -> small changes in output

---

# Better Hashes

- RSA
- SHA-256
    - Used by Bitcoin / Ethereum
    - [Play with online](https://emn178.github.io/online-tools/sha256.html)
- Very complex

--- 

# How do websites REALLY do it?

1. Enter username and password
2. Browser hashes the password
3. Website checks hashed password against stored hash
4. Gives access or asks to try again

---

# Coding

- Let's make a simple password checker!