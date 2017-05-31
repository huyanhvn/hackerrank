# https://www.hackerrank.com/challenges/the-minion-game

def minion_game(string):
    substrings = []
    stuart = 0
    kevin = 0

    for i in range(1,len(string)+1):
        for j in range(len(string) +1 - i):
            substrings.append(string[j:j+i])

    for i in substrings:
        if i[0] in 'AEIOU':
            kevin += 1
        else:
            stuart += 1
    
    if stuart == kevin:
        print 'Draw'
    elif stuart > kevin:
        print 'Stuart ' + str(stuart)
    else:
        print 'Kevin ' + str(kevin)

if __name__ == '__main__':
    s = raw_input()
    minion_game(s)
