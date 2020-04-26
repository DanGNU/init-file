
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-auto-save t)
 '(TeX-source-correlate-mode t)
 '(TeX-view-program-selection '((output-pdf "PDF Tools")))
 '(auto-save-interval 150)
 '(auto-save-visited-file-name t)
 '(auto-save-visited-mode t)
 '(aweshell-valid-command-color "#007A00")
 '(backup-directory-alist '(("." . "/home/daniel/yandex/backup/")))
 '(battery-mode-line-format "-%p- ")
 '(custom-safe-themes
   '("d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" default))
 '(dashboard-org-agenda-categories '("notes" "classes-plan"))
 '(dashboard-page-separator "
")
 '(debug-on-error t)
 '(default-frame-alist
    '((font . "Iosevka-10")
      (left-fringe . 1)
      (right-fringe . 1)))
 '(default-input-method "russian-computer")
 '(delete-old-versions t)
 '(delete-selection-mode nil)
 '(desktop-environment-brightness-get-command "light")
 '(desktop-environment-brightness-get-regexp "^\\([0-9]+\\)")
 '(desktop-environment-brightness-normal-decrement "-U 10")
 '(desktop-environment-brightness-normal-increment "-A 10")
 '(desktop-environment-brightness-set-command "light %s")
 '(desktop-environment-brightness-small-decrement "-U 5")
 '(desktop-environment-brightness-small-increment "-A 5")
 '(desktop-environment-mode t nil (desktop-environment))
 '(desktop-environment-screenshot-directory "~/Documents")
 '(desktop-environment-update-exwm-global-keys :prefix)
 '(dired-kept-versions 4)
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-default-load-average nil)
 '(display-time-mode t)
 '(doom-themes-padded-modeline t)
 '(exwm-edit-split "below")
 '(exwm-input-global-keys
   '(([8388709]
      . exwm-edit--compose)
     ([8388722]
      . exwm-reset)
     ([8388707]
      . exwm-input-release-keyboard)
     ([8388727]
      . exwm-workspace-switch)
     ([8388719]
      lambda
      (command)
      (interactive
       (list
	(read-shell-command "$ ")))
      (start-process-shell-command command nil command))
     ([8388656]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 0))
     ([8388657]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 1))
     ([8388658]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 2))
     ([8388659]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 3))
     ([8388660]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 4))
     ([8388661]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 5))
     ([8388662]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 6))
     ([8388663]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 7))
     ([8388664]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 8))
     ([8388665]
      lambda nil
      (interactive)
      (exwm-workspace-switch-create 9))))
 '(exwm-input-line-mode-passthrough nil)
 '(exwm-manage-force-tiling t)
 '(fill-column 90)
 '(global-exwm-edit-mode t nil (exwm-edit))
 '(global-visual-fill-column-mode t)
 '(global-visual-line-mode t)
 '(ido-enable-flex-matching t)
 '(ido-enable-prefix nil)
 '(ido-everywhere t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice
   '(lambda nil
      (org-agenda-list 5)
      (get-buffer "*Org Agenda*")))
 '(initial-major-mode 'fundamental-mode)
 '(initial-scratch-message "Write notes here.
