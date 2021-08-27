BLUE=\033[0;34m
GREEN=\033[0;32m
RED=\033[0;31m
YELLOW=\033[0;33m
NC=\033[0m
B=`tput bold`

VOL = srcs_db_vol \
      srcs_wp_vol

FC = ${GREEN}${B}Clean${NC}
NOC = ${RED}${B}No    ${NC}

all: help

clean:
	clear
	@echo "\n${BLUE}${B}Loading...${NC}\n"
	@echo "${B}._______________________________."
	@echo "${B}| Volumes | Containers | Images |"
	@echo "${B}|_________|____________|________|"
	@echo "${B}|         |            |        |"
	@echo "${B}| ${NOC}  | ${FC}      | ${FC}  |"
	@echo "${B}|         |            |        |"
	@echo "${B}|_______________________________|\n"
	@bash /home/${USER}/ft_inception/scripts/reset.sh 2>/dev/null

fclean:
	clear
	@echo "${B}._______________________________."
	@echo "${B}| Volumes | Containers | Images |"
	@echo "${B}|_________|____________|________|"
	@echo "${B}|         |            |        |"
	@echo "${B}| ${FC}   | ${FC}      | ${FC}  |"
	@echo "${B}|         |            |        |"
	@echo "${B}|_______________________________|\n"
	@echo "\n${BLUE}${B}Loading...${NC}\n"
	@bash /home/${USER}/ft_inception/scripts/reset.sh 2>/dev/null
	@docker volume prune -f 2>/dev/null
	@bash /home/${USER}/ft_inception/scripts/rm_vol.sh
	@sudo rm -rf /home/${USER}/data
	@echo "\n"

re:
	make fclean
	make run 

help:
	@clear
	@echo "\n${B}DESCRIPTION\n"
	@echo "${B}\tMakefile is a program to automate docker options using short commands.\n"
	@echo "${B}1- make run:${GREEN}${B} Init all services, containers, images and volumes."
	@echo "${NC}${B}2- make clean:${GREEN}${B} Stops and removes the containers with their images."
	@echo "${NC}${B}3- make fclean:${GREEN}${B} Performs the same task as clean command, and now removes volumes."
	@echo "${NC}${B}4- make re:${GREEN}${B} Clean and execute all.\n"

run:
	@cd /home/${USER}/ ; mkdir data ; cd data ; mkdir db_vol wp_vol
	@cd /home/${USER}/data ; chmod 777 db_vol wp_vol
	@cd /home/${USER}/ft_inception/srcs ; docker-compose up -d

