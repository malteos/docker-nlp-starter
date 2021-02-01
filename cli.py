#!/usr/bin/env python

import fire
import sys


def dummy(foo: str):
    print('This is a dummy CLI script.')
    print(f'You have entered: {foo}')


if __name__ == '__main__':
    fire.Fire()
    sys.exit(0)