")
 '(kept-new-versions 4)
 '(kept-old-versions 0)
 '(message-fill-column 80)
 '(mood-line-show-encoding-information nil)
 '(mood-line-show-eol-style nil)
 '(org-agenda-files '("~/yandex/work.org" "~/yandex/notes.org"))
 '(org-babel-load-languages '((emacs-lisp . t) (lisp . t)))
 '(org-capture-templates
   '(("b" "List of books to read" entry
      (file "/home/daniel/yandex/books.org")
      "* TOREAD %?" :empty-lines 1)
     ("e" "Things to do related to English classes" entry
      (file+headline "/home/daniel/yandex/notes.org" "English")
      "* TODO %?
SCHEDULED: %^t DEADLINE: %^t" :empty-lines 1)
     ("s" "Things to do related to Spanish classes" entry
      (file+headline "/home/daniel/yandex/notes.org" "Spanish")
      "* TODO %?
SCHEDULED: %^t DEADLINE: %^t" :empty-lines 1)
     ("i" "Random ideas to maybe develop or complete" entry
      (file+headline "/home/daniel/yandex/notes.org" "Ideas")
      "* TODO %?
SCHEDULED: %^t" :empty-lines 1)))
 '(org-catch-invisible-edits 'show)
 '(org-ctrl-k-protect-subtree t)
 '(org-cycle-separator-lines 0)
 '(org-default-notes-file "/home/daniel/yandex/notes.org")
 '(org-enforce-todo-dependencies t)
 '(org-file-apps
   '((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . "(lambda (file link) (org-pdfview-open link))")
     ("\\.djvu\\'" . "GTK_THEME=Adwaita:dark evince %s")
     ("\\.mp3\\'" . "vlc --start-paused %s")
     ("\\.mp4\\'" . "vlc --start-paused %s")
     ("\\.mpeg\\'" . "vlc --start-paused %s")))
 '(org-format-latex-options
   '(:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.5 :matchers
		 ("begin" "\\(" "\\[")))
 '(org-hierarchical-todo-statistics nil)
 '(org-log-into-drawer "THOUGHTS")
 '(org-preview-latex-default-process 'dvipng)
 '(org-provide-todo-statistics
   '(("TOREAD" "TODO" "TOPREPARE" "READY" "READING" "FINISHED")
     ("DONE" "GIVEN" "ANALIZED")))
 '(org-return-follows-link t)
 '(org-special-ctrl-a/e t)
 '(org-special-ctrl-k t)
 '(org-special-ctrl-o t)
 '(org-startup-indented t)
 '(org-structure-template-alist
   '(("s" . "src")
     ("e" . "example")
     ("q" . "quote")
     ("v" . "verse")
     ("V" . "verbatim")
     ("c" . "center")
     ("C" . "comment")
     ("l" . "export latex")
     ("h" . "export html")
     ("a" . "export ascii")))
 '(org-tags-column -80)
 '(org-use-fast-todo-selection 'prefix)
 '(package-selected-packages
   '(emojify cdlatex fix-input simple-modeline dashboard org-download minions 2048-game ducpel jumblr sudoku threes typit yahtzee mines telega fontawesome desktop-environment exwm-edit emacs-lisp-mode use-package mood-line company-quickhelp readline-complete slime-company company-auctex company-emoji company-math company-shell company org-pdfview pdf-tools tablist all-the-icons-ibuffer doom-themes all-the-icons auctex rainbow-delimiters slime smartparens vterm exwm))
 '(save-place-mode t)
 '(send-mail-function 'mailclient-send-it)
 '(shift-select-mode nil)
 '(show-paren-highlight-openparen nil)
 '(simple-modeline-mode t)
 '(simple-modeline-show-minor-modes nil)
 '(smartparens-global-mode nil)
 '(smartparens-global-strict-mode t)
 '(sp-base-key-bindings 'sp)
 '(sp-highlight-pair-overlay nil)
 '(sp-highlight-wrap-overlay nil)
 '(sp-highlight-wrap-tag-overlay nil)
 '(sp-navigate-close-if-unbalanced t)
 '(telega-chat-fill-column 80)
 '(telega-chat-prompt-show-avatar-for '(and has-avatar (permission :can_send_messages)))
 '(telega-chat-use-markdown-version 1)
 '(telega-emoji-font-family "\"Noto Color Emoji\"")
 '(telega-emoji-fuzzy-match t)
 '(telega-emoji-use-images nil)
 '(telega-notifications-call-args nil)
 '(telega-notifications-defaults
   (cons
    (list :mute_for 5 :show_preview t)
    (list :mute_for 5 :show_preview t)))
 '(telega-notifications-delay 0.2)
 '(telega-notifications-msg-args '(:timeout 5000 :urgency normal))
 '(telega-notifications-msg-body-limit 30)
 '(telega-notifications-timeout 5.0)
 '(telega-root-fill-column 80)
 '(telega-url-shorten-mode-for 'all)
 '(telega-url-shorten-patterns
   '(("https?://github.com/\\(.+\\)/issues/\\([0-9]+\\)" "\\1#\\2" :symbol "")
     ("https?://gitlab.com/\\(.+\\)/issues/\\([0-9]+\\)" "\\1#\\2" :symbol "")
     ("https?://www.youtube.com/watch.*[?&]v=\\([^&]+\\).+" "YouTube#\\1" :symbol "▶")
     ("https?://youtu.be/\\(.+\\).+" "YouTube#\\1" :symbol "▶")
     ("https?://\\([^.]+.\\)?wikipedia.org/wiki/\\(.+\\)" "wiki#\\2" :symbol "")
     ("https?://\\(www\\.\\)?instagram.com/\\(.+\\)" "Instagram#\\2" :symbol "")))
 '(telega-webpage-fill-column 80)
 '(typit-dict "english.txt")
 '(typit-dict-dir "/home/daniel/.emacs.d/elpa/typit-20200217.2059/dict/")
 '(typit-test-time 120)
 '(version-control t)
 '(visual-fill-column-center-text t)
 '(visual-fill-column-fringes-outside-margins nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Info-quoted ((t (:family "DejaVu Sans Mono"))))
 '(epe-pipeline-time-face ((t (:foreground "orange"))))
 '(hl-line ((t (:background "gray10"))))
 '(italic ((t (:slant italic))))
 '(org-code ((t (:inherit shadow :foreground "#D85F00" :width extra-expanded))))
 '(sp-pair-overlay-face ((t (:background "gray10"))))
 '(telega-entity-type-code ((t (:family "DejaVu Sans Mono"))))
 '(telega-entity-type-pre ((t (:family "DejaVu Sans Mono")))))

