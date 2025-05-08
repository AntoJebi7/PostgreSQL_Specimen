# MySQL Installation Guide for Windows

This guide will walk you through the process of installing MySQL on a Windows system.

## Prerequisites

Before you begin, make sure that your system meets the following requirements:
- A Windows operating system (Windows 10/8/7).
- Administrator privileges on the system.

## Steps to Install MySQL on Windows

### 1. Download MySQL Installer

1. Go to the official MySQL website: [https://dev.mysql.com/downloads/installer/](https://dev.mysql.com/downloads/installer/)
2. On the page, you will see two options:
   - **MySQL Installer (web-community)**: A smaller installer that downloads only the components you need.
   - **MySQL Installer (community)**: A larger installer that includes all the MySQL components.
   
   Choose the **MySQL Installer (web-community)** for a smaller download.

3. Click **Download**. You may be prompted to log in or create an account, but you can also choose to **No thanks, just start my download** to skip the login.

4. Save the installer file to a location on your computer (e.g., Downloads folder).

### 2. Run the Installer

1. Locate the downloaded `mysql-installer-web-community-x.x.x.x.msi` file (where `x.x.x.x` represents the version number) and double-click to run the installer.

2. The MySQL Installer will open. You will be presented with the following options:
   - **Developer Default**: Installs the MySQL Server, MySQL Workbench, MySQL Shell, and other MySQL tools.
   - **Server Only**: Installs only the MySQL Server.
   - **Client Only**: Installs only the client programs, such as MySQL Workbench.
   - **Full**: Installs all components of MySQL.
   - **Custom**: Allows you to select specific components to install.

   Select **Developer Default** for a typical installation (this includes the server, tools, and documentation) and click **Next**.

### 3. Check for Prerequisites

1. The installer will check if your system has all the prerequisites. If any prerequisites are missing (such as Visual C++ Redistributable), the installer will automatically prompt you to install them.

2. Follow the prompts to install any missing prerequisites.

### 4. Choose Setup Type

1. After the prerequisite check, you'll be asked to select the setup type:
   - **Typical**: Installs MySQL with default settings.
   - **Custom**: Allows you to select specific features to install.
   - **Complete**: Installs MySQL with all features.

2. Choose **Typical** and click **Next**.

### 5. Configure MySQL Server

1. **Configuration Type**: 
   - Select **Development Computer** for the default settings.
   
2. **Connection Method**:
   - Select **TCP/IP**.

3. **Port Number**:
   - The default MySQL port is **3306**. You can leave it as it is unless you need to change it.

4. **Root Password**:
   - Set a **root** password. This will be the administrator password for MySQL. Make sure to remember it!

5. **User Accounts** (Optional):
   - You can create additional user accounts, but this is optional. For now, you can skip this step.

6. **Windows Service**:
   - The installer will configure MySQL as a **Windows Service**. This means MySQL will start automatically when your computer starts.

7. Click **Next** to proceed.

### 6. Apply Configuration

1. The installer will apply the configuration and set up MySQL on your system.
2. Wait for the installation to complete. This may take a few minutes.

### 7. Complete the Installation

1. Once the installation is complete, the installer will show a confirmation screen. You can click **Finish** to complete the installation.

### 8. Verify MySQL Installation

To verify that MySQL is installed correctly, open **Command Prompt** (`cmd`) and type:

   ```bash
   mysql -u root -p
