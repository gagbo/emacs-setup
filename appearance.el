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
  (use-package spaceline
    :ensure t
    :config
    (require 'spaceline-config)
    (spaceline-spacemacs-theme)
    (spaceline-helm-mode)
    (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
    ))

(use-package flycheck-color-mode-line
  :ensure t
  :config
  (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(use-package seoul256-theme
  :ensure t)
