import os
# from sklearn import dataset

def main():
    print("First Module's Name: {}".format(__name__))
    
if __name__ == '__main__':
    main()

def get_filename(datatyp):
    data_loc = os.getcwd()
    if datatyp == 'raw':
        file_location = data_loc + "/raw/"
    elif datatyp == 'processed':
        file_location = data_loc + "/processed/"
    else:
        return ("invalid path")
    return file_location