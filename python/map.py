# https://www.hackerrank.com/challenges/swap-case

def swap_case(s):
    result = ''.join(list(map(lambda x: x.upper() if x.islower() else x.lower() , list(s))))
    return result
