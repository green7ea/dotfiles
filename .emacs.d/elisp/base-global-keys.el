;;; package --- Keys that should always be active -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(global-set-key [(f5)] 'recompile)
(global-set-key [(C-f5)] 'compile)
(global-set-key [(f7)] 'deadgrep)
(global-set-key [(f9)] 'magit-status)
(global-set-key [(f12)] 'kill-current-buffer)
(global-set-key (kbd "M-<f12>") 'open-index)

(defun open-index ()
  (interactive)
  (find-file "~/roam/index.md"))

; Using bind-key* here makes sure that these bindings cannot be
; overwritten by other modes.
(use-package bind-key
  :config
  (bind-key* (kbd "M-n") 'left-char)
  (bind-key* (kbd "M-e") 'next-line)
  (bind-key* (kbd "M-i") 'previous-line)
  (bind-key* (kbd "M-o") 'right-char)

  (bind-key* (kbd "C-M-n") 'backward-word)
  (bind-key* (kbd "C-M-e") 'forward-paragraph)
  (bind-key* (kbd "C-M-i") 'backward-paragraph)
  (bind-key* (kbd "C-M-o") 'forward-word))

(provide 'base-global-keys)
;;; base-global-keys.el ends here
