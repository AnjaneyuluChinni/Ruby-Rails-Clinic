# Clinic Portal - Ruby on Rails

This project is a Ruby on Rails application for a clinic portal.

## Project Setup 

### 1. Prerequisites
- **Ruby** (version 3.2+ recommended)
- **Rails** (version 8+)
- **PostgreSQL** (for database)
- **Node.js** and **Yarn** (for JavaScript and assets, if needed)
- **Git**

### 2. Getting Started

#### a. Clone the Repository
```bash
git clone https://github.com/AnjaneyuluChinni/Ruby-Rails-Clinic.git
cd Ruby-Rails-Clinic/clinic_portal
```

#### b. Install Dependencies
```bash
bundle install
```
If you use Yarn for JS dependencies:
```bash
yarn install
```

#### c. Set Up Database
- Make sure PostgreSQL is running.
- Create and migrate the database:
```bash
rails db:create
rails db:migrate
```
- (Optional) Seed the database:
```bash
rails db:seed
```

#### d. Master Key & Credentials
- Ensure you have `config/master.key` in place. If missing, ask the project owner for it.
- This is required to decrypt `config/credentials.yml.enc`.

#### e. Run the Rails Server
```bash
rails server
```
- Visit [http://localhost:3000](http://localhost:3000) in your browser.

### 3. Running Tests
- To run all tests:
```bash
rails test
```
- System tests:
```bash
rails test:system
```

### 4. Useful Development Commands
- Start a Rails console:
  ```bash
  rails console
  ```
- Run a specific migration:
  ```bash
  rails db:migrate:up VERSION=xxxxxx
  ```
- Rollback last migration:
  ```bash
  rails db:rollback
  ```

### 5. Linting & Security (Optional)
- Run Rubocop:
  ```bash
  bundle exec rubocop
  ```
- Run Brakeman (security):
  ```bash
  bundle exec brakeman
  ```

  
Use these credentials to log in as different roles for testing/demo purposes:

- **Receptionist**
  - Email: `receptionist@gmail.com`
  - Password: `Rec3pt!on1st2024$`

- **Doctor**
  - Email: `doctor@gmail.com`
  - Password: `D0ct0r$ecure2024!`

---

This project is a Ruby on Rails application for a clinic portal.
