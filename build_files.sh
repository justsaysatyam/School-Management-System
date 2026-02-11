set -ex
echo "------------ BUILD START ------------"

echo "Checking environment..."
env | grep -E 'VERCEL|CI|PYTHON' || true

echo "Checking Python..."
which python3
python3 --version

echo "Installing requirements..."
python3 -m pip install -r requirements.txt

echo "Running collectstatic..."
python3 manage.py collectstatic --noinput --clear

echo "------------ BUILD END ------------"


