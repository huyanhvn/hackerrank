# https://www.hackerrank.com/challenges/python-string-formatting

def print_formatted(number):
    w = len('{:b}'.format(number))
    for i in range(1, number+1):
        print '%*s %*s %*s %*s' % (w, i, w, '{:o}'.format(i), w, hex(i)[2:].upper(), w, '{:b}'.format(i))

if __name__ == '__main__':
    n = int(raw_input())
    print_formatted(n)
