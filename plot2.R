path<-"/home/vaibhav/household_power_consumption.txt"
table<-read.table(path,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
req_info<-table[table$Date %in% c("1/2/2007","2/2/2007"),]
req<-strptime(paste(req_info$Date,req_info$Time,sep=" "),"%d/%m/%Y %H:%M:%S") 
power<-as.numeric(req_info$Global_active_power)
png("plot2.png",width=480,height=480)
plot(req,power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()