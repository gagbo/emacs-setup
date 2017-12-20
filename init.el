(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package)
  (require 'cl))


(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))


(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

;; General purpose options
(savehist-mode 1)
(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)
(setq-default scroll-step 5)
(setq-default scroll-conservatively 25)

;; Appearance related stuff
(load-user-file "appearance.el")

;; Load Helm
(load-user-file "helm.el")

;; Load Evil
(load-user-file "evil.el")

;; Load Magit
(use-package magit
  :ensure t
  :config
  (use-package evil-magit
    :ensure t))

;; Load Projectile
(use-package projectile
  :ensure t
  :config
  (projectile-mode 1)
  (use-package helm-projectile
    :ensure t
    :config
    (helm-projectile-on)
    )
  )

;; Load Clang-Format
(use-package clang-format
  :ensure t
  :config
  (require 'clang-format)
  (global-set-key [M-=] 'clang-format-region)
  )

;; Load CcMode
(use-package cc-mode
  :ensure t
  :config
  (setq c-basic-offset 4))

;; Load Elpy
(use-package elpy
  :ensure t
  :config
  (elpy-enable)
  (setq elpy-rpc-python-command "python3")
  (setq elpy-rpc-backend "jedi")
  (elpy-use-cpython "/usr/bin/python3")
  (setq python-check-command "/usr/bin/pyflakes-3")
  (add-hook 'python-mode-hook (
            lambda () (show-paren-mode 1))
            )
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d494af9adbd2c04bec4b5c414983fefe665cd5dadc5e5c79fd658a17165e435a" default)))
 '(package-selected-packages
   (quote
    (use-package underwater-theme seoul256-theme projectile powerline-evil org-evil helm flycheck-color-mode-line evil-visual-mark-mode evil-tutor evil-surround evil-nerd-commenter evil-matchit evil-magit evil-lion evil-leader evil-indent-textobject evil-commentary elpy clang-format))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
