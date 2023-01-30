import random
import copy


def eratosthenes():
    """Yields the sequence of prime numbers via the Sieve of Eratosthenes.
    """
    D = {}
    q = 2
    while True:
        p = D.pop(q, None)
        if p != None:
            nextMult = p + q 
            while nextMult in list(D.keys()):
                nextMult = nextMult + p
            D[nextMult] = p 
        else: 
            nextMult = q * q
            D[nextMult] = q 
            yield q
        q = q + 1


def rabinMiller(n):
    """Rabin–Miller primality test
    """
    n = abs(n)
    if n in [2,3]: return 1
    m = n % 6
    if m != 1 and m != 5: return 0
    primes = [5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97] 
    if n <= 100:
        if n in primes: return 1
        return 0
    for prime in primes:
        if n % prime == 0: return 0
    s, r = n-1, 1
    while not s & 1:
        s >>= 1
        r = r + 1       
    for i in range(0,10):
        y = pow(random.randint(1, n-1), s, n)
        if y == 1: continue
        for j in range(1,r):
            if y == n - 1: break
            y = pow(y,2,n)
        else:
             return 0
    return 1


def discreteBinaryPad(series, fixRange=None):
    """take an integer series of values
    fill all spaces with zeros that are not occupied
    the result will always be sorted

    >>> discreteBinaryPad([3,4,5])
    [1, 1, 1]
    >>> discreteBinaryPad([3,20,22])
    [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1]
    """
    # make sure these are ints
    for x in series:
        if isinstance(x, int):
            raise Exception('non integer value found')

    discrete = []
    if fixRange != None:
        fixRange.sort() # make sure sorted
        min = fixRange[0]
        max = fixRange[-1]
    else: # find max and min from values
        seriesAlt = list(copy.deepcopy(series))
        seriesAlt.sort()
        min = seriesAlt[0]
        max = seriesAlt[-1]
    for x in range(min, max+1):
        if x in series:
            discrete.append(1)      
        else: # not in series
            discrete.append(0)
    return discrete


def seriesMinMax(series):
    """given any list of numbers, return e min and e max
    must convert to list to allow sorting of array or other sequence objects
    """

    new_series = sorted(list(series))
    return new_series[0],new_series[-1]


def unitNormRange(series, fixRange=None):
    """read all values from a list
    normalize values within min and maximum of series

    >>> unitNormRange([0,3,4])
    [0.0, 0.75, 1.0]
    """
    if fixRange != None:
        fixRange.sort()
        min = fixRange[0]
        max = fixRange[-1]
    else: # find max and min from values
        min, max = seriesMinMax(series)
    span = max - min
    unit = []
    if len(series) > 1:
        for val in series:
            dif = val - min
            if isinstance(dif, int):
                dif = float(dif)         
            if span != 0:
                unit.append(dif / span)
            else: # fill value if span is zero
                unit.append(0)
    else: # if one element, return 0 (could be 1, or .5)
        unit.append(0)
    return unit