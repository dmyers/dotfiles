
POWERLEVEL9K_MODE='nerdfont-complete'
# Please only use this battery segment if you have material icons in your nerd font (or font)
# Otherwise, use the font awesome one in "User Segments"
prompt_zsh_battery_level() {
local percentage1=`pmset -g ps  |  sed -n 's/.*[[:blank:]]+*\(.*%\).*/\1/p'`
local percentage=`echo "${percentage1//\%}"`
local color='%F{red}'
local symbol="\uf00d"
pmset -g ps | grep "discharging" > /dev/null
if [ $? -eq 0 ]; then
local charging="false";
else
local charging="true";
fi
if [ $percentage -le 20 ]
then symbol='\uf579' ; color='%F{red}' ;
#10%
elif [ $percentage -gt 19 ] && [ $percentage -le 30 ]
then symbol="\uf57a" ; color='%F{red}' ;
#20%
elif [ $percentage -gt 29 ] && [ $percentage -le 40 ]
then symbol="\uf57b" ; color='%F{yellow}' ;
#35%
elif [ $percentage -gt 39 ] && [ $percentage -le 50 ]
then symbol="\uf57c" ; color='%F{yellow}' ;
#45%
elif [ $percentage -gt 49 ] && [ $percentage -le 60 ]
then symbol="\uf57d" ; color='%F{blue}' ;
#55%
elif [ $percentage -gt 59 ] && [ $percentage -le 70 ]
then symbol="\uf57e" ; color='%F{blue}' ;
#65%
elif [ $percentage -gt 69 ] && [ $percentage -le 80 ]
then symbol="\uf57f" ; color='%F{blue}' ;
#75%
elif [ $percentage -gt 79 ] && [ $percentage -le 90 ]
then symbol="\uf580" ; color='%F{blue}’ ;
#85%
elif [ $percentage -gt 89 ] && [ $percentage -le 99 ]
then symbol="\uf581" ; color='%F{blue}' ;
#85%
elif [ $percentage -gt 98 ]
then symbol="\uf578" ; color='%F{green}' ;
#100%
fi
if [ $charging = "true" ];
then color='%F{green}'; if [ $percentage -gt 98 ]; then symbol='\uf584'; fi
fi
echo -n "%{$color%}$symbol" ;
}
zsh_internet_signal(){
local color
local symbol="\uf7ba"
if ifconfig en0 | grep inactive &> /dev/null; then
color="%F{red}"
else
color="%F{blue}"
fi
echo -n "%{$color%}$symbol "
}
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \UF133  %m.%d.%y}"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='blue'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "
POWERLEVEL9K_CUSTOM_BATTERY_STATUS="prompt_zsh_battery_level"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context os_icon custom_internet_signal custom_battery_status_joined ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon custom_internet_signal custom_battery_status_joined ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time  status  time)
HIST_STAMPS="mm/dd/yyyy"
DISABLE_UPDATE_PROMPT=trueReload ZSH Config
