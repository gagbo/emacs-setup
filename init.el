(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(org-babel-load-file (expand-file-name "configuration.org" user-init-dir))

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
