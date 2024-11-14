FROM python:3.12-slim

# 작업 디렉토리 설정
WORKDIR /app

# Poetry 설치
RUN pip install poetry

# 프로젝트 파일 복사
COPY . .

# Poetry로 의존성 설치
RUN poetry install --no-root

# FastAPI 앱 실행
CMD ["poetry", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
