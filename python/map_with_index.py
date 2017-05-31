# https://www.hackerrank.com/challenges/capitalize

def capitalize(string):
    chars = list(string)
    return ''.join([c.upper() if chars[i-1] == ' ' or i == 0 else c for i,c in enumerate(chars)])

if __name__ == '__main__':
    string = raw_input()
    capitalized_string = capitalize(string)
    print capitalized_string
