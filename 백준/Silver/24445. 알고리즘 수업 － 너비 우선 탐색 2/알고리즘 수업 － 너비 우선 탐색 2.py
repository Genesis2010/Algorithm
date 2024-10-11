from collections import deque
import sys
input = sys.stdin.readline

def bfs(n, r, graph):
    visited = [0] * (n+1)
    visited[r] = 1
    queue = deque([r])
    cnt = 1

    while queue:
        v = queue.popleft()
        for i in graph[v]:
            if visited[i] == 0:
                cnt += 1
                visited[i] = cnt
                queue.append(i)

    return visited


def solution():
    n, m, r = map(int, input().split())
    graph = [[] for _ in range(n + 1)]

    for _ in range(m):
        u, v = map(int, input().split())
        graph[u].append(v)
        graph[v].append(u)

    for i in range(1, n + 1):
        graph[i].sort(reverse=True)

    visited = bfs(n, r, graph)

    print(*visited[1:], sep="\n")

solution()