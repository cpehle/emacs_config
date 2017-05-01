(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(load-theme 'sanityinc-tomorrow-night t)
(add-hook 'after-init-hook 'global-company-mode)

;; Helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)

;;
(global-flycheck-mode 1)

;;
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;;
(load "/Users/cpehle/Development/llvm/tools/clang/tools/clang-format/clang-format.el")
(global-set-key [C-M-tab] 'clang-format-region)
(global-set-key [C-M-b] 'clang-format-buffer)
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<f6>") 'recompile)

(scroll-bar-mode -1)
(menu-bar-mode -1)
(set-frame-font "PragmataPro 14" nil t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-irony evil-magit magit melpa-upstream-visit intero helm ensime company-math company-go color-theme-sanityinc-tomorrow))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
