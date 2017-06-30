########################################################################
### Settings for this wave
########################################################################
waveNumber <- "15.1";
rootPath <- "B:/Data/research/party panel";
surveyId <- 652829;
startDate <- '2015-07-01';
categoricalQuestions <- c('informedConsent', 'gender', 'hasJob',
                          'currentEducation', 'prevEducation', 'country');

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

render(input=file.path(sharedPath, 'preliminary party panel report.Rmd'),
       output_file=file.path(outputPath, paste('party pane',
                                               waveNumber,
                                               'report.html')),
       params=list(waveNumber=waveNumber,
                   basePath=basePath,
                   surveyId=surveyId,
                   startDate=startDate,
                   categoricalQuestions=categoricalQuestions));
