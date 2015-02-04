;; (require 'erlang-start)

(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))

(setq erlang-root-dir "~/Documents/Code/erlang")
(add-to-list 'exec-path "~/Documents/Code/erlang/bin")
(setq erlang-man-root-dir "~/Documents/Code/erlang/man")
