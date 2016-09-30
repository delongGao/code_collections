def q_sort(l):
    if len(l) <= 1:
        return l

    # since l is not sorted, the pivot picked here is random
    pivot = l[0]

    # left[x] < right[x], because everything is based on pivot
    # since also denotes where the n comes from, but I forgot why it's nlogn...
    left = [x for x in l[1:] if x < pivot]
    right = [x for x in l[1:] if x > pivot]

    # almost like merge sort
    return q_sort(left) + [pivot] + q_sort(right)

#测试
import random
a = [random.random() for i in range(40)]
print q_sort(a)
