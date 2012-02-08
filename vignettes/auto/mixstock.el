(TeX-add-style-hook "mixstock"
 (lambda ()
    (LaTeX-add-bibliographies)
    (LaTeX-add-labels
     "fig:data1"
     "fig:condensed"
     "fig:cml1"
     "fig:umlboot"
     "fig:mcmc1"
     "sec:quickstart")
    (TeX-add-symbols
     '("code" 1)
     '("fixme" 1)
     "R"
     "Splus"
     "windows"
     "Rver")
    (TeX-run-style-hooks
     "alltt"
     "url"
     "babel"
     "american"
     "lineno"
     "palatino"
     "latex2e"
     "art11"
     "article"
     "11pt")))

