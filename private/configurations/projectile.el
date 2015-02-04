(projectile-global-mode)
(setq projectile-enable-caching t)

(global-set-key (kbd "C-x C-g") 'find-file)
(global-set-key (kbd "C-x C-f") 'projectile-find-file)
(global-set-key (kbd "C-x C-d") 'projectile-find-dir)
(global-set-key (kbd "C-x C-b") 'projectile-switch-to-buffer)
