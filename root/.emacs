(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-font 'default "Monospace-10")

(require 'package)
(add-to-list 'package-archives '("melpa". "https://melpa.org/packages/") t)
(package-initialize)

(package-install 'zenburn-theme)
(load-theme 'zenburn t)

(package-install 'projectile)
(projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(package-install 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
