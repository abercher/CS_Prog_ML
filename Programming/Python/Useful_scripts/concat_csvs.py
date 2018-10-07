## This function comes from the 3rd notebook of the course fastai
## and helps concatenating csv tables (typically when we 
## want to add some external data to some existing table)
## by stacking all the tables inside the directory defined 
## by the variable PATH , VERTICALLY inside a new one.

def concat_csvs(dirname):
    path = f'{PATH}{dirname}'
    filenames=glob(f"{PATH}/*.csv")

    wrote_header = False
    with open(f"{path}.csv","w") as outputfile:
        for filename in filenames:
            name = filename.split(".")[0]
            with open(filename) as f:
                line = f.readline()
                if not wrote_header:
                    wrote_header = True
                    outputfile.write("file,"+line)
                for line in f:
                     outputfile.write(name + "," + line)
                outputfile.write("\n")