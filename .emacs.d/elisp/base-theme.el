(setq-default cursor-type 'bar)
(blink-cursor-mode 0)

(use-package ligature
  :straight '(ligature :type git :host github :repo "mickeynp/ligature.el")
  :config
  (ligature-set-ligatures
   't
   '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
     ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
     "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
     "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
     "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
     "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
     "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
     "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
     ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
     "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
     "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
     "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
     "\\\\" "://"))
  (global-ligature-mode t))

(require 'theme-catppuccin)
(require 'theme-nord)
(require 'theme-scientist)
(require 'theme-tomorrow)
(require 'theme-zenburn)

(use-package nano
  :straight '(nano :type git :host github :repo "rougier/nano-emacs")
  :init (set-frame-font "FiraCode 14" nil t)
  :config
  (menu-bar-mode -1)
  (nano-theme-set-scientist))

(provide 'base-theme)
