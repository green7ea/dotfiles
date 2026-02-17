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
  (load-theme 'doom-opera t))

(use-package catppuccin-theme
  :defer t)

(use-package ef-themes
  :defer t)
  ;:config
  ;(load-theme 'ef-owl t))

(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode 1))

(use-package spacious-padding
  :ensure t
  :init
  (spacious-padding-mode 1))

(use-package centaur-tabs
  :ensure t
  :custom
  (centaur-tabs-set-bar 'under)
  (x-underline-at-descent-line t)
  (centaur-tabs-set-close-button nil)
  (centaur-tabs-set-modified-marker t)
  (centaur-tabs-show-new-tab-button nil)
  :init
  (centaur-tabs-mode t)
  :bind
  ("M-v" . centaur-tabs-forward-tab)
  ("M-c" . centaur-tabs-backward-tab)
  ("C-M-v" . centaur-tabs-forward-group)
  ("C-M-c" . centaur-tabs-backward-group))
;  :config
;  (add-hook 'dired-mode-hook #'project-buffer-mode))

(provide 'base-theme)
;;; base-theme.el ends here
