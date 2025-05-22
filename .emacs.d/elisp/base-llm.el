(use-package gptel
    :bind ("C-`" . gptel-send)
    :config
    (setq
     gptel-model   'smollm2
     gptel-backend (gptel-make-openai "ramalama"
                     :stream t
                     :protocol "http"
                     :host "localhost:8080"
                     :models '(smollm2))))

(provide 'base-llm)
