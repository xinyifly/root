(require 'package)
(add-to-list 'package-archives '("melpa". "https://melpa.org/packages/") t)
(package-initialize)

(package-install 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
