(setq gc-cons-threshold 20000000)

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "/usr/local/Cellar/erlang/17.1_1/lib/erlang/lib/tools-2.6.15/emacs")
(add-to-list 'load-path "/usr/local/Cellar/cask/0.7.2")

(require 'cask "cask.el")
(cask-initialize)
(require 'pallet)

(load "private/extensions/make-directory.el")
(load "private/extensions/delete-buffer-and-file.el")
(load "private/extensions/pbcopy.el")

(load "private/hooks/before-save.el")
(load "private/hooks/ruby.el")
(load "private/hooks/go.el")

(load "private/configurations/global.el")
(load "private/configurations/smartparens.el")
(load "private/configurations/yasnippet.el")
(load "private/configurations/ido.el")
(load "private/configurations/web.el")
(load "private/configurations/erlang.el")
(load "private/configurations/projectile.el")
(load "private/configurations/ruby.el")
(load "private/configurations/company.el")

(load "private/bindings.el")

(load-theme 'monokai t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8) (require-final-newline)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
