(use-package eglot
  :straight (:type built-in)
  :bind
  (:map eglot-mode-map
        ("M-RET" . eglot-code-actions)
        ([f2] . eglot-rename)
        ([f6] . eglot-format-buffer)))

(provide 'base-eglot);
;;; base-eglot.el ends here
