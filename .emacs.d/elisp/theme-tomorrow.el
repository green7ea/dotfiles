(defconst tomorrow-colors
  '((background   . "#ffffff")
    (current-line . "#e9efff")
    (selection    . "#c5cce9")
    (foreground   . "#4d4d4c")
    (comment      . "#8e908c")
    (cursor       . "#aeafad")
    (red          . "#c82829")
    (orange       . "#f5871f")
    (yellow       . "#eab700")
    (green        . "#718c00")
    (aqua         . "#3e999f")
    (blue         . "#4271ae")
    (purple       . "#8959a8")))

(defconst tomorrow-night-colors
  '((background   . "#1d1f21")
    (current-line . "#282a2e")
    (selection    . "#373b41")
    (foreground   . "#c5c8c6")
    (comment      . "#969896")
    (cursor       . "#aeafad")
    (red          . "#cc6666")
    (orange       . "#de935f")
    (yellow       . "#f0c674")
    (green        . "#b5bd68")
    (aqua         . "#8abeb7")
    (blue         . "#81a2be")
    (purple       . "#b294bb")))

(defun tomorrow-color (name variant)
  (cdr (assoc name variant)))

(defun tomorrow-set-theme (variant)
  "Apply dark Nano theme base."
  (setq frame-background-mode     'dark)

  (setq nano-color-foreground (tomorrow-color
                               'foreground
                               variant)) ; text
  (setq nano-color-critical (tomorrow-color
                             'red
                             variant))
  (setq nano-color-salient (tomorrow-color
                            'purple
                            variant))    ; keywords
  (setq nano-color-strong (tomorrow-color
                           'yellow
                           variant))     ; filename
  (setq nano-color-subtle (tomorrow-color
                           'comment
                           variant))     ; header
  (setq nano-color-faded (tomorrow-color
                          'comment
                          variant))      ; save area

  (setq nano-color-background (tomorrow-color
                               'background
                               variant)) ; bg
  (setq nano-color-popout (tomorrow-color
                           'selection
                           variant))
  (setq nano-color-highlight (tomorrow-color
                              'selection
                              variant))  ; unsaved

  ;; to allow for toggling of the themes.
  (setq nano-theme-var "dark"))

(defun nano-theme-set-tomorrow ()
  (tomorrow-set-theme tomorrow-colors))

(defun nano-theme-set-tomorrow-night ()
  (tomorrow-set-theme tomorrow-night-colors))

(provide 'theme-tomorrow)
