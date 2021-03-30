;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Niklas Bühler"
      user-mail-address "hi@niklasbuehler.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; For using :RESET_CHECK_BOXES: property
(add-load-path! "contrib/org-checklist.el")
(require 'org-checklist)

;; Set up files and Capture mode
(setq org-archive-location (concat org-directory "archive.org::"))
(setq org-default-notes-file (concat org-directory "notes.org"))
(setq +org-capture-todo-file (concat org-directory "agenda/todo.org"))
(setq +org-capture-journal-file (concat org-directory "journal.org"))
(setq +org-capture-notes-file (concat org-directory "notes.org"))
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline +org-capture-todo-file "Inbox")
         "* TODO %?\n  %i\n")
        ("j" "Journal" entry (file+datetree +org-capture-journal-file)
         "* %U %?\n  %i\n"
         :empty-lines 1)
        ("n" "Note" entry (file+datetree +org-capture-notes-file)
         "* %?\n%U %i\n"
         :empty-lines 1)))

;; Schedule reminders 30 minutes before the appointment
(setq appt-message-warning-time 30)
(setq appt-display-interval 10)
;; Clear list of appointments before readding them
(defadvice org-agenda-to-appt (before wickedcool activate)
  "Clear the appt-time-msg-list."
  (setq appt-time-msg-list nil))
;; Create appointment reminders for agenda items every 30 minutes
(run-with-timer 0 1800 (lambda() (org-agenda-to-appt)))
