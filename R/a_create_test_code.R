# Emi Tanaka (@statsgen) and Garrick Aden-Buie (@grrrck) and Evangeline Reynolds (@EvaMaeRey)
# have contributed to this code

# how to solve "no visible binding for global variable" note
utils::globalVariables(
c('func', '.', 'raw_code', 'non_seq', 'func', '.','raw_code', '.',
  'replacements','line','code','highlight','connector','line','func',
  '.','raw_code','open_par','closed_par', 'auto','connector','line1',
  'text','open_square','line','token','open_par','closed_par','open_curly',
  'closed_curly','closed_square','full_line','num_open_par','num_closed_par',
  'num_open_curly','num_closed_curly','num_open_square','num_closed_square',
  'balanced_paren','balanced_curly','balanced_square','all_parenteses_balanced',
  'raw_code', 'connector','all_parentheses_balanced', 'line', 'auto', 'user',
  'non_seq', 'rotate','raw_code', '.')

)



####### Make some test code available as character strings #####
create_code <- function(){ # for testing w/o knitting

  "cars %>%             # the data  #BREAK
  filter(speed > 4) %>%  # subset
  ggplot() +              # pipe to ggplot
  aes(x = speed) +
  aes(y = dist) +
  # Describing what follows
  geom_point(alpha = .3) + #BREAK
  geom_point(alpha = 1) + #BREAK2
  geom_jitter(alpha = .5) + #BREAK3
  aes(color =
  speed > 14
  ) %+%
  cars ->
  my_plot  #BREAK

  NULL #OMIT

  1 + 1 #BREAK"

}









create_code_rotate_omit <- function(){

  'ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(size = 8,
             shape = 21,
             alpha = .9,
             color = "snow") +
  aes(fill = speed) +
  scale_fill_viridis_c(option = "magma") + #OMIT
  scale_fill_viridis_c(option = "magma") + #ROTATE
  scale_fill_viridis_c(option = "cividis") + #ROTATE
  scale_fill_viridis_c(option = "plasma") + #ROTATE
  NULL'

}




create_injectable_code <- function(){

  "for (i in 1:10){
  print(i)
}  "

}


create_rotate_code <- function(){ # for testing w/o knitting

  "cars %>%             # the data  #BREAK
  filter(speed > 4) %>%  # subset
  ggplot() +              # pipe to ggplot
  aes(x = speed) +
  aes(y = dist) +
  # Describing what follows
  geom_point(alpha = .3) + #ROTATE
  geom_point(color = 'blue') + #ROTATE
  geom_point(shape = 'square') -> #ROTATE
  my_plot  #BREAK


  1 + 1 #BREAK"

}


create_short_code <- function(){ # for testing w/o knitting

  "cars %>%             # the data
  filter(speed > 4) %>%  # subset #BREAK
  ggplot() #BREAK"

}


create_ggplot_code <- function(){ # for testing w/o knitting

  "ggplot2::ggplot(cars) +  # initiate ggplot
  ggplot2::aes(x = speed) +
  ggplot2::aes(y = dist) +
  # Describing what follows
  ggplot2::geom_point(alpha = .3) "

}


create_python_code <- function(){

  "xobject = load_iris()
xobject = pd.DataFrame(xobject.data,
columns=xobject.feature_names)
def evenOdd( x ):
    if (x % 2 == 0):
        print \"even\"
    else:
        print \"odd\"

# Driver code
evenOdd(2)
xobject.pipe(remove_units).pipe(length_times_width)"

}

create_python_code_pipeline <- function(){

  "student_scores \\\n  .melt(id_vars=['student', \"sex\"], \n        var_name=\"subject\", \n        value_name=\"final_grade\") \\\n  .sort_values(by=['final_grade'], ascending=False) \\\n  .head(3)"

}


create_data_table_code <- function(){ # for testing w/o knitting

  'gapminder::gapminder %>%
  data.table() %>%
   .[year > 1980] %>%
   .[                       ,
     mean(gdpPercap)        ,
     by = .(continent, year) ]'

}

create_left_assign_code <- function(){

  # for testing w/o knitting
  "my_cars <- cars %>%             # the data  #BREAK
filter(speed > 4) %>%  # subset
ggplot() +              # pipe to ggplot
aes(x = speed) +
aes(y = dist) +
# Describing what follows
geom_point(alpha = .3)"

}
