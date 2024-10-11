from collections import deque
import sys
input = sys.stdin.readline

dx = [-1, 0, 1, 0]
dy = [0, -1, 0, 1]
visited = []

def bfs(n, m, MAP):
    global visited
    visited = [[0] * m for _ in range(n)]
    queue = deque([(0, 0)])
    visited[0][0] = 1

    while queue:
        y, x = queue.popleft()

        for i in range(4):
            ny = y + dy[i]
            nx = x + dx[i]

            # 유효 범위 안에 있는지 먼저 체크해야 함
            if 0 <= ny < n and 0 <= nx < m:
                # 방문하지 않았고, 이동할 수 있는 칸인 경우
                if visited[ny][nx] == 0 and MAP[ny][nx] == 1:
                    visited[ny][nx] = visited[y][x] + 1
                    queue.append((ny, nx))

def solution():
    N, M = map(int, input().split())
    MAP = [list(map(int, input().strip())) for _ in range(N)]
    bfs(N, M, MAP)

    print(visited[N-1][M-1])

solution()