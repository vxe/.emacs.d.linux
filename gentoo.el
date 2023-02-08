(defun gentoo-new-package (package)
         (interactive "spackage:name ")
         (find-file (concat  "~/Dropbox/Wiki/gentoo-" package)))

(defun dropbox-start ()
    (interactive)
    (async-shell-command (concat "~/bin/dropbox.py start")))

(defun dropbox-status ()
    (interactive)
    (async-shell-command (concat "~/bin/dropbox.py status")))

(defun dropbox-unexclude (file)
  (interactive "sfile: ")
  (async-shell-command (concat "~/bin/dropbox.py exclude remove " file)))
