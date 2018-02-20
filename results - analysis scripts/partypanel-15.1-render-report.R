########################################################################
### Settings for this wave
########################################################################
waveNumber <- "15.1";
surveyId <- 652829;
startDate <- '2015-06-28';
categoricalQuestions <- c('informedConsent', 'gender', 'hasJob',
                          'currentEducation', 'prevEducation', 'country');
behaviors <- c('highDose', 'strngXTC', 'testing');

options(ufs.debug = FALSE);

########################################################################
### Derivations and packages
########################################################################
require('here');
require('rmarkdown');

if (!exists('rootPath') || is.null(rootPath)) {
  basePath <- here::here();
  rootPath <- file.path(basePath, "..");
} else {
  #rootPath <- "B:/Data/research/party panel";
  basePath <- file.path(rootPath,
                        paste0("partypanel-", waveNumber));
}
sharedPath <- file.path(rootPath, "partypanel-shared");
outputPath <- file.path(basePath, 'results - reports');
scriptPath <- file.path(basePath, 'results - analysis scripts');

reportLoginStringFilePath <-
  file.path(sharedPath, 'report-upload-login-string.txt')
resultsLoginStringFilePath <-
  file.path(sharedPath, 'results-upload-login-string.txt')

########################################################################
### Rendering command
########################################################################

render(input=file.path(sharedPath, 'party-panel-report.Rmd'),
       output_file=file.path(outputPath, paste('party panel',
                                               waveNumber,
                                               'report.html')),
       params=list(waveNumber=waveNumber,
                   basePath=basePath,
                   sharedPath=sharedPath,
                   surveyId=surveyId,
                   startDate=startDate,
                   behaviors=behaviors,
                   categoricalQuestions=categoricalQuestions),
       encoding="UTF-8");

### Save dataframe for potential later use.
assign(paste0("dat.pp", waveNumber), dat);
if (exists('ppDataframes')) {
  ppDataframes[length(ppDataframes) + 1] <- paste0("dat.pp", waveNumber);
}

### Save recruitment information for potential later use.
assign(paste0("ppRecrInfo.", waveNumber), recruitmentInfo);
if (exists('ppRecrInfo')) {
  ppRecrInfo[length(ppRecrInfo) + 1] <- paste0("ppRecrInfo.", waveNumber);
}

########################################################################
### Uploading report to secure site
########################################################################

uploadPassword <- readLines(reportLoginStringFilePath);

if (require('RCurl')) {
  if (url.exists('partypanel.nl')) {
    ftpUpload(file.path(rootPath,
                        paste0("partypanel-", waveNumber),
                        "results - reports",
                        paste0("party panel ", waveNumber, " report.html")),
              paste0("ftp://partypanel.nl/", waveNumber, "/index.html"),
              userpwd=uploadPassword)
    cat("Uploaded report for wave ", waveNumber, " to the secured site using FTP.\n", sep="");
  }
}

########################################################################
### Uploading report for publication (only uncomment after embargo)
########################################################################

uploadPassword <- readLines(resultsLoginStringFilePath);

if (require('RCurl')) {
  if (url.exists('partypanel.nl')) {
    ftpUpload(file.path(rootPath,
                        paste0("partypanel-", waveNumber),
                        "results - reports",
                        paste0("party panel ", waveNumber, " report.html")),
              paste0("ftp://partypanel.nl/", waveNumber, "/report.html"),
              userpwd=uploadPassword)
    cat("Uploaded report for wave ", waveNumber, " to the public site using FTP.\n", sep="");
  }
}
