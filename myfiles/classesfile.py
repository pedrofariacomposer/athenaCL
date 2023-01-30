from functionsfile import *
import random

class PrimeSegment:
    def __init__(self, start, length):
        """gets a segment of prime numbers
        min and length values are suggested; may not be relevant
        in final presentation
        will accept negative values and wrap
        """
        self.seg = []
        self.start = start
        self.length = length
        # fill the segment
        self._fillRange()


    def _fillRabinMiller(self, start, length, stop=None, direction='up'):
        """scan all number in range and return a list of primess
        provide a max to force stoppage at  certain point before the
        maximum length
        direction determines which way things go"""
        seg = []
        _oddBoundary = 4 # number above which only odd primes are found

        if start % 2 == 0 and start > _oddBoundary: # if even
            if direction == 'up':
                n = start + 1
            else: # if down
                n = start - 1
        else: n = start

        while 1:              
            if rabinMiller(n):
                seg.append(n)
                if len(seg) >= length: break

            if n == stop: break

            if n > _oddBoundary: # after 5, no even primes
                if direction == 'up':
                    n = n + 2 # only test odd numbers
                else: n = n - 2 # 
            else: # n is less than 5, add 1
                if direction == 'up':
                    n = n + 1 # must increment by 1
                else: n = n - 1 # 
        return seg


    def _fillRange(self):
        """fill positive and negative range"""
        if self.start < 0:
            # create the negative portion of the segment
            segNeg = self._fillRabinMiller(abs(self.start), self.length, 0, 'down')
            segNeg = [-x for x in segNeg] # make negative
            if len(segNeg) < self.length:
                segPos = self._fillRabinMiller(0, self.length-len(segNeg), 
                                                         None, 'up')
                self.seg = segNeg + segPos
            else: # add positive values
                self.seg = segNeg

        else: # start from zero alone
            self.seg = self._fillRabinMiller(self.start, self.length, None, 'up')


    def __call__(self, format=None):
        """assumes that min and max values are derived from found primes
        means that primes will always be at boundaries"""
        z = [self.seg[0], self.seg[-1]]

        if format in ['bin', 'binary']:
            return discreteBinaryPad(self.seg, z)
        elif format in ['unit']:
            return unitNormRange(self.seg, z)
        elif format in ['wid', 'width']:
            wid = []
            for i in range(0, len(self.seg)-1):
                wid.append((self.seg[i+1]-self.seg[i]))
            return wid
        else: # int, integer
            return self.seg

a = [1,2,7,6,9]
print(unitNormRange(a))