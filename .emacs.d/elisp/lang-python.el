(use-package python-ts-mode
  :straight nil
  :ensure nil
  :mode (("\\.py$" . python-ts-mode))
  :hook ((python-ts-mode . eglot-ensure)))

(provide 'lang-python)
;;; lang-python.el ends here
