#!/bin/bash

#Constants
GITHUB_TOKEN="$GITHUB_TOKEN"
API_VERSION="2022-11-28"

# Function to display usage information
usage() {
	echo "Usage: $0 <repository_name> "
	exit 1
}

# Check if the required arguments are provided
if [ $# -ne 1 ]; then
	usage
fi

# Extract arguments
repo_name="$1"

initialize_next_app() {
	read -p "Do you want to create next app? [y/n] " is_next_app
	if [ $is_next_app = "y" ]; then
		echo "Creating next app... "
		npx create-next-app@latest
	fi
}

initialize_shadcn() {
	read -p "Do you want to add shadcn-ui? [y/n] " is_include_shadcn
	if [ $is_include_shadcn = "y" ]; then
		echo "Adding shadcn ui..."
		npx shadcn-ui@latest init
	fi

}

# Function to create a GitHub repository
create_github_repo() {
	read -p "Do you wanna create github repository? [y/n] " should_create_repository
	if [ $should_create_repository = "y" ]; then

		echo "Creating repo $repo_name..."

		result=$(
			http POST https://api.github.com/user/repos \
				"Accept: application/vnd.github.v3+json" \
				"Authorization: Bearer $GITHUB_TOKEN" \
				"X-GitHub-Api-Version: $API_VERSION" \
				name="$repo_name" description="" homepage="https://github.com" private:=false is_template:=false
		)

		# Extract the SSH URL from the result JSON
		ssh_url=$(echo "$result" | jq -r '.ssh_url')

		echo "Cloning $ssh_url"
		git clone "$ssh_url"

		# Extract the repository name from the result JSON
		repo_name=$(echo "$result" | jq -r '.name')

		echo "$repo_name"
		echo "Changing directory to $repo_name"
		cd "$repo_name"
	fi

}

# Call the create_github_repo function
create_github_repo

initialize_next_app

initialize_shadcn

if [[ !$(ls | grep README.md) ]]; then
	touch README.md
	echo "# $repo_name" >>README.md
	git add README.md
	git commit -m "Initial Commit"
	git push
fi

# Open with vscode or vim
# code .
read -p "Open with vscode [y/n]" code_editor
if [[ $code_editor = "y" ]]; then
	code .
fi
vim .
