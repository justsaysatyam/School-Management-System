set -ex
echo "------------ BUILD START ------------"

# Ensure output directory exists
mkdir -p staticfiles_build

echo "Checking environment..."
python3 --version || python --version

echo "Installing requirements..."
# Use python3 -m pip for reliability
python3 -m pip install -r requirements.txt

echo "Running collectstatic..."
# Use python3 manage.py for reliability
python3 manage.py collectstatic --noinput --clear

echo "------------ BUILD END ------------"
