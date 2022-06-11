#!/bin/zsh
dt=`date '+%d/%m/%Y_%H:%M:%S'`
echo Started: $dt
echo Installing Standard packages
#pip install py2exe
#pip install python-docx
#pip install Boost
#pip install conan
pip install selenium
pip install pyvirtualdisplay
echo Installing Input packages
pip install pyautogui
pip install pynput
pip install asyncio
pip install ipykernel
pip install speechrecognition
pip install pywal
echo Installing Webscraping packages
pip install beautifulsoup4
pip install lxml
echo Installing API packages
pip install discord
pip install tweepy
pip install praw
pip install gTTS
pip install wolframalpha
pip install speedtest-cli
pip install google
pip install wikipedia
pip install gkeepapi
echo Installing Audio playing packages
#pip install ffmpeg
#pip install youtube-dl
pip install yt-dlp
pip install spotdl
pip install playsound
pip install pyaudio

## Colors ##

ESC=$(printf '\033') RESET="${ESC}[0m" BLACK="${ESC}[30m" RED="${ESC}[31m"
GREEN="${ESC}[32m" YELLOW="${ESC}[33m" BLUE="${ESC}[34m" MAGENTA="${ESC}[35m"
CYAN="${ESC}[36m" WHITE="${ESC}[37m" DEFAULT="${ESC}[39m"

### Color Functions ##

greenprint() { printf "${GREEN}%s${RESET}\n" "$1"; }
blueprint() { printf "${BLUE}%s${RESET}\n" "$1"; }
redprint() { printf "${RED}%s${RESET}\n" "$1"; }
yellowprint() { printf "${YELLOW}%s${RESET}\n" "$1"; }
magentaprint() { printf "${MAGENTA}%s${RESET}\n" "$1"; }
cyanprint() { printf "${CYAN}%s${RESET}\n" "$1"; }
dtasciprompt() {
    echo -ne "
$(magentaprint "Would you like to install Data Science Packages? (Takes longer time.)")
$(greenprint '1)') Continue
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        echo This will take some time...
        echo Installing Data Science packages
        pip install pandas
        pip install numpy
        pip install matplotlib
        pip install seaborn
        pip install nltk
        pip install pingouin
        pip install Chatterbot
        pip install Chatterbot_corpus
        pip install sqlalchemy
        pip install spacy
        pip install scipy
        pip install scikit-learn
        pip install tensorflow
        pip install tflearn
        pip install keras
        pip install transformers
        pip install torch
        echo Completed: $dt
        exit
        ;;
    0)
        echo "Bye bye."
        exit 1
        ;;
    *)
        echo "Wrong option."
        exit 1
        ;;
    esac
}
dtasciprompt