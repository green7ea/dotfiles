(defconst zenburn-colors '((satori-1 . "#989890")
                           (satori . "#DCDCCC")
                           (satori+1 . "#FFFFFD")

                           (yoko-1 . "#D0BF8F")
                           (yoko . "#F0DFAF")

                           (hai-2 . "#000000")
                           (hai-1 . "#2B2B2B")
                           (hai . "#3F3F3F")
                           (hai+1 . "#4F4F4F")
                           (hai+2 . "#5F5F5F")

                           (sakura-1 . "#8C5353")
                           (sakura . "#AC7373")
                           (sakura+1 . "#CC9393")
                           (sakura+2 . "#DFAF8F")

                           (cha-1 . "#3F5F3F")
                           (cha . "#5F7F5F")
                           (cha+1 . "#7F9F7F")

                           (aoi-1 . "#4C7073")
                           (aoi . "#5C888B")
                           (aoi+1 "#7CB8BB")))

(defun zenburn-color (name)
  (cdr (assoc name zenburn-colors)))

(defun nano-theme-set-zenburn ()
  "Apply dark Nano theme base."
  (setq frame-background-mode 'dark)
  (setq nano-color-foreground (zenburn-color 'satori+1))
  (setq nano-color-critical   (zenburn-color 'sakura))
  (setq nano-color-salient    (zenburn-color 'sakura+2))
  (setq nano-color-strong     (zenburn-color 'sakura+1))
  (setq nano-color-subtle     (zenburn-color 'hai+2))
  (setq nano-color-faded      (zenburn-color 'satori-1))

  (setq nano-color-background (zenburn-color 'hai-1))
  (setq nano-color-popout     (zenburn-color 'hai)) ; background 2 + srting
  (setq nano-color-highlight  (zenburn-color 'hai+1))

  ;; to allow for toggling of the themes.
  (setq nano-theme-var "dark"))

(provide 'theme-zenburn)
