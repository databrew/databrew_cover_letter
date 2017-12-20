# Write generate paper function
generate_letter <- function(to = 'Sir/Madam',
                            author = 'Xing Brew',
                            title = 'Chief Operating Officer, Databrew',
                            job = 'Analyst',
                            company = 'Acme Inudstries',
                            last_paragraph = ''){
  has_last <- FALSE
  if(!is.null(last_paragraph)){
    if(last_paragraph != ''){
      has_last <- TRUE
    }
  }
  if(has_last){
    last_paragraph <- paste0('\\noindent ', last_paragraph, '\\\\\n\n')
  } else {
    last_paragraph <- ''
  }
  
  out <- 
    paste0('\\noindent Dear ', to, ',\\\\\n\n',
           '\\noindent I am writing in regards to the ',
           job, ' position. I read about the position with a great deal of excitement and interest, and I believe we (', 
           '\\href{http://databrew.cc}{Databrew}',
           ') are a good match. I hope that you will agree.\\\\\n\n',
           '\\noindent We are a small data science consultancy which focuses on empowering individuals and organizations to take control of their data through collaborations in areas ranging from economics to epidemiology. We have previously worked for organizations such as the World Bank, York University, the Toronto Hospital for Sick Children, and the Mozambican Alliance Towards the Elimination of Malaria to manage data, build dashboards, plan and conduct analyses, and inform decisions.\\\\\n\n',
           '\\noindent You can read more about us at ',
           '\\href{http://databrew.cc}{databrew.cc}',
           '. You can also see our company "resume" at ',
           '\\href{http://databrew.cc/cv.pdf}{databrew.cc/cv.pdf}.\\\\\n\n',
           last_paragraph,
           '\\noindent ',
           author,
           '\\\\',
           title,
           '

           '
           
           )
  return(out)
  
}
