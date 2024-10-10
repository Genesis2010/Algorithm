from collections import deque

MAP = [list(map(int, input().split())) for _ in range(5)]

r, c = map(int, input().split())

visited = [[False] * len(MAP[0]) for _ in range(len(MAP))]
visited[r][c] = True

queue = deque([(r, c, 0)])

dx = [-1, 0, 1, 0]
dy = [0, 1, 0, -1]

while queue:
    y, x, cnt = queue.popleft()

    if MAP[y][x] == 1:
        print(cnt)
        exit()

    for i in range(4):
        nx = x + dx[i]
        ny = y + dy[i]

        if 0 <= nx < 5 and 0 <= ny < 5:
            if not visited[ny][nx] and MAP[ny][nx] != -1:
                visited[ny][nx] = True
                queue.append((ny, nx, cnt+1))
print(-1)