(eval-when-compile
  (require 'use-package))

(use-package exwm
  :if window-system
  :ensure t
  :init
  (add-to-list 'default-frame-alist '(buffer-predicate . exwm-layout--other-buffer-predicate))
  :config
  (use-package exwm-config
    :if window-system
    :config
    (exwm-config-default))
  (use-package exwm-systemtray
    :if window-system
    :config
    (exwm-systemtray-enable))
  (use-package exwm-xim
    :if window-system
    :config
    (exwm-xim-enable)
    (push ?\C-\\ exwm-input-prefix-keys)))

(use-package exwm-edit
  :ensure t
  :after (exwm)
  :hook ((exwm-edit-compose . flyspell-mode)
	 (exwm-edit-compose . smartparens-strict-mode)
	 (exwm-edit-compose . rainbow-delimiters-mode))
  :config
  (global-exwm-edit-mode 1)
  (exwm-input-set-key (kbd "C-c C-'") #'exwm-edit--compose))

(use-package desktop-environment
  :ensure t
  :after (exwm)
  :config
  (desktop-environment-mode))

;; (use-package dashboard
;;   :ensure t
;;   :config
;;   (setq dashboard-center-content t)
;;   (setq dashboard-set-file-icons t)
;;   (setq dashboard-set-heading-icons t)
;;   (setq dashboard-set-navigator t)
;;   (setq show-week-agenda-p t)
;;   (setq dashboard-org-agenda-categories '("notes" "classes-plan"))
;;   (setq dashboard-items '((recents . 10)
;; 			  (agenda . 15)))
;;   (dashboard-setup-startup-hook))

(use-package vterm
  :ensure t)

(use-package smartparens-config
  :ensure smartparens)

(use-package rainbow-delimiters
  :ensure t)

(use-package emojify
  :ensure t
  :config
  (global-emojify-mode +1)
  (global-emojify-mode-line-mode +1))

(use-package company-emoji
  :ensure t
  :config (add-to-list 'company-backends 'company-emoji))

(use-package telega
  :ensure t
  :hook ((telega-load . global-telega-squash-message-mode)
         (telega-chat-mode . (lambda ()
			       (set (make-local-variable 'company-backends)
				    (append '(telega-company-emoji
					      telega-company-username
					      telega-company-hashtag)
					    (when (telega-chat-bot-p telega-chatbuf--chat)
					      '(telega-company-botcmd))))
			       (company-mode 1))))
  :config
  (telega-notifications-mode 1))

;; Workaround stuck notifications, force closing after
;; `telega-notifications-timeout' timeout
;;(run-with-timer telega-notifications-timeout nil
;;                'telega-notifications--close
;;                telega-notifications--last-id)

(use-package doom-themes
  :if window-system
  :ensure t
  :config
  (load-theme 'doom-opera-light t)
  (doom-themes-org-config)
  (doom-themes-visual-bell-config)
  (scroll-bar-mode -1))

(use-package ibuffer
  :bind ("C-x C-b" . ibuffer)
  :config
  (all-the-icons-ibuffer-mode 1)
  (setq all-the-icons-ibuffer-icon-size 1.0)
  (setq all-the-icons-ibuffer-icon-v-adjust 0.1)
  (setq all-the-icons-ibuffer-human-readable-size t))

(use-package mood-line
  :config
  (setq mood-line-show-input-method t)
  (mood-line-mode 1))

;; (use-package simple-modeline
;;   :ensure t
;;   :hook (after-init . simple-modeline-mode))

;; (use-package minions
;;   :ensure t
;;   :config
;;     (minions-mode 1))

(use-package pdf-tools
  :ensure t
  :magic ("%PDF" . pdf-view-mode)
  :config (pdf-tools-install))

(use-package slime
  :ensure t
  :init
  (setq inferior-lisp-program "/bin/sbcl")
  (add-hook 'slime-mode-hook (lambda ()
			       (unless (slime-connected-p)
				 (save-excursion (slime)))))
  :hook ((slime-mode . rainbow-delimiters-mode)
	 (slime-repl-mode . rainbow-delimiters-mode))
  :config
  (use-package slime-autoloads
    :config
    (setq slime-contribs '(slime-repl inferior-slime slime-c-p-c slime-autodoc slime-asdf slime-banner slime-editing-commands slime-fancy-inspector slime-presentations slime-references slime-scratch slime-trace-dialog slime-quicklisp))))

(use-package ispell
  :config
  (setq ispell-program-name "hunspell")
  (setq ispell-dictionary "en_GB,russian-aot,es_ANY")
  (ispell-set-spellchecker-params)
  (ispell-hunspell-add-multi-dic "en_GB,russian-aot,es_ANY"))

(use-package org
  :bind (("C-c l" . org-store-link)
	 ("C-c c" . org-capture)
	 ("C-c a" . org-agenda))
  :init 
  (setq org-default-notes-file "/home/daniel/yandex/notes.org")
  (setq org-todo-keywords
	'((sequence "TODO(t)" "|" "DONE(d)")
	  (sequence "TOPREPARE(p)" "READY(r)" "|" "GIVEN(g@)")
	  (sequence "TOREAD(b)" "READING(d!)" "FINISHED(f!)" "|" "ANALIZED(a@)")))
  (setq org-todo-keyword-faces
	'(("TODO" . "orange red") ("DONE" . "blue")
	  ("TOPREPARE" . "red") ("READY" . "gold") ("GIVEN" . "green")
	  ("TOREAD" . "black") ("READING" . "purple") ("FINISHED" . "brown") ("ANALIZED" . "gray")))
  (defun org-summary-todo (n-done n-not-done)
    "Switch entry to DONE when all subentries are done, to TODO otherwise."
    (let (org-log-done org-log-states)   ; turn off logging
      (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
  :hook ((org-after-todo-statistics . org-summary-todo)
	 (org-mode . flyspell-mode)
	 (org-mode . visual-line-mode)
	 (org-mode . turn-on-org-cdlatex)))

(use-package org-pdfview
  :ensure t
  :after (org))

(use-package org-download
  :ensure t
  :after (org)
  :hook ((dired-mode . org-download-enable)
	 (org-mode . org-download-enable)))

(use-package tex
  :ensure auctex
  :hook
  ((LaTeX-mode . flyspell-mode)
   (LaTeX-mode . TeX-source-correlate-mode)
   (LaTeX-mode . LaTeX-math-mode)
   (LaTeX-mode . rainbow-delimiters-mode)
   (LaTeX-mode . (lambda () (set (make-local-variable 'TeX-electric-math)
				 (cons "\\(" "\\)"))))
   (TeX-after-compilation-finished . TeX-revert-document-buffer))
  :config
  (setq TeX-parse-self t)
  (setq-default TeX-master t)
  (setq-default TeX-engine 'xetex)
  (setq-default TeX-PDF-mode t)
  (setq TeX-electric-sub-and-superscript t))

(use-package aweshell
  :load-path "/home/daniel/.emacs.d/aweshell")

(use-package company
  :ensure t
  :hook (after-init . global-company-mode))

(use-package quail
  :config
  (add-to-list 'quail-keyboard-layout-alist '("workman" . "                                1!2@3#4$5%6^7&8*9(0)-_=+`~    qQdDrRwWbBjJfFuUpP;:[{]}      aAsShHtTgGyYnNeEoOiI'\"\\|      zZxXmMcCvVkKlL,<.>/?                                      "))
  (quail-set-keyboard-layout "workman"))

;; Set rainbow delimiters for emacs lisp
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

;; Use noto emojis to show the unicode characters.
;; (set-fontset-font t 'symbol (font-spec :family "Noto Color Emoji") nil 'prepend)

;; Set registers to open some files faster
(set-register ?w '(file . "/home/daniel/yandex/work.org"))
(set-register ?b '(file . "/home/daniel/yandex/books.org"))
(set-register ?n '(file . "/home/daniel/yandex/notes.org"))
(set-register ?i '(file . "/home/daniel/.emacs.d/init.el"))
