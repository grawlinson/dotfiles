#!/bin/bash
# Links all ZSH plugins from dotfiles in oh-my-zsh plugin directory

DOTFILES_DIR="$HOME/.dotfiles"
ZSH_DIR="$HOME/.oh-my-zsh/custom/"

# Check if zsh installed & directories reachable
if [ ! command -v zsh &> /dev/null ]; then
	echo "zsh not installed"
	exit 1
fi

if [ ! -d ${DOTFILES_DIR} ]; then
	echo "${DOTFILES_DIR} does not exist"
	exit 1
fi

if [ ! -d ${ZSH_DIR} ]; then
	echo "${ZSH_DIR} does not exist"
	exit 1
fi

# Recursively find all ZSH files in ~/.dotfiles
declare -a ZSH_FILES=(`find $DOTFILES_DIR -type f -name "*.zsh"`)

# Copy array
declare -a ZSH_NAMES=("${ZSH_FILES[@]}")

# Remove path, we only want filenames
ZSH_NAMES=("${ZSH_NAMES[@]/*\//}")

# Get number of ZSH files
NUM_FILES=${#ZSH_FILES[@]}

# Check if there are actually any files to symlink
if [ ${NUM_FILES} -lt 1 ]; then
	echo "No files found."
	exit 1
else
	echo "${NUM_FILES} files to be symlinked."
fi

# Print all files w/ symlinked path
for (( i=0; i<${NUM_FILES}; i++ )); do
	
	# Check if symlinked file exists
	if [ -f ${ZSH_DIR}${ZSH_NAMES[$i]} ]; then
		# Delete symlink
		rm -f ${ZSH_DIR}${ZSH_NAMES[$i]}
	fi

	# Perform symlink
	echo "Symlink: ${ZSH_FILES[$i]} > ${ZSH_DIR}${ZSH_NAMES[$i]}"
	ln -s ${ZSH_FILES[$i]} ${ZSH_DIR}${ZSH_NAMES[$i]}
done

# All done
echo "Done!"

exit 0
