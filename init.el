(add-to-list 'load-path "~/.emacs.d")

(load "private/extensions/make-directory.el")
(load "private/extensions/delete-buffer-and-file.el")

(global-auto-revert-mode t)

(global-set-key (kbd "C-c k") 'delete-this-buffer-and-file)
(global-set-key (kbd "C-z") 'undo)

(require 'cask "cask.el")
(cask-initialize)

(require 'pallet)

(require 'smartparens-config)
(smartparens-global-mode)

(require 'yasnippet)
(yas-global-mode 1)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "dict")
(ac-config-default)

(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)

(global-set-key (kbd "C-x C-g") 'find-file)
(global-set-key (kbd "C-x C-f") 'projectile-find-file)
(global-set-key (kbd "C-x C-d") 'projectile-find-dir)
(global-set-key (kbd "C-x C-b") 'projectile-switch-to-buffer)

(require 'bundler)

(load-theme 'monokai t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((require-final-newline)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
