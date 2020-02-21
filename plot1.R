path<-"/home/vaibhav/household_power_consumption.txt"
table<-read.table(path,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
req_info<-table[table$Date %in% c("1/2/2007","2/2/2007"),]
pow<-as.numeric(req_info$Global_active_power)
png("plot1.png",width=480,height=480)
hist(pow,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()