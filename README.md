# ⚡ Bash Laravel Optimizer

![Laravel Optimizer Banner](https://raw.githubusercontent.com/Iqbolshoh/bash-laravel-optimizer/main/banner.png)

A powerful and interactive **Bash-based Laravel optimization tool** 🧠 designed to streamline your development workflow with cool CLI animations, Laravel-specific commands, and environment setup utilities.

> 💡 Perfect for Laravel developers who want to speed up setup and deployment with a stylish, automated tool!

---

## 📌 Overview

This tool automates routine tasks for Laravel development including:

* Optimization
* Composer dependencies
* Frontend builds
* Database migrations
* Development server startup
  All done with animations 🎉 and fancy loaders 🔄 to make your CLI experience fun and smooth!

---

## 🧩 Features

✅ **Animated CLI** – Spinners, arrows, progress bars, and effects for better UX 🎉
✅ **Laravel Smart Detection** – Auto-detects your Laravel version and adapts accordingly 🧠
✅ **Composer Optimization** – Boosts performance with caching and cleanup ⚙️
✅ **Frontend Build** – Automates `npm install` & `npm run build` 💅
✅ **Database Handling** – Migrates & seeds DB without hassle 💾
✅ **All-in-One Setup** – Just run and code! 🤯

---

## 🚀 How to Use

```bash
git clone https://github.com/Iqbolshoh/bash-laravel-optimizer.git
cd bash-laravel-optimizer
chmod +x optimize.sh
./optimize.sh
```

---

## 🔧 Function Breakdown

Here are the main functions that power the tool:

### 🎨 Visual Functions

| Function              | Description                                       |
| --------------------- | ------------------------------------------------- |
| `print_header`        | Displays the tool banner and welcome message      |
| `print_message`       | Prints styled messages with consistent formatting |
| `update_progress`     | Shows a loading bar based on task progress        |
| `spinner`             | Displays a rotating spinner animation             |
| `expanding_arrow`     | Shows an animated arrow for in-progress steps     |
| `bouncing_ball`       | A bouncing ball effect to simulate loading        |
| `checkmark_animation` | Prints a success checkmark ✅                      |
| `percentage_loader`   | Shows loading progress by percent                 |
| `timed_progress_bar`  | Time-based progress animation for tasks           |

### 🔍 Core Logic

| Function                   | Description                                                      |
| -------------------------- | ---------------------------------------------------------------- |
| `command_exists`           | Checks if a shell command is installed                           |
| `validate_requirements`    | Ensures required tools like PHP, Composer, and npm are installed |
| `detect_laravel_version`   | Detects Laravel version from `composer.json`                     |
| `optimize_laravel`         | Runs Laravel commands like `optimize`, `config:cache`, etc.      |
| `optimize_composer`        | Cleans up Composer, dumps autoload, caches dependencies          |
| `build_frontend`           | Installs npm packages and builds the frontend                    |
| `handle_database`          | Handles DB migration and seeding automatically                   |
| `start_development_server` | Boots up `php artisan serve` on port 8000                        |
| `show_execution_time`      | Displays total execution time of the script                      |

---

## 🧪 Example Output

```bash
🚀 Optimizing your Laravel project...
📦 Running Composer optimization...
🎨 Building frontend...
🛢️ Migrating database...
✅ Ready! Visit http://127.0.0.1:8000
```

## 🖥 Technologies Used
![Bash](https://img.shields.io/badge/Bash-%234EAA25.svg?style=for-the-badge&logo=gnubash&logoColor=white)

## 📜 License
This project is open-source and available under the **MIT License**.

## 🤝 Contributing  
🎯 Contributions are welcome! If you have suggestions or want to enhance the project, feel free to fork the repository and submit a pull request.

## 📬 Connect with Me  
💬 I love meeting new people and discussing tech, business, and creative ideas. Let’s connect! You can reach me on these platforms:

<div align="center">
  <table>
    <tr>
      <td>
        <a href="https://iqbolshoh.uz" target="_blank">
          <img src="https://img.icons8.com/color/48/domain.png" 
               height="40" width="40" alt="Website" title="Website" />
        </a>
      </td>
      <td>
        <a href="mailto:iilhomjonov777@gmail.com" target="_blank">
          <img src="https://github.com/gayanvoice/github-active-users-monitor/blob/master/public/images/icons/gmail.svg"
               height="40" width="40" alt="Email" title="Email" />
        </a>
      </td>
      <td>
        <a href="https://github.com/iqbolshoh" target="_blank">
          <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/github.svg"
               height="40" width="40" alt="GitHub" title="GitHub" />
        </a>
      </td>
      <td>
        <a href="https://www.linkedin.com/in/iqbolshoh/" target="_blank">
          <img src="https://github.com/gayanvoice/github-active-users-monitor/blob/master/public/images/icons/linkedin.svg"
               height="40" width="40" alt="LinkedIn" title="LinkedIn" />
        </a>
      </td>
      <td>
        <a href="https://t.me/iqbolshoh_777" target="_blank">
          <img src="https://github.com/gayanvoice/github-active-users-monitor/blob/master/public/images/icons/telegram.svg"
               height="40" width="40" alt="Telegram" title="Telegram" />
        </a>
      </td>
      <td>
        <a href="https://wa.me/998997799333" target="_blank">
          <img src="https://github.com/gayanvoice/github-active-users-monitor/blob/master/public/images/icons/whatsapp.svg"
               height="40" width="40" alt="WhatsApp" title="WhatsApp" />
        </a>
      </td>
      <td>
        <a href="https://instagram.com/iqbolshoh_777" target="_blank">
          <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg"
               height="40" width="40" alt="Instagram" title="Instagram" />
        </a>
      </td>
      <td>
        <a href="https://x.com/iqbolshoh_777" target="_blank">
          <img src="https://img.shields.io/badge/X-000000?style=for-the-badge&logo=x&logoColor=white"
               height="40" width="40" alt="X" title="X (Twitter)" />
        </a>
      </td>
      <td>
        <a href="https://www.youtube.com/@Iqbolshoh_777" target="_blank">
          <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/youtube.svg"
               height="40" width="40" alt="YouTube" title="YouTube" />
        </a>
      </td>
    </tr>
  </table>
</div>
