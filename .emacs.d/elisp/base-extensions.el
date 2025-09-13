;;; package --- Extensions that are always useful -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(use-package which-key
  :init (which-key-mode))

(use-package deadgrep
  :defer t)

(use-package sudo-edit
  :defer t)

(use-package shackle
  :init
  (setq shackle-default-rule '(:same t))
  :config
  (shackle-mode))

(use-package undo-fu
  :bind
  ("C-z" . undo-fu-only-undo)
  ("C-S-z" . undo-fu-only-redo))

(use-package autorevert
  :straight nil
  :custom
  (global-revert-check-vc-info t)
  :config
  (global-auto-revert-mode +1))

(use-package olivetti
  :defer t
  :custom
  (olivetti-body-width 80))

(use-package mistty
  :bind (([f11] . mistty)
         :map mistty-prompt-map
         ("M-<up>" . mistty-send-key)
         ("M-<down>" . mistty-send-key)))

(use-package langtool
  :config
  (setq langtool-bin "/usr/bin/languagetool"))

(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

(provide 'base-extensions)
;;; base-extensions.el ends here
