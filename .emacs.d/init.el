;;; package --- Imports other files -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'base)

(require 'base-completion)
(require 'base-extensions)
(require 'base-global-keys)
(require 'base-llm)
(require 'base-meow)
(require 'base-theme)

(require 'base-dev)
;;; init.el ends here
