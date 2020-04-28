import os

def get_list_of_files(dirName):
    list_of_file = os.listdir(dirName)
    all_files = list()

    for entry in list_of_file:
        full_path = os.path.join(dirName, entry)

        if os.path.isdir(full_path):
            all_files = all_files + get_list_of_files(full_path)
        else:
            all_files.append(full_path)

    return all_files