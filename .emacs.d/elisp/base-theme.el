;;; package --- Themes emacs -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(setq-default cursor-type 'bar)
(set-frame-font "FiraCode 11" nil t)
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

(use-package winum
  :init
  (keymap-global-unset "M-1")
  (keymap-global-unset "M-2")
  (keymap-global-unset "M-3")
  (keymap-global-unset "M-4")
  (keymap-global-unset "M-5")
  (keymap-global-unset "M-6")
  (keymap-global-unset "M-7")
  (keymap-global-unset "M-8")
  (keymap-global-unset "M-9")
  (keymap-global-unset "M-0")
  :bind
  ("M-1" . winum-select-window-1)
  ("M-2" . winum-select-window-2)
  ("M-3" . winum-select-window-3)
  ("M-4" . winum-select-window-4)
  ("M-5" . winum-select-window-5)
  ("M-6" . winum-select-window-6)
  ("M-7" . winum-select-window-7)
  ("M-8" . winum-select-window-8)
  ("M-9" . winum-select-window-9)
  ("M-0" . winum-select-window-0)
  :config (winum-mode))

(use-package doom-themes
  :config
  (load-theme 'doom-zenburn t))

(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode 1))

(setq default-frame-alist
      (append (list
	             '(min-height . 1)
               '(height     . 45)
	             '(min-width  . 1)
               '(width      . 81)
               '(vertical-scroll-bars . nil)
               '(internal-border-width . 12)
               '(left-fringe    . 0)
               '(right-fringe   . 0)
               '(tool-bar-lines . 0)
               '(menu-bar-lines . 0))))

(setq-default left-margin-width 1
              right-margin-width 1)

(provide 'base-theme)
;;; base-theme.el ends here
