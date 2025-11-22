
cd /workspace

git clone --depth 1 https://github.com/FurkanGozukara/SECourses_Musubi_Trainer

cd SECourses_Musubi_Trainer

git reset --hard

git pull

git clone --depth 1 https://github.com/kohya-ss/musubi-tuner

cd musubi-tuner

git reset --hard

git pull

cd ..

python -m venv venv

source venv/bin/activate

python -m pip install --upgrade pip

cd ..

pip install -r requirements_trainer.txt

cd SECourses_Musubi_Trainer

cd musubi-tuner

pip install -e .

echo installation completed check for errors

unset LD_LIBRARY_PATH

cd ..

python gui.py --share