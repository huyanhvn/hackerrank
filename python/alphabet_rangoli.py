# https://www.hackerrank.com/challenges/alphabet-rangoli

def print_rangoli(size):
    a = list('abcdefghijklmnopqrstuvwxyz')
    b = a[:size]
    s = '-'.join(list(reversed(b))[:-1] + b)
    w = len(s)
    for i in range(1, size+1):
        b = a[(size-i):size]
        s = '-'.join(list(reversed(b))[:-1] + b)
        print s.center(w,'-')
    for i in range(size-1, 0, -1):
        b = a[(size-i):size]
        s = '-'.join(list(reversed(b))[:-1] + b)
        print s.center(w,'-')

if __name__ == '__main__':
    n = int(raw_input())
    print_rangoli(n)
