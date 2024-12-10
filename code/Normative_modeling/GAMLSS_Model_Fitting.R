
library(gamlss)
library(R.matlab)

args <- commandArgs(TRUE)
Datadir <- args[1]
idp_name <- args[2]
Outdir <- args[3]

# Load the Subinfo.CSV file, which contains subject-level information. The file includes the following columns: SubID, AGE,Sex,EulerNumber,SITE
covdir <- "/home/xyliang/data/Subinfo.CSV" 
cov <- read.csv(covdir)
y <- read.csv(paste0(Datadir, "/", idp_name , ".csv"))
colnames(y) <- "phenotype"
M <- cbind(cov, y)

################################################################################ step 1: Model fitting
con<-gamlss.control(n.cyc=200)

mod1<-gamlss(phenotype~bs(AGE,df=3) + Sex + EulerNumber + random(as.factor(SITE)),
                sigma.fo=~bs(AGE) + Sex,
                nu.fo=~1,
                nu.tau=~1,
                family=JSU,
                data=M_HC,
                control=con)
mod2<-gamlss(phenotype~bs(AGE,df=4) + Sex + EulerNumber + random(as.factor(SITE)),
                sigma.fo=~bs(AGE) + Sex,
                nu.fo=~1,
                nu.tau=~1,
                family=JSU,
                data=M_HC,
                control=con)
mod3<-gamlss(phenotype~bs(AGE,df=5) + Sex + EulerNumber + random(as.factor(SITE)), 
                sigma.fo=~bs(AGE) + Sex,
                nu.fo=~1,
                nu.tau=~1,
                family=JSU,
                data=M_HC,
                control=con)


conv<-matrix(data=0,nrow=1,ncol=3)
for (i in 1:3) {
  command <- paste0( "conv[1, i] <- mod", as.character(i), "$converged" )
  eval(parse(text = command))
}
conv
bic_val<-matrix(data=0,nrow=1,ncol=3)
for (i in 1:3) {
  command <- paste0( "bic_val[1, i] <- mod", as.character(i), "$sbc" )
  eval(parse(text = command))
}

bic_val
fit_best_order <- as.character(which.min(bic_val))
fit_best_order


################################################################################ step 2: get quantiles by sex
quantiles<-c(0.01, 0.05, 0.25, 0.5, 0.75, 0.95, 0.99)
site_unique<-as.character( unique(M_HC$SITE) )
n_sites <- length(site_unique)
n_quantiles <- length(quantiles)
n_points <- 8001
x_male <- array(NA, dim = c(n_sites, n_quantiles, n_points))
y_male <- array(NA, dim = c(n_sites, n_quantiles, n_points))
x_female <- array(NA, dim = c(n_sites, n_quantiles, n_points))
y_female <- array(NA, dim = c(n_sites, n_quantiles, n_points))


for (idx_site in 1:length(site_unique)){
  print(idx_site)
  for (i in 1:length(quantiles)){
    command <- paste0("Qua <- getQuantile(mod", fit_best_order ,", quantile=quantiles[i],term='AGE',fixed.at=list(Sex=0, SITE=site_unique[idx_site]), n.points = 8000)")
    eval(parse(text = command))
    c<-curve(Qua, 0, 80,  lwd=2, lty=1, add=T,col="red", ylim=c (0.06,0.16), n = 8001)
    x_female[idx_site,i,]<-c$x
    y_female[idx_site,i,]<-c$y
    
    command <- paste0("Qua <- getQuantile(mod", fit_best_order ,", quantile=quantiles[i],term='AGE',fixed.at=list(Sex=1, SITE=site_unique[idx_site]), n.points = 8000)")
    eval(parse(text = command))
    c<-curve(Qua, 0, 80,  lwd=2, lty=1, add=T,col="black", ylim=c (0.06,0.16), n = 8001)
    x_male[idx_site,i,]<-c$x
    y_male[idx_site,i,]<-c$y
  }
  dev.off()
}


################################################################################ step 3 :save data
command <- paste0( "best_model <- mod", fit_best_order)
eval(parse(text = command))
save(best_model, file = paste0(Outdir, "/gamlss_fit_allData_", idp_name ,"_way2.RData")) # save model

# step : get fitted data for only Age Iterm
Term_contri <- predict(best_model, what = c("mu", "sigma", "nu", "tau"), newdata = M_HC, type="term")
Age_Term <- M_HC$phenotype - Term_contri[,4] - Term_contri[,3] - Term_contri[,2]


fname<-paste0(Outdir,"/gamlss_fit_allData_", idp_name ,"_way2.mat")
writeMat(fname,conv=conv,bic_val=bic_val,fit_best_order=fit_best_order,params=params,male_cen_x=x_male,female_cen_x=x_female, male_cen_y=y_male,female_cen_y=y_female,age=M_HC$AGE,sex=M_HC$Sex,data=M_HC$phenotype,plot_Age_Term=Age_Term,quantiles=quantiles)




