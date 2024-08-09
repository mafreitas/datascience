
# DataScience Binder

### If using Windows Install WSL2 (Windows Subsystem for Linux)

### Install WSL2
   - Follow the instructions on [Microsoft's WSL installation page](https://learn.microsoft.com/en-us/windows/wsl/install) to ensure you are installing the correct version for your version of Windows.
   - You need to be on at least Windows 10, so update accordingly if necessary.
   - Be sure to set the default version to WSL2.
   - Restart your computer to complete the installation.
   - Search for "Ubuntu" in the Microsoft Store.
   - Select the version titled "Ubuntu" (not any other versions) and hit install. It's free.
   - Use the search bar in your taskbar to find and open Ubuntu. You can also add a shortcut to your desktop if you prefer.
   - Upon first launch, it will ask you to create a username and password for Linux. Create credentials you can remember.

## Install Docker
### Option 1 Install Docker Desktop (Win/Mac/Linux)
1. **Follow Installation Instructions:**
    - Follow the instructions on[Docker Destop](https://www.docker.com/products/docker-desktop/)
    - Type `docker run hello-world` in the terminal. You should see a confirmation message if Docker is installed properly.
### Option 2 for Windows inside WSL2 
1. **Follow Installation Instructions:**
   - Follow the instructions on [Nick Janetakis' blog](https://nickjanetakis.com/blog/install-docker-in-wsl-2-without-docker-desktop), starting from step 2 if you do not have Docker Desktop installed. If you do, start from the beginning.
   - Complete each line of code separately, including the optional step, and choose version 1 when prompted.
2. **Update Profile:**
   - Ensure you update the .profile to autostart Docker.
   - Shutdown and restart WSL to ensure Docker works properly.
3. **Verify Installation:**
   - Type `docker run hello-world` in the terminal. You should see a confirmation message if Docker is installed properly.

## Install Miniconda3 (Win/Mac/Linux)
1. **Download Miniconda:**
   - Google "Miniconda" and open the first link (Miniconda – conda documentation).
   - Scroll down to Latest Miniconda Installer Links.
   - Right-click on the 64-bit version of Miniconda3 for your platform and copy the link.
2. **Install Miniconda:**
   - Open a terminal (windows open terminal in WSL Ubuntu)
   - In type `wget [link]` (replace `[link]` with the copied link) and hit enter.
   - Type `sh M__` and hit tab to autocomplete the Miniconda version, then hit enter.
   - Press space until prompted with a question, type `yes` and hit enter.
   - Close and reopen terminal once Miniconda finishes installing.

## Install repo2docker
1. **Create Conda Environment:**
   - Type `conda create -n [environment_name]` and hit enter (replace `[environment_name]` with your desired name).
   - Type `y` when prompted.
   - Activate the environment by typing `conda activate [environment_name]`.
2. **Ensure Conda Environment:**
   - Make sure you are in your new conda environment to avoid changes to the system.
3. **Install repo2docker:**
   - Type `conda install python` followed by `pip install jupyter-repo2docker`.
   - If there are issues, follow the alternative command provided by the terminal.

## Clone Repository and Setup
1. **Create New Directory:**
   - Type `mkdir [directory_name]` to create a new directory.
   - Type `cd [directory_name]` to enter the new directory.
2. **Clone GitHub Repo:**
   - Go to GitHub and copy the link for the repository you want to clone.
   - Type `git clone [repo_link]` (replace `[repo_link]` with the GitHub link) and hit enter.
   - Type `cd [repo_name]` to enter the cloned repo directory.

## Edit Binder (optional)

1. **Edit build.sh and run.sh:**
   - Copy the scripts (datascience) found in the main branch.
   - Edit the Environment file as necessary
   - In terminal type `nano build.sh` or `nano run.sh` to create and edit the files.
   - Save the files with `Ctrl + O` and exit with `Ctrl + X`.
   - Once done, type `bash build.sh` again. Building the binder for the first time will take a while, so let it run until completion.
   - Once done, type `bash run.sh` again. It will provide two links to access your Jupyter notebook in a web browser.

## Visual Studio Code (Optional)
### Install Visual Studio Code
1. **Download and Install:**
   - Download Visual Studio Code from the [official website](https://code.visualstudio.com/).
   - Follow the installation instructions to install it onto your desktop.
2. **Log into GitHub:**
   - Open Visual Studio Code.
   - Enable settings sync by clicking the gear icon in the bottom left corner, then click "Turn on Settings Sync."
   - Sign in using your GitHub credentials.
3. **Using Visual Studio Code:**
   - Open Visual Studio Code.
   - Install Remote Extensions
   - Click the blue button in the bottom left-hand corner to open a remote window.
   - Connect with WSL or WSL with Distro, choosing Ubuntu if prompted.
   - Click "Open Folder," select the directory you named earlier, then select the GitHub repo you cloned, and hit OK.
   - Trust the authors if prompted.
   - In the top bar, open a new terminal from the terminal pull-down menu.
   - Enter your Linux password if prompted.
   - Follow instructions above to use conda and run repo2docker
 