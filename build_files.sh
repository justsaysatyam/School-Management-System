set -e
echo "------------ BUILD START ------------"

echo "Checking Python version..."
python --version

echo "Upgrading pip..."
python -m pip install --upgrade pip

echo "Installing requirements..."
python -m pip install -r requirements.txt

echo "Running collectstatic..."
python manage.py collectstatic --noinput --clear

echo "------------ BUILD END ------------"


