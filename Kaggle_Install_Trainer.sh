# install util
apt update -qq
apt -y install -qq aria2
pip install huggingface_hub
export HF_HOME="/kaggle/working"
export HF_HOME="/kaggle/working"

cd /kaggle/working
git clone https://github.com/HeyyyAbhishek/Dump.git .
git clone --depth 1 https://github.com/FurkanGozukara/SECourses_Musubi_Trainer

cd SECourses_Musubi_Trainer

git reset --hard

git pull

git clone https://github.com/kohya-ss/musubi-tuner

cd musubi-tuner

git reset --hard

git pull

git checkout main

git pull

cd /kaggle/working
pip install -r requirements_trainer.txt

cd /kaggle/working/SECourses_Musubi_Trainer/musubi-tuner

pip install -e .

echo installation completed check for errors

unset LD_LIBRARY_PATH

cd ..

python gui.py --share

