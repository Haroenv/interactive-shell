

# exrcise for learning mkdir
mkdirExercise() {

	local input
	local correct="mkdir firstFolder"

	echo " "
	type_echo "Type 'mkdir firstFolder'"

	read -p "  ❯  " input

	success() {
		mkdir ./firstFolder
		success_echo "Congratulations! Now you create your first folder!"
		echo "$(term_echo 'mkdir') command is used for creating folders"
		echo "So in our case we created folder with name 'firstFolder'"
		echo "You can learn more about it here: $(link_echo 'http://document.link')"
		UPDATE "cdExercise"
		SAVE_STAT
		next "cdExercise"
	}
	error() {
		restarting "mkdirExercise"
	}

	checkInput "$input" "$correct" success error

}

# exercise for learning cd
cdExercise() {

	local input
	local correct="cd firstFolder"

	echo " "
	success_echo "Cool! We have folder lets move into in"
	type_echo "Type 'cd firstFolder'"
	read -p "  ❯  " input;

	success() {
		cd ./firstFolder
		success_echo "Cool. Now you in firstFolder, that you created before"
		echo "$(term_echo 'cd') command used for navigation from folder to folder"
		echo "Learn more about it here: $(link_echo 'http://document.link')"
		UPDATE "touchExercise"
		SAVE_STAT
		next "touchExercise"
	}
	error() {
		restarting "cdExercise"
	}

	checkInput "$input" "$correct" success error
}

# exercise for learning touch command
touchExercise() {

	local input
	local correct="touch sample.txt"

	echo " "
	echo "Lets create one file in this folder"
	type_echo "\033[0;36mType 'touch sample.txt'"
	read -p "  ❯ " input

	success() {
		success_echo "Cool"
		echo "$(term_echo 'touch') command is used for creating new files"
		echo "Learn more here: $(link_echo 'http://document.link')"
		touch ./sample.txt
		UPDATE "cpExercise"
		SAVE_STAT
		next "cpExercise"
	}
	error() {
		restarting "touchExercise"
	}

	checkInput "$input" "$correct" success error
}

# pwd exercise
rmExercise() {

	local input
	local correct="rm sample-copy.txt"

	echo " "
	echo "So now you know how to create files and folders"
	echo "Lets learn how to delete files"
	echo "Lets delete sample-copy.txt , that we create earlier"
	type_echo "\033[0;36mType 'rm sample-copy.txt'"
	read -p "  ❯ " input

	success() {
		success_echo "Cool. You made it!"
		echo "Learn more about different flags for this command here: $(link_echo 'http://document.link')"
		rm ./sample-copy.txt
		UPDATE "mvExercise"
		SAVE_STAT
		next "mvExercise"
	}
	error() {
		restarting "rmExercise"
	}

	checkInput "$input" "$correct" success error
}

pwdExercise() {

	local input
	local correct="pwd"

	echo " "
	echo "If you want to know in which folder you now,"
	echo "you can type pwd command that display your current full path"
	echo "Lets try it"
	type_echo "Type 'pwd'"
	read -p "  ❯ " input

	success() {
		echo "Your path : $(pwd)"
		success_echo "Nice you made it!"
		echo "Learn more here: $(link_echo 'http://document.link')"
		UPDATE "sudoTraining"
		SAVE_STAT
		next "sudoTraining"
	}
	error() {
		restarting "pwdExercise"
	}

	checkInput "$input" "$correct" success error
}

cpExercise() {

	local input
	local correct="cp sample.txt sample-copy.txt"

	echo " "
	echo "Lets try cp command,"
	type_echo "Type 'cp sample.txt sample-copy.txt'"
	read -p "  ❯ " input

	success() {
		cp sample.txt sample-copy.txt
		success_echo "Yeah. All right!"
		echo "$(term_echo 'cp') command is used for copy files"
		echo "Learn more here: $(link_echo 'http://document.link')"
		UPDATE "rmExercise"
		SAVE_STAT
		next "rmExercise"
	}

	error() {
		restarting "cpExercise"
	}

	checkInput "$input" "$correct" success error
}

mvExercise() {

	local input
	local correct="mkdir testFolder; mv sample.txt ./testFolder"

	echo " "
	echo "Lets try $(term_echo 'mv') command"
	echo "Lets create new folder and move our file into that"
	echo "Note, that $(term_echo ';') is used when you want to run next command after first will be finished"
	echo "Learn more about $(term_echo '&& ; |') here: $(link_echo 'http://document.link')"
	type_echo "Type 'mkdir testFolder; mv sample.txt ./testFolder'"
	read -p "  ❯ " input

	success() {
		mkdir ./testFolder; mv sample.txt ./testFolder
		success_echo "Yeh. All right!"
		echo "Learn about $(term_echo 'mv') more here: $(link_echo 'http://document.link')"
		UPDATE "pwdExercise"
		SAVE_STAT
		next "pwdExercise"
	}

	error() {
		restarting "mvExercise"
	}

	checkInput "$input" "$correct" success error
}

