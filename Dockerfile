FROM python:3.14.2-slim

# Install system deps
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv
RUN curl -Ls https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

WORKDIR /app

# Copy dependency files first (layer caching)
COPY pyproject.toml uv.lock ./

# Create virtualenv and install deps
RUN uv venv && uv sync --no-dev

# Copy project
COPY . .

EXPOSE 8000

CMD ["uv", "run", "gunicorn", "hrmslite.wsgi:application", "--bind", "0.0.0.0:8000"]