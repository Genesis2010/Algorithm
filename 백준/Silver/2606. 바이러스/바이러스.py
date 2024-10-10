from collections import deque

n = int(input())
v = int(input())

graph = [[] for _ in range(n+1)]
visited = [False] * (n+1)

for i in range(v):
    a,b = map(int, input().split())
    graph[a] += [b]
    graph[b] += [a]

visited[1] = True
queue = deque()
queue.append(1)

while queue:
    index = queue.popleft()
    for i in graph[index]:
        if not visited[i]:
            visited[i] = True
            queue.append(i)
            
print(sum(visited)-1)