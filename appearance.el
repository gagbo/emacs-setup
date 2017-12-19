; No toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(column-number-mode t)

(setq ring-bell-function 'ignore)
(display-time-mode t)

; Get rid of the butt ugly OSX scrollbars in GUI
(when (display-graphic-p) (set-scroll-bar-mode nil))

(use-package powerline
  :ensure t
  :config
  (use-package powerline-evil
    :ensure t)
  (powerline-center-evil-theme))

(use-package flycheck-color-mode-line
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(use-package underwater-theme
             :ensure t)
