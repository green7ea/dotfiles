(use-package mistty
  :bind (([f11] . mistty)
         :map mistty-prompt-map
         ("M-<up>" . mistty-send-key)
         ("M-<down>" . mistty-send-key)))

(provide 'base-shell)
