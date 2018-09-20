(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-font 'default "Monospace-10")

(setq org-startup-indented t)
(setq org-log-done 'time)
(setq org-agenda-files '("~/Dropbox/Orgzly"))

(require 'package)
(add-to-list 'package-archives '("melpa". "https://melpa.org/packages/") t)
(package-initialize)

(package-install 'undo-tree)
(global-undo-tree-mode 1)

(package-install 'zenburn-theme)
(load-theme 'zenburn t)

(package-install 'projectile)
(projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(package-install 'helm)
(setq helm-always-two-windows t)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(package-install 'helm-projectile)
(helm-projectile-on)
(package-install 'helm-rg)

(package-install 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(package-install 'pyvenv)
(package-install 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-mode)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
