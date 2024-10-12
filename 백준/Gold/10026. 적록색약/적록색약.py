from collections import deque

N = 0
MAP = [[]]
visited = [[]]
section = 0

dx = [-1, 0, 1, 0]
dy = [0, -1, 0, 1]

def init():
    global MAP, visited, N, section

    N = int(input())
    MAP = [list(input().strip()) for _ in range(N)]
    visited = [[False] * N for _ in range(N)]

def in_xy(y, x):
    if 0<= y < N and 0 <= x < N:
        return True
    else:
        return False

def bfs(x, y):
    queue = deque()

    queue.append((x, y))

    while queue:
        y, x = queue.popleft()

        for i in range(4):
            ny, nx = y + dy[i], x + dx[i]

            if in_xy(ny, nx) and MAP[ny][nx] == MAP[y][x] and visited[ny][nx] == False:
                visited[ny][nx] = True
                queue.append((ny, nx))


    return False

def solution():
    global visited
    init()
    not_color = 0
    color = 0
    # 적록색약 아닌 경우
    for i in range(N):
        for j in range(N):
            if not visited[i][j]:  # 아직 방문 안한 경우만 체킹
                bfs(i, j)
                not_color += 1

    for i in range(N):
        for j in range(N):
            if MAP[i][j] == 'G':
                MAP[i][j] = 'R'

    visited = [[False] * N for _ in range(N)]

    for i in range(N):
        for j in range(N):
            if not visited[i][j]:  # 아직 방문 안한 경우만 체킹
                bfs(i, j)
                color += 1

    print(not_color, color)

solution()