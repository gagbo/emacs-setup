(use-package evil
  :ensure t
  :config
  (evil-mode 1)

  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode)
    (evil-leader/set-leader "<SPC>")
    (evil-leader/set-key
      "e" 'helm-find-file
      "bd" 'kill-buffer-and-window
      "gs" 'magit-status
      "ne" 'flycheck-next-error
      "pe" 'flycheck-previous-error
      )
    )

  (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode))

  (use-package evil-indent-textobject
    :ensure t)

  (use-package evil-magit
    :ensure t)

  (use-package evil-matchit
    :ensure t)

  (use-package evil-nerd-commenter
    :ensure t)

  (use-package evil-commentary
    :ensure t)

  (use-package evil-lion
    :ensure t)

  (use-package evil-tutor
    :ensure t)

  (use-package evil-visual-mark-mode
    :ensure t)

  (define-key evil-normal-state-map [escape] 'keyboard-quit)
  (define-key evil-visual-state-map [escape] 'keyboard-quit)
  (define-key evil-normal-state-map (kbd ";") 'evil-ex)
  (define-key evil-normal-state-map (kbd ":") 'evil-repeat-find-char)
  )
