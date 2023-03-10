library(ggcorrplot)
model.matrix(~0+., data=NC_dat1 %>% select(Prior,Exper,Sex)) %>% 
  cor(use="pairwise.complete.obs") %>% 
  ggcorrplot(show.diag=FALSE, type="lower", lab=TRUE, lab_size=2)


NC_dat1<-NC_dat1 %>% 
  mutate(Reas=forcats::fct_relevel(Reas))