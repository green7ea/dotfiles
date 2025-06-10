(use-package eglot
  :straight nil
  :ensure nil ; built-in
  :bind
  (:map eglot-mode-map
        ("M-RET" . eglot-code-actions)
        ([f2] . eglot-rename)
        ([f6] . eglot-format-buffer))
  :config
  (add-to-list
   'eglot-server-programs
   '((typescript-mode typescript-ts-mode)
     . ("deno" "lsp"
        :initializationOptions
        (:enable t
         :lint t)))))

(provide 'base-eglot);
;;; base-eglot.el ends here
