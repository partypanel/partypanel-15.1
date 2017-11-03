########################################################################
### Settings for this wave
########################################################################
waveNumber <- "15.1";
rootPath <- "B:/Data/research/party panel";
surveyId <- 652829;
startDate <- '2015-07-01';
categoricalQuestions <- c('informedConsent', 'gender', 'hasJob',
                          'currentEducation', 'prevEducation', 'country');
behaviors <- c('highDose', 'strngXTC', 'testing');
options(ufs.debug = FALSE);

########################################################################
### Derivations and packages
########################################################################
basePath <- file.path(rootPath, paste0("partypanel-", waveNumber));
sharedPath <- file.path(rootPath, "partypanel-shared");
outputPath <- file.path(basePath, 'results - reports');
scriptPath <- file.path(basePath, 'results - analysis scripts');

require('rmarkdown');

########################################################################
### Rendering command
########################################################################

render(input=file.path(sharedPath, 'party-panel-report.Rmd'),
       output_file=file.path(outputPath, paste('party panel',
                                               waveNumber,
                                               'report.html')),
       params=list(waveNumber=waveNumber,
                   basePath=basePath,
                   surveyId=surveyId,
                   startDate=startDate,
                   behaviors=behaviors,
                   categoricalQuestions=categoricalQuestions));

########################################################################
### Uploading report
########################################################################

if (require('RCurl')) {
  if (url.exists('partypanel.nl')) {
    ftpUpload(file.path(rootPath,
                        paste0("partypanel-", waveNumber),
                        "results - reports",
                        paste0("party panel ", waveNumber, " report.html")),
              paste0("ftp://partypanel.nl/", waveNumber, "/index.html"),
              userpwd="ppreports@partypanel.nl:ppreports_Password@2015");
    cat("Uploaded report for wave ", waveNumber, " using FTP.\n", sep="");
  }
}
