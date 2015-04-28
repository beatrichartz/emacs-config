(setq gc-cons-threshold 20000000)

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(add-to-list 'load-path "~/.emacs.d/private")
(add-to-list 'load-path "~/Documents/Code/haskell/Tidal")
(add-to-list 'load-path "/usr/local/Cellar/erlang/17.1_1/lib/erlang/lib/tools-2.6.15/emacs")
(add-to-list 'load-path "/usr/local/Cellar/cask/0.7.2")

(require 'cask "cask.el")
(cask-initialize)
(require 'pallet)

(load "extensions/make-directory.el")
(load "extensions/delete-buffer-and-file.el")
(load "extensions/pbcopy.el")

(load "hooks/before-save.el")
(load "hooks/ruby.el")
(load "hooks/elixir.el")
(load "hooks/go.el")
(load "hooks/tidal.el")

(load "configurations/global.el")
(load "configurations/package.el")
(load "configurations/backup.el")
(load "configurations/smartparens.el")
(load "configurations/yasnippet.el")
(load "configurations/ido.el")
(load "configurations/web.el")
(load "configurations/erlang.el")
(load "configurations/projectile.el")
(load "configurations/ruby.el")
(load "configurations/company.el")
(load "configurations/tidal.el")
(load "configurations/haskell.el")

(load "bindings.el")

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
