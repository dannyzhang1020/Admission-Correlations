toefl <- ggplot(x, aes(x = TOEFL.Score, y = Chance.of.Admit)) + geom_point(size = 0.5) + labs(title = "UCLA Grad Admissions, Admission Rate VS TOEFL Score") + xlab("TOEFL Score") + ylab("Admission Rate") + geom_smooth(method='lm', formula= y~x)
gre <- ggplot(x, aes(x = GRE.Score, y = Chance.of.Admit)) + geom_point(size = 0.5) + labs(title = "UCLA Grad Admissions, Admission Rate VS GRE Score") + xlab("GRE Score") + ylab("Admission Rate") + geom_smooth(method='lm', formula= y~x)
lm(data = x, formula = TOEFL.Score ~ Chance.of.Admit)
lm(data = x, formula = GRE.Score ~ Chance.of.Admit)
grid.arrange(toefl, gre, ncol=2)
t.test(x[[2]],x[[9]])
t.test(x[[3]],x[[9]])
plot(x)
