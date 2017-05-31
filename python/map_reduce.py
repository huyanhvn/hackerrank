# https://www.hackerrank.com/challenges/string-validators

if __name__ == '__main__':
    s = raw_input()
    print reduce((lambda y,z : y or z), map(lambda x: x.isalnum(), list(s)))
    print reduce((lambda y,z : y or z), map(lambda x: x.isalpha(), list(s)))
    print reduce((lambda y,z : y or z), map(lambda x: x.isdigit(), list(s)))
    print reduce((lambda y,z : y or z), map(lambda x: x.islower(), list(s)))
    print reduce((lambda y,z : y or z), map(lambda x: x.isupper(), list(s)))
