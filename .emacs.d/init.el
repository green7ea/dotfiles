(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'base)
(require 'base-extensions)
(require 'base-global-keys)
(require 'base-shell)
(require 'base-theme)
(require 'base-meow)

(require 'lang-markdown)
(require 'lang-rust)
(require 'lang-scheme)
(require 'lang-typescript)

(require 'treesit-langs)
