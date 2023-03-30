import os
import sys

files_dir = '/usr/local/src/line-counter/'
excluded_words_path = files_dir + 'excluded_words.txt'
extensions_path = files_dir + 'extensions.txt'


def read_lines(path):
    file = open(path, 'r')
    lines = file.read().splitlines()
    file.close()
    return lines


extensions = read_lines(extensions_path)
excluded_words = read_lines(excluded_words_path)


def get_sum_of_lines(path):
    files = os.listdir(path)
    if len(files) == 0:
        return 0
    sum_of_lines = 0
    for file in files:
        full_path = path + '/' + file
        if os.path.isdir(full_path):
            sum_of_lines += get_sum_of_lines(full_path)
        else:
            if does_file_meet_conditions(full_path):
                print(full_path)
                sum_of_lines += sum(1 for line in open(full_path))
    
    return sum_of_lines


def does_file_meet_conditions(path):
    file_name, extension = os.path.splitext(path)
    if extension not in extensions:
        return False
    for word in excluded_words:
        if word in file_name:
            return False
    return True


def get_paths_from_args():
    paths = []
    for i in range(1, len(sys.argv)):
        paths.append(sys.argv[i])
    return paths


counted_dirs = get_paths_from_args()
total_sum = 0
for directory in counted_dirs:
    total_sum += get_sum_of_lines(directory)
print(total_sum)
