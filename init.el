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
  (require 'use-package))


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

(savehist-mode 1)
(setq inhibit-startup-message t)
(setq-default indent-tabs-mode nil)

;; Appearance related stuff
(load-user-file "appearance.el")

;; Load Helm
(load-user-file "helm.el")

;; Load Evil
(load-user-file "evil.el")

;; Load magit
(use-package magit
  :ensure t
  :config
  (use-package evil-magit
    :ensure t))

(use-package projectile
  :ensure t)

(use-package clang-format
  :ensure t
  :config
  (global-set-key [F10] 'clang-format-region)
  )

(use-package cc-mode
  :ensure t)

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
 '(package-selected-packages (quote use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq c-default-style "k&r")
