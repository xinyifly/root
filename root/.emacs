(require 'package)
(add-to-list 'package-archives '("melpa". "https://melpa.org/packages/") t)
(package-initialize)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
