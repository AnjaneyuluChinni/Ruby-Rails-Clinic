# Clinic Portal - Ruby on Rails

This project is a Ruby on Rails application for a clinic portal.

## Project Setup & Development

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

## Project Setup & Development

## Deployment
See the section below for deploying to Render.

---

## Deployment to Render

Follow these steps to deploy this application to [Render](https://render.com):

### 1. Prerequisites
- A [GitHub](https://github.com/) account with this repository pushed to it.
- A [Render](https://render.com/) account.
- Your Rails master key (`config/master.key`).

### 2. Project Setup
- The project uses **PostgreSQL** as the database and **Puma** as the web server.
- The `render.yaml` file in the project root defines the Render services.
- The `config/database.yml` is set up to use the `DATABASE_URL` provided by Render in production.

### 3. Deployment Steps

#### a. Push Your Code to GitHub
Make sure your latest code (including `render.yaml` and any config changes) is committed and pushed:

```bash
git add clinic_portal/render.yaml clinic_portal/config/database.yml
# Add any other files you changed
git commit -m "Configure for Render deployment"
git push origin master
```

#### b. Create a New Blueprint on Render
1. Go to your [Render Dashboard](https://dashboard.render.com/).
2. Click **New** > **Blueprint**.
3. Connect your GitHub repository.
4. Render will detect the `render.yaml` and set up the web service and database automatically.
5. Name your service (e.g., `clinic-portal`).

#### c. Set Environment Variables
- Go to your web service's **Environment** settings in Render.
- Add a new variable:
  - **Key:** `RAILS_MASTER_KEY`
  - **Value:** (Paste the contents of your `config/master.key` file)

#### d. Deploy
- Click **Apply** to deploy.
- Render will build and deploy your app. You can watch the logs for progress.

#### e. Find Your Deployed URL
- After deployment, your app will be live at a URL like:
  - `https://clinic-portal.onrender.com`
- The exact URL is shown at the top of your web service page in the Render dashboard.

### 4. Troubleshooting
- Check the **Deploy Logs** in Render for errors.
- Database connection issues? Ensure your `config/database.yml` production section uses:
  ```yaml
  production:
    <<: *default
    url: <%= ENV["DATABASE_URL"] %>
  ```
- Make sure your `RAILS_MASTER_KEY` is set in the Render environment variables.

### 5. Custom Domain (Optional)
- You can add a custom domain in the Render dashboard under your service's settings.

---

**Need help?**
- See the [Render Rails deployment guide](https://render.com/docs/deploy-rails) for more details.
- Or ask for help in the Render or Rails communities!
