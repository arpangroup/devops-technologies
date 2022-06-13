GITHUB_REPO=https://github.com/arpangroup/pureeats-laravel-2022
GITHUB_TOKEN=HEQYITG2G7XZIWPRX7AXKDCUUKXW
            
cd ~

# Create a folder under the drive root
mkdir actions-runner; cd actions-runner

# Download the latest runner package
curl -o actions-runner-linux-x64-2.292.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.292.0/actions-runner-linux-x64-2.292.0.tar.gz

# Optional: Validate the hash
echo "14839ba9f3da01abdd51d1eae0eb53397736473542a8fae4b7618d05a5af7bb5  actions-runner-linux-x64-2.292.0.tar.gz" | shasum -a 256 -c

# Extract the installer
tar xzf ./actions-runner-linux-x64-2.292.0.tar.gz

# Configure
# ===========================
# Create the runner and start the configuration experience
./config.sh --url https://github.com/arpangroup/pureeats-laravel-2022 --token AHEQYITHHYJZQPVUH4PIMPDCUULK2


# Run it!
./run.sh


sudo ./svc.sh install
sudo ./svc.sh start











