# ONLINE_E-VOTING
The Online Voting System lets students vote online for roles like Class Representative or event leaders. Each student gets a unique ID to log in and cast their vote securely. The system makes elections simple, fast, and fair through any web browser.

## Overview
The **Online Voting System** is a web-based application that allows students to cast their votes online for elections such as **Class Representative (CR)** or for managing college events like **fests and workshops**.  
Each student is given a **unique ID** to log in and vote securely.  
Developed with **Java (JSP, Servlets)**, **MySQL**, and deployed on **GlassFish Server** using **NetBeans IDE**.  

---

## Features
- Secure **student login** with unique ID  
- Easy **vote casting** via browser  
- Automatic **vote counting & result generation**  
- **Admin panel** to manage users and candidates  
- Accessible from **any web browser**  

---

## Tech Stack
- **Frontend**: HTML, CSS, JavaScript  
- **Backend**: Java (JSP, Servlets, JDBC)  
- **Database**: MySQL  
- **Server**: GlassFish 4.1+  
- **IDE**: NetBeans  

---

## Requirements

**Software**
- Windows 10 / Linux  
- JDK 1.7+  
- NetBeans IDE  
- GlassFish Server (bundled with NetBeans)  
- MySQL Database  

**Hardware**
- Processor: Dual Core or higher  
- RAM: 4GB+  
- Disk: 50 GB free  

---

## Project Structure
OnlineVotingSystem/
│── src/ # Java source files (Servlets, DB connections)
│── web/ # JSP files, HTML, CSS, JS
│── database/ # SQL scripts for MySQL setup
│── build/ # Build artifacts (NetBeans)
│── README.md # Project documentation

---

---

## How to Run
1. **Clone this repo**
   ```bash
   git clone https://github.com/GeethikaYedla37/online-e-voting.git
2. Open in NetBeans IDE
   File → Open Project → Select OnlineVotingSystem
3. Setup Database
   Import SQL file from database/ into MySQL
   Update Dbconnection.java with your MySQL username & password
4. Deploy on GlassFish
   Right-click project → Run → Select GlassFish Server
5. Access in Browser
  ```bash
  http://localhost:8080/OnlineVotingSystem
  ```

**##Future Enhancements**
- Add biometric / OTP authentication
- Enable mobile-friendly voting
- Integrate blockchain for tamper-proof elections
