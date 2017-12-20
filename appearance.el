; No toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(column-number-mode t)

(setq ring-bell-function 'ignore)
(display-time-mode t)

(when (display-graphic-p) (set-scroll-bar-mode nil))

(use-package powerline
  :ensure t
  :config
  (use-package powerline-evil
    :ensure t)
  (powerline-vim-theme))

(use-package flycheck-color-mode-line
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(use-package seoul256-theme
  :ensure t)
