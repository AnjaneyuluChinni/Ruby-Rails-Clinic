# Clinic Portal - Ruby on Rails

This project is a Ruby on Rails application for a clinic portal.

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
