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
    # using anonymous function called :- lambda
    print(list(map(lambda x: x*x, list(range(1, 16)))))
    fn = (lambda x: x * x)
    print(list(map(fn, list(range(1, 16)))))
    # using list comphrension
    print(list(x*x for x in range(1, 16)))


if __name__ == '__main__':
    main()
