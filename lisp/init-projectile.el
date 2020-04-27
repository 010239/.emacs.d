
;;
;; https://docs.projectile.mx/en/latest/
;;
(use-package projectile
  :ensure t
 ; :bind-keymap
 ; ("\C-c p" . projectile-command-map)
  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
 ; (projectile-mode t)
  (projectile-mode +1))

(provide 'init-projectile)
