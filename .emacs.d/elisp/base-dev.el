(use-package eglot
  :straight (:type built-in)
  :bind
  (:map eglot-mode-map
        ("M-RET" . eglot-code-actions)
        ([f2] . eglot-rename)
        ([f6] . eglot-format-buffer)))

(use-package treesit-auto
  :demand t
  :config
  (global-treesit-auto-mode))

(use-package flycheck
  :config (global-flycheck-mode +1))

(use-package magit
  :defer t)

(use-package git-timemachine
  :defer t)

(use-package python-ts-mode
  :straight (:type built-in)
  :mode (("\\.py$" . python-ts-mode))
  :hook ((python-ts-mode . eglot-ensure)))

(use-package yaml-ts-mode
  :straight (:type built-in)
  :mode (("\\.yaml$" . yaml-ts-mode)
         ("\\.yml$" . yaml-ts-mode)))

(use-package typescript-ts-mode
  :straight (:type built-in)
  :mode (("\\.ts$" . typescript-ts-mode)
         ("\\.tsx$" . tsx-ts-mode))
  :hook ((typescript-ts-mode . eglot-ensure)
         (tsx-ts-mode . eglot-ensure)))

(defun markdown-follow-at-point ()
    "Follows the link under the cursor, leaving a marker behind."
    (interactive)
      ; Allows us to pop the marker stack to back track.
      (xref-push-marker-stack)
      (markdown-follow-link-at-point))

(use-package markdown-mode
  :config (setq-default markdown-hide-urls t)
  :bind (:map markdown-mode-map
              ("M-." . markdown-follow-at-point)))

(use-package just-mode
  :defer t)

(provide 'base-dev);
;;; base-dev.el ends here
