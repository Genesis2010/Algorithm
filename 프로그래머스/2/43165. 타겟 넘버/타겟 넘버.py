from collections import deque

def solution(numbers, target):
    answer = 0
    
    queue = deque()
    queue.append((0,0))
    
    while queue:
        index, value = queue.popleft()
        if index == len(numbers) and value == target:
            answer += 1
        elif index == len(numbers):
            pass
        else:
            queue.append((index+1, value + numbers[index]))
            queue.append((index+1, value - numbers[index]))

    return answer