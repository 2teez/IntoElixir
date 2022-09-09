#!/usr/bin/python3

"""
Testing out some elixir function
that python doesn't have.
See how it works on python3
"""


class MEnum(list):
    def each(self, fn) -> None:
        for k in self:
            fn(k)


def _print_menum(e: MEnum) -> None:
    e.each(print)


def main():
    ec = MEnum([1, 2, 3, 4])
    _print_menum(ec)


if __name__ == '__main__':
    main()
