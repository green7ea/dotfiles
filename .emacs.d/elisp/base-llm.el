(use-package gptel
    :bind ("C-\\" . gptel-send)
    :config
    (setq
     gptel-model   'glm
     gptel-backend (gptel-make-openai "local"
                     :stream t
                     :protocol "http"
                     :host "localhost:8080"
                     :models '("unsloth/glm-4.5-air"))))

(provide 'base-llm)
