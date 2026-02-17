;;; package --- Extensions that are always useful -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(use-package which-key
  :init (which-key-mode))

(use-package deadgrep
  :defer t)

(use-package sudo-edit
  :defer t)

(use-package dired
  :straight (:type built-in)
  :custom
  (dired-kill-when-opening-new-dired-buffer t)
  (dired-listing-switches "-ah --group-directories-first")
  :config
  (put 'dired-find-alternate-file 'disabled nil)
  :hook (dired-mode . dired-hide-details-mode))

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
  :bind
  ("C-c o" . olivetti-mode)
  :custom
  (olivetti-body-width 80))

(use-package mistty
  :bind (([f11] . mistty-create)
         ([C-f11] . mistty)
         :map mistty-prompt-map
         ("M-<up>" . mistty-send-key)
         ("M-<down>" . mistty-send-key)))

(use-package langtool
  :custom
  (langtool-bin "/usr/bin/languagetool"))

(use-package fancy-compilation
  :ensure t
  :commands (fancy-compilation-mode))

(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

(provide 'base-extensions)
;;; base-extensions.el ends here
