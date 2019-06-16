(setq straight-use-package-by-default t)
(setq straight-vc-git-default-clone-depth 1)

(defconst temp-dir "/tmp/emacs-cache"
  "Hostname-based elisp temp directories")

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)

;; Core settings
;; UTF-8 please
(set-charset-priority 'unicode)
(setq locale-coding-system   'utf-8)   ; pretty
(set-terminal-coding-system  'utf-8)   ; pretty
(set-keyboard-coding-system  'utf-8)   ; pretty
(set-selection-coding-system 'utf-8)   ; please
(prefer-coding-system        'utf-8)   ; with sugar on top
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;; Emacs customizations
(setq save-interprogram-paste-before-kill t
      mouse-yank-at-point                 t
      require-final-newline               t
      visible-bell                        nil
      ring-bell-function                  'ignore
      custom-file                         "~/.emacs.d/custom.el"
      ;; http://ergoemacs.org/emacs/emacs_stop_cursor_enter_prompt.html
      minibuffer-prompt-properties
      '(read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt)
      ;; Disable non selected window highlight
      cursor-in-non-selected-windows     nil
      highlight-nonselected-windows      nil
      ;; PATH
      inhibit-startup-message            t
      fringes-outside-margins            t
      frame-inhibit-implied-resize       t
      x-select-enable-clipboard          t
      use-package-always-ensure          t
      pixel-scroll-mode                  t
      tab-width                          2)

(setq-default indent-tabs-mode nil)

;; Use current buffer as a default for new buffers
(setq display-buffer-base-action
      '((display-buffer-reuse-window
         display-buffer-reuse-mode-window
         display-buffer-same-window
         display-buffer-in-previous-window)))

;; Backups enabled, use nil to disable
(setq backup-inhibited                   t
      make-backup-files                  nil
      auto-save-default                  nil
      make-backup-files                  nil
      create-lockfiles                   nil
      backup-directory-alist            `((".*" . ,(concat temp-dir "/backup/"))))

(global-auto-revert-mode t)

(show-paren-mode 1)

(setq major-mode-remap-alist
      '((yaml-mode . yaml-ts-mode)
        (bash-mode . bash-ts-mode)
        (js2-mode . js-ts-mode)
        (typescript-mode . typescript-ts-mode)
        (json-mode . json-ts-mode)
        (css-mode . css-ts-mode)
        (python-mode . python-ts-mode)))

(defun yank-buffer-file-name ()
    "Yank the current buffer filepath to clipboard"
    (interactive)
    (kill-new buffer-file-name))

(defun delete-file-and-buffer ()
  "Kill the current buffer and its associated file."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if filename
        (progn
          (delete-file filename)
          (message "Deleted file %s." filename)
          (kill-buffer))
      (message "Buffer isn't visiting a file"))))

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'base)
