(require 'server)
(unless (server-running-p)
       (server-start))

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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b545b0f51230177907c6ea2c19cefdb518ef51418f29e8a19913d299a0b2018e" "ceee73442c3e53ca08d0f91800bda4e6867fa372a9e8019a8fb022988ae4bcd3" "5fca5b6ff3e36e90644411d59035e42bf5fe67b31fcce91ea023816373c0e87c" default)))
 '(package-selected-packages
   (quote
    (smartparens projectile-speedbar sr-speedbar company-rtags helm-rtags sml-mode elpy cmake-ide clang-format helm-projectile projectile flycheck-pyflakes flycheck-rust flycheck-clangcheck flycheck-rtags company rtags org-evil evil-visual-mark-mode evil-tutor evil-lion evil-commentary evil-nerd-commenter evil-matchit evil-magit evil-indent-textobject evil-surround evil-leader evil helm flycheck-color-mode-line spaceline powerline-evil powerline diminish use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file (expand-file-name "configuration.org" user-init-dir))

;;; init.el ends here