sudoTraining() {

	local input
	local correct="sudo su"

	echo " "
	echo "If you want to run command as a super user you can use $(term_echo 'sudo') command"
	echo "Let enter a super user mode"
	error_echo "Note! Don't allow other scripts to use sudo mode. Always use sudo only when it really need!"
	echo "In our case  dont be afraid, it's only simulation of entering sudo mode. "
	echo "Learn more here: $(link_echo 'http://document.link')"
	type_echo "Type 'sudo su'"
	read -p "  ❯ " input

	success() {
		success_echo "Yeh. All right!"
		UPDATE "dateExercise"
		SAVE_STAT
		next "dateExercise"

	}

	error() {
		restarting "sudoTraining"
	}

	checkInput "$input" "$correct" success error

}

dateExercise() {

	local input
	local correct="date && date +'%d/%m/%Y'"

	echo " "
	echo "$(term_echo 'date') command is used for operate different date formats"
	echo "Lets learn it"
	echo "Note, that $(term_echo '&&') is used when you want to run two or more commands in one time"
	echo "In our case first example will show unformat date and second will show date with special formating"
	echo "You can learn more about it here : $(link_echo 'http://document.link')"
	type_echo "Type: date && date +'%d/%m/%Y'"
	read -p "  ❯ " input

	success() {
		date && date +'%d/%m/%Y'
		success_echo "Yeh. All right!"
		echo "More about $(term_echo 'date') here: $(link_echo 'http://document.link')"
		UPDATE "finish"
		SAVE_STAT
		next "lsTraining"
	}

	error() {
		restarting "dateExercise"
	}

	checkInput "$input" "$correct" success error

}

lsTraining() {
	local input
	local correct="ls ."

	echo " "
	echo "$(term_echo 'ls') command is used for showing which files current directory have"
	echo "learn more here: $(link_echo 'http://document.link')"
	echo "Lets try it"
	type_echo "Type: ls ."
	read -p " ❯  " input

	success() {
		success_echo "Yeh. All right!"
		ls .
		echo "If you want to show hidden files you can use flag -a like ls -a . This command will show files with hidden files too"
		echo "Learn more here: $(link_echo 'http://document.link')"
		UPDATE "psTraining"
		SAVE_STAT
		next "psTraining"
	}

	error() {
		restarting "lsTraining"
	}

	checkInput "$input" "$correct" success error
}

psTraining() {
	local input
	local correct="ps"

	echo " "
	echo "$(term_echo 'ps') command display a list of running processes"
	echo "Lets try"
	type_echo "Type: ps"
	read -p "  ❯ " input

	success() {
		success_echo "Cool!"
		ps
		UPDATE "psTraining"
		SAVE_STAT
		next "nanoTraining"
	}

	error() {
		restarting "psTraining"
	}

	checkInput "$input" "$correct" success error
}

nanoTraining() {
	local input
	local correct="nano"

	echo " "
	echo "Unix have a lot of terminal text editors like $(term_echo 'nano')"
	echo "Lets discover it."
	type_echo "Type: nano"
	type_echo "When you want to leave edit simple press $(term_echo 'Ctrl+X') . Than you can save or not your changes."
	read -p "  ❯ " input

	success() {
		success_echo "Cool!"
		nano
		success_echo "You made it!"
		UPDATE "finish"
		SAVE_STAT
		next "finish"
	}

	error() {
		restarting "nanoTraining"
	}

	checkInput "$input" "$correct" success error
}

# loading next state
next() {

	local state=$1
	$state
}

# checking user input
checkInput() {

	local input=$1
	local success=$3
	local error=$4
	local correct=$2

	# maybe case ?
	if [ "$input" = "$correct" ]; then
		$success
	elif [ "$input" = ":q" ]; then
		echo -e "\033[0mExit script..."
		exit 0;
	elif [ "$input" = ":h" ]; then
		echo -e "\033[0mauthor: Oleh Kuchuk version: 1.0"
	else
		$error
	fi
}

finish() {

	local input

	success_echo "End of game... type $(term_echo ':restart') $(success_echo 'for restarting game.')"
	error_echo "Note that all scores will be reset!"
	read -p "  ❯ " input

	if [ "$input" = ":restart" ]; then
		success_echo "restarting game..."
		DELETE_LOG "$USER";
		next "initialize"
	else
		success_echo "exiting..."
	fi
}

# restarting state on error
restarting() {

	local state=$1
	error_echo "\033[0;31mUncorrect input. Please, try again\033[0m"
	$state
}

# inital function
initialize() {

	echo -e "\033[1;35mHolla, \033[0;33m$USER!\033[1;35m Welcome to interactive shell! \033[0m"
	echo -e "\033[1;35mDuring series of short tutorials you will learn basics of working with your shell"
	echo -e "So, Lets start!  \033[0m"
	echo -e "Type :q when you would like to exit script or :h for view script version  \033[0m"

	success() {
		local state=$1
		success_echo "Resuming latest game state ... "
		next "$state"
	}

	error() {
		CREATE_USER "$USER"
		next "mkdirExercise"
	}

	CHECK_LOG "$USER" success error
}

initialize

# end