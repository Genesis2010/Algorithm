from collections import deque

def bfs(a, k, graph):
    queue = deque([a])

    while queue:
        a = queue.popleft()

        if a == k:
            break

        for i in (a+1, a*2):
            if i <= k and graph[i] == 0:
                graph[i] = graph[a] + 1
                queue.append(i)


def solution():
    A, K = map(int, input().split())
    graph = [0] * (K + 1)
    bfs(A, K, graph)

    print(graph[K])

solution()