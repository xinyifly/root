(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-font 'default "WenQuanYi Zen Hei Mono-12")
(setq split-width-threshold 120)

(setq make-backup-files nil)

(eval-after-load 'term
  '(term-set-escape-char ?\C-x))

(setq org-startup-indented t)
(setq org-todo-keywords '((sequence "TODO(t)" "NEXT" "|" "DONE" "CANCELED")))
(setq org-log-done 'time)
(setq org-agenda-files '("~/Dropbox/Orgzly"))
(global-set-key (kbd "C-c a") 'org-agenda)

(require 'package)
(add-to-list 'package-archives '("melpa". "https://melpa.org/packages/") t)
(package-initialize)

(package-install 'bind-key)

(package-install 'undo-tree)
(global-undo-tree-mode 1)

(package-install 'zenburn-theme)
(load-theme 'zenburn t)

(package-install 'avy)
(global-set-key (kbd "C-;") 'avy-goto-char-timer)
(global-set-key (kbd "M-g g") 'avy-goto-line)

(package-install 'projectile)
(projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(package-install 'helm)
(require 'helm-config)
(setq helm-always-two-windows t)
(setq helm-show-completion-display-function 'helm-show-completion-default-display-function)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "M-s o") 'helm-occur)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(bind-key* "C-c C-j" 'helm-semantic-or-imenu)
(global-set-key (kbd "C-c C-M-j") 'helm-imenu-in-all-buffers)
(add-hook 'eshell-mode-hook
	  '(lambda () (define-key eshell-mode-map (kbd "C-c C-l") 'helm-eshell-history)))
(package-install 'helm-projectile)
(helm-projectile-on)
(package-install 'helm-rg)
(package-install 'helm-dash)
(package-install 'helm-systemd)
(setq helm-systemd-list-not-loaded t)

(package-install 'magit)
(setq magit-display-buffer-function 'magit-display-buffer-fullframe-status-v1)
(global-set-key (kbd "C-x g") 'magit-status)

(package-install 'multiple-cursors)
(require 'mc-mark-more)
(global-set-key (kbd "C->") 'mc/mark-next-word-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-word-like-this)
(global-set-key (kbd "C-c C->") 'mc/mark-all-words-like-this)
(global-set-key (kbd "C-M->") 'mc/mark-next-like-this-symbol)
(global-set-key (kbd "C-M-<") 'mc/mark-previous-like-this-symbol)
(global-set-key (kbd "C-c C-M->") 'mc/mark-all-symbols-like-this)

(package-install 'pass)
(package-install 'helm-pass)

(package-install 'org-pomodoro)
(setq org-pomodoro-keep-killed-pomodoro-time t)
(eval-after-load 'org
  '(define-key org-mode-map (kbd "C-c C-x <C-return>") 'org-pomodoro))

(package-install 'yasnippet)
(setq yas-triggers-in-field t)
(yas-global-mode 1)
(package-install 'yasnippet-snippets)

(package-install 'editorconfig)
(editorconfig-mode 1)

(package-install 'inf-ruby)
(eval-after-load 'inf-ruby
  '(define-key inf-ruby-minor-mode-map (kbd "C-c C-l") 'ruby-send-line))

(package-install 'prettier-js)
(setq prettier-js-command "prettier-standard")
(add-hook 'js-mode-hook 'prettier-js-mode)

(package-install 'pyvenv)
(package-install 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(package-install 'yapfify)
(add-hook 'python-mode-hook 'yapf-mode)

(package-install 'yaml-mode)

(package-install 'dockerfile-mode)

(package-install 'restclient)
(add-to-list 'auto-mode-alist '("\\.http\\'" . restclient-mode))

(package-install 'diminish)
(diminish 'undo-tree-mode)
(diminish 'projectile-mode)
(diminish 'helm-mode)
(diminish 'yas-minor-mode)
(diminish 'editorconfig-mode)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
