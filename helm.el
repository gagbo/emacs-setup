(use-package helm
  :ensure t
  :init
  (setq helm-autoresize-max-height 50)
  (setq helm-autoresize-min-height 20)
  :config
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-z")  'helm-select-action)
  (helm-autoresize-mode 1)
  (define-key helm-map (kbd "C-j") 'helm-next-line)
  (define-key helm-map (kbd "C-k") 'helm-previous-line)
  (define-key helm-map (kbd "C-h") 'helm-next-source)
  (define-key helm-map (kbd "C-S-h") 'describe-key)
  (define-key helm-map (kbd "C-l") (kbd "RET"))
  (define-key helm-map [escape] 'helm-keyboard-quit)
  (define-key evil-ex-map "b " 'helm-mini)
  (define-key evil-ex-map "spb " 'helm-mini-other-window)
  (define-key evil-ex-map "e " 'helm-find-files)
  (define-key evil-ex-map "sp " 'helm-find-files-other-window)

  (helm-mode 1)
  )
