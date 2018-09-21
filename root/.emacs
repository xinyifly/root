(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-font 'default "Monospace-10")

(setq org-startup-indented t)
(setq org-todo-keywords '((sequence "TODO(t)" "NEXT" "|" "DONE" "CANCELED")))
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
(setq helm-show-completion-display-function 'helm-show-completion-default-display-function)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(add-hook 'eshell-mode-hook
	  '(lambda () (define-key eshell-mode-map (kbd "C-c C-l") 'helm-eshell-history)))
(package-install 'helm-projectile)
(helm-projectile-on)
(package-install 'helm-rg)

(package-install 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(package-install 'org-pomodoro)
(setq org-pomodoro-keep-killed-pomodoro-time t)

(package-install 'pyvenv)
(package-install 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(package-install 'yapfify)
(add-hook 'python-mode-hook 'yapf-mode)

(package-install 'diminish)
(diminish 'undo-tree-mode)
(diminish 'projectile-mode)
(diminish 'helm-mode)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
