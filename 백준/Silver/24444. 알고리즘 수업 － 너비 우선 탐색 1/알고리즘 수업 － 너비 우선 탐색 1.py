from collections import deque
import sys
input = sys.stdin.readline

def bfs(n, m, r, graph):
    queue = deque([r])
    visited = [0] * (n+1)
    visited[r] = 1
    cnt = 1
    while queue:
        num = queue.popleft()

        for i in graph[num]:
            if visited[i] == 0:
                cnt += 1
                visited[i] = cnt
                queue.append(i)
    return visited

def solution():
    N, M, R = map(int, input().split())

    graph = [[] for _ in range(N+1)]

    for _ in range(M):
        u, v = map(int, input().split())
        graph[u].append(v)
        graph[v].append(u)

    for i in range(N+1):
        graph[i].sort()

    result = bfs(N, M, R, graph)
    for i in range(1, N+1):
        print(result[i])

solution()