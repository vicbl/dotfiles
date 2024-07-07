# To learn more about colors in terminal, see https://misc.flogisoft.com/bash/tip_colors_and_formatting
# use with -r flag on jq command

# Unicode escape character
# \e, \033 and \x1b cause "Invalid escape" error
def escape: "\u001b";

# Terminal color codes
def colors:
 {
  "red": "[31m",
  "green": "[32m",
  "yellow": "[33m",
  "blue": "[34m",
  "cyan": "[36m",
  "darkgray": "[90m",
  "disabled": "[30;100m", # Black on darkgray
  "reset": "[0m"
};

def logLevelColors:
 {
   "TRACE": "green",
   "DEBUG": "green",
   "INFO": "green",
   "WARN": "yellow",
   "ERROR": "red",
   "FATAL": "red"
 };

# Colors text with the given color
# coltxt("some text"; "red")
# will output 
# \u001b[31msome text\u001b[0m
# WARNING parameters are separated by ; not ,
def coltxt(text; color):
  escape + colors[color] + text + escape + colors.reset;
