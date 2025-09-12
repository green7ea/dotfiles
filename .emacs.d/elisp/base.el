(setq straight-use-package-by-default t)
(setq straight-vc-git-default-clone-depth 1)

(defconst temp-dir "/tmp/emacs-cache"
  "Hostname-based elisp temp directories.")

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

(straight-use-package '(project :type built-in))
(straight-use-package '(xref :type built-in))

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
      completions-detailed                t
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
      select-enable-clipboard            t
      pixel-scroll-mode                  t
      scroll-conservatively              10
      scroll-margin                      5
      display-line-numbers-width         3
      display-line-numbers-widen         nil)

(setq-default indent-tabs-mode nil
              tab-width        2)

;; Backups enabled, use nil to disable
(setq backup-inhibited                   t
      make-backup-files                  nil
      auto-save-default                  nil
      make-backup-files                  nil
      create-lockfiles                   nil
      backup-directory-alist            `((".*" . ,(concat temp-dir "/backup/"))))

(global-auto-revert-mode t)

(show-paren-mode 1)

(defun keyboard-quit-dwim ()
  "Do-What-I-Mean behaviour for a general `keyboard-quit'."
  (interactive)
  (cond
   ((region-active-p)
    (keyboard-quit))
   ((derived-mode-p 'completion-list-mode)
    (delete-completion-window))
   ((> (minibuffer-depth) 0)
    (abort-recursive-edit))
   (t
    (keyboard-quit))))

(define-key global-map (kbd "C-g") #'keyboard-quit-dwim)

(defun yank-buffer-file-name ()
  "Yank the current buffer filepath to clipboard."
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
