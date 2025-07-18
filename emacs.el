(column-number-mode 1)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)

(require 'package)

(setq-default frames-only-mode t
              indent-tabs-mode nil
              inhibit-splash-screen t
              package-archives nil
              package-enable-at-startup nil)

(package-initialize)

(load-theme 'wombat)

(global-set-key (kbd "C-x C-k") 'kill-this-buffer)
(global-set-key (kbd "s-u") 'revert-buffer)

(set-face-attribute 'default nil :family "Iosevka Nerd Font Mono" :height 100)

(eval-when-compile
  (require 'use-package))

(setq-default use-package-always-ensure t)

(use-package company
  :custom
  (company-idle-begin 0.5)
  :bind
  (:map company-active-map
        ("C-n" . company-select-next)
        ("C-p" . company-select-previous)
        ("M-<" . company-select-first)
        ("M->" . company-select-last)))

(use-package crux
  :config
  (global-set-key (kbd "C-a") 'crux-move-beginning-of-line))

(use-package direnv
  :config
  (direnv-mode))

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(use-package fill-column-indicator
  :config
  (setq-default fill-column 80)
  (global-display-fill-column-indicator-mode))

(use-package flycheck)

(use-package hl-todo
  :demand
  :config (global-hl-todo-mode t))

(eval-and-compile
  (defun yurrriq/lilypond-load-path ()
    (file-name-as-directory
      (expand-file-name "site-lisp"
        (expand-file-name "emacs"
          (expand-file-name "share"
            (file-name-directory
              (directory-file-name
                (file-name-directory
                  (executable-find "lilypond"))))))))))

(use-package lilypond-mode
  :load-path (lambda () (list (yurrriq/lilypond-load-path)))
  :mode ("\\.i?ly\\'" . LilyPond-mode)
  :demand)

(use-package lsp-mode
  :hook ((nix-mode . lsp-deferred))
  :commands (lsp lsp-deferred)
  :config
  (advice-add 'lsp :before #'direnv-update-environment)
  (setq lsp-modeline-code-actions-enable nil))

(use-package lsp-ui
  :hook (nix-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-doc-position 'bottom))

(use-package multiple-cursors
  :demand
  :config (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines))

(use-package nix-mode)

(use-package nyan-mode
  :demand
  :config (nyan-mode 1))

(use-package paredit
  :hook (emacs-lisp-mode . paredit-mode))

(use-package pdf-tools
  :magic ("%PDF" . pdf-view-mode)
  :hook
  (pdf-view-mode .
    (lambda ()
      (pdf-view-fit-width-to-window)
      (auto-revert-mode)))
  :config
  (pdf-tools-install :no-query))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package smex
  :demand
  :config
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command))

(use-package whitespace-cleanup-mode
  :config (global-whitespace-cleanup-mode t))

(use-package yaml-mode)
