from collections import deque

N = 0
MAP = [[]]
visited = [[]]

dx = [1, 0]
dy = [0, 1]

def init():
    global MAP, visited, N

    N = int(input())
    MAP = [list(map(int, input().split())) for _ in range(N)]
    visited = [[False] * N for _ in range(N)]

def in_xy(y, x):
    if 0<= y < N and 0 <= x < N:
        return True
    else:
        return False

def bfs():
    queue = deque()

    queue.append((0, 0))

    while queue:
        y, x = queue.popleft()

        for i in range(2):
            ny, nx = y + dy[i]*MAP[y][x], x + dx[i]*MAP[y][x]

            if in_xy(ny, nx) and visited[ny][nx] == False:
                if MAP[ny][nx] == -1:
                    return True
                visited[ny][nx] = True
                queue.append((ny, nx))

    return False

def solution():
    init()
    if bfs():
        print("HaruHaru")
    else:
        print("Hing")

solution()