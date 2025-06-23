# HealthSync - Clinic Management System

A modern clinic management system built with Ruby on Rails, featuring patient management, role-based access control, and a responsive UI.

## Features

- 🏥 Patient Management
- 👥 Role-based Access (Doctor/Receptionist)
- 📊 Dashboard with Analytics
- 🔍 Patient Search
- 📱 Responsive Design

## Prerequisites

- Ruby 3.4.4
- Rails 8.0.2
- PostgreSQL
- Node.js & Yarn

## Local Development Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/clinic-portal.git
   cd clinic-portal
   ```

2. **Install dependencies**
   ```bash
   bundle install
   yarn install
   ```

3. **Setup database**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. **Start the server**
   ```bash
   rails server
   ```

5. **Visit http://localhost:3000**

## Test Users

- **Receptionist**
  - Email: receptionist@gmail.com
  - Password: Rec3pt!on1st2024$

- **Doctor**
  - Email: doctor@gmail.com
  - Password: D0ct0r$ecure2024!

## Deployment on Render

### 1. **Setup PostgreSQL Database**
- Go to Render Dashboard
- Create a new PostgreSQL database
- Note down the internal and external database URLs

### 2. **Configure Web Service**
- Connect your GitHub repository
- Choose Ruby as the environment
- Set build command:
  ```bash
  bundle install && bundle exec rails assets:precompile && bundle exec rails assets:clean && bundle exec rails db:migrate
  ```
- Set start command:
  ```bash
  bundle exec puma -C config/puma.rb
  ```

### 3. **Environment Variables**
Set the following in Render dashboard:
- `RAILS_MASTER_KEY`: Your master key from config/master.key
- `DATABASE_URL`: Your Render PostgreSQL URL
- `RAILS_ENV`: production
- `RAILS_HOST`: Your app's domain (e.g., your-app.onrender.com)

### 4. **Deploy**
- Commit and push your changes to GitHub
- Render will automatically deploy your application
- First deployment may take 5-10 minutes

### 5. **Post-Deployment**
- Run database migrations:
  ```bash
  rails db:migrate
  ```
- Seed the database (if needed):
  ```bash
  rails db:seed
  ```

## Troubleshooting

### Common Issues

1. **Database Connection**
   - Verify DATABASE_URL is correct
   - Check database migrations status

2. **Asset Compilation**
   - Run `rails assets:precompile` locally to check for errors
   - Verify all JavaScript and CSS files are properly included

3. **Role/Authentication Issues**
   - Clear browser cache and cookies
   - Re-login to refresh session
   - Verify user roles in database

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License.
