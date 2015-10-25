subject_test <- read.table(file="subject_test.txt")
X_test <- read.table(file="X_test.txt")
Y_test <- read.table(file="y_test.txt")
subject_train <- read.table(file="subject_train.txt")
X_train <- read.table(file="X_train.txt")
Y_train <- read.table(file="y_train.txt")
feat <- read.table(file="features.txt")
act<- read.table(file="activity_labels.txt")

feat2 <- as.character(feat[, 2])
Y_test$V1 <- as.factor(act$V2[Y_test$V1])
Y_train$V1 <- as.factor(act$V2[Y_train$V1])



X_test_cbind <- cbind(subject_test, X_test)
X_train_cbind <- cbind(subject_train, X_train)
Y_test_cbind <- cbind(subject_test, Y_test)
Y_train_cbind <- cbind(subject_train, Y_train)
Xbind <- rbind(X_test_cbind, X_train_cbind)
Ybind <- rbind(Y_test_cbind, Y_train_cbind)
XY<- cbind(Xbind, Ybind)

colnames(XY)<- c("subject", feat2, "c", "activity")



cleanSet <- XY[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543, 562, 564)]


tidySet <- cleanSet %>% group_by(subject, activity) %>% summarise_each(funs(mean))