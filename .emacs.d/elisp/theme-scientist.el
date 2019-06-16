(defconst scientist-colors
  '((foreground . "#b6c4d1")
    (background . "#212121")
    (blue       . "#7fc9f6")
    (red        . "#d52b00")
    (yellow     . "#fff159")
    (beige      . "#fff9ca")
    (blue       . "#2c5ba8")
    (peach      . "#ffa887")
    (orange     . "#ffa84e")
    (green      . "#b3ca6f")
    (black      . "#000000")
    (white      . "#ffffff")))

(defun scientist-color (name)
  (cdr (assoc name scientist-colors)))

(defun nano-theme-set-scientist ()
  "Apply dark Nano theme base."
  (setq frame-background-mode 'dark)
  (setq nano-color-foreground (scientist-color 'foreground))
  (setq nano-color-critical   (scientist-color 'orange))    ; keywords
  (setq nano-color-salient    (scientist-color 'blue))    ; filename
  (setq nano-color-strong     (scientist-color 'peach))   ; strings
  (setq nano-color-faded      (scientist-color 'blue))

  (setq nano-color-background (scientist-color 'background))
  (setq nano-color-popout     (scientist-color 'black))   ; header
  (setq nano-color-highlight  (scientist-color 'black)) ; unsaved
  (setq nano-color-subtle     (scientist-color 'black))   ; highlight

  ;; to allow for toggling of the themes.
  (setq nano-theme-var "dark"))

(provide 'theme-scientist)
