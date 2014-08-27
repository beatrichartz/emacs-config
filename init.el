(add-to-list 'load-path "~/.emacs.d")

(load "private/extensions/make-directory.el")
(load "private/extensions/delete-buffer-and-file.el")
(load "private/hooks/before-save.el")

(global-auto-revert-mode t)

(global-set-key (kbd "C-c k") 'delete-this-buffer-and-file)
(global-set-key (kbd "C-z") 'undo)

(require 'cask "cask.el")
(cask-initialize)

(require 'pallet)

(require 'smartparens-config)
(smartparens-global-mode)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "dict")
(setq-default ac-sources '(
		     ac-source-yasnippet
		     ac-source-abbrev
		     ac-source-dictionary
		     ac-source-symbols
		     ac-source-words-in-same-mode-buffers
		    ))
(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)

(require 'yasnippet)
(yas-global-mode 1)

(projectile-global-mode)
(setq projectile-enable-caching t)

(require 'flx-ido)
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(ido-vertical-mode 1)

(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

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
