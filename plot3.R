path<-"/home/vaibhav/household_power_consumption.txt"
table<-read.table(path,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
req_info<-table[table$Date %in% c("1/2/2007","2/2/2007"),]
req<-strptime(paste(req_info$Date,req_info$Time,sep=" "),"%d/%m/%Y %H:%M:%S") 
pow<-as.numeric(req_info$Global_active_power)
s1<-as.numeric(req_info$Sub_metering_1)
s2<-as.numeric(req_info$Sub_metering_2)
s3<-as.numeric(req_info$Sub_metering_3)
png("plot3.png",width=480,height=480)
plot(req,s1,type="l",ylab="Energy Submetering",xlab="")
lines(req,s2,type="l",col="red")
lines(req,s3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black", "red", "blue"))
dev.off()