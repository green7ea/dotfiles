(use-package python-ts-mode
  :straight (:type built-in)
  :mode (("\\.py$" . python-ts-mode))
  :hook ((python-ts-mode . eglot-ensure)))

(provide 'lang-python)
;;; lang-python.el ends here
