(use-package helm
  :ensure t
  :config
  ; rebind tab to run persistent action
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  ; make TAB work in terminal
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
  ; list actions using C-z
  (define-key helm-map (kbd "C-z")  'helm-select-action)

  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 20)
  (helm-autoresize-mode 1)

  (helm-mode 1)
  )
