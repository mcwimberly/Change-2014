require(raster)

#Reading the rasters
t1 = raster("test91.gis")
#t2 = raster("test92.gis")
#t3 = raster("test93.gis")
#t4 = raster("test94.gis")
#t5 = raster("test95.gis")

Num = c()
for (i in 1:100){
	d1 = t1
	d1[!(t1 == i)] = NA ## assign all the other land cover class as NODATA
	stats = cellStats(d1, stat='sum', na.rm=TRUE) ##calcultate the cell numbers 
	stats=stats/i
	if(stats>0)
	{
		Num = c(Num,stats)
}	}
Num

#Reading the demand csv files
totalDemand=()
myval=0
res=c()
sum=NA
demand0=read.csv("demand0.csv",sep=',',header=F)

for (row in 1:nrow(demand0))
{
	for(col in 1:ncol(demand0))
	{
		if(row==col)
		{
					
			myval=demand0[[row]][[col]]
			res=c(res,myval)
					
		}
		
	}
}

col1=sum(demand0$V1)
col2=sum(demand0$V2)
col3=sum(demand0$V3)
col4=sum(demand0$V4)
col5=sum(demand0$V5)
col6=sum(demand0$V6)
col7=sum(demand0$V7)
col8=sum(demand0$V8)
col9=sum(demand0$V9)
col10=sum(demand0$V10)
col11=sum(demand0$V11)
col12=sum(demand0$V12)
col13=sum(demand0$V13)

#New resulting raster cells number
dem1=col1-res[1]
dem2=col2-res[2]
dem3=col3-res[3]
dem4=col4-res[4]
dem5=col5-res[5]
dem6=col6-res[6]
dem7=col7-res[7]
dem8=col8-res[8]
dem9=col9-res[9]
dem10=col10-res[10]
dem11=col11-res[11]
dem12=col12-res[12]
dem13=col13-res[13]

































 