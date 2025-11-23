mv /teamspace/studios/this_studio/Dump/* /teamspace/studios/this_studio/
cd /teamspace/studios/this_studio/Dump
ls -la
rm -rf ./* ./.??*
rm /teamspace/studios/this_studio/Dump
cd /teamspace/studios/this_studio
# install util
apt update -qq
apt -y install -qq aria2
pip install huggingface_hub
export HF_HOME="/teamspace/studios/this_studio"

cd /teamspace/studios/this_studio

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

cd /teamspace/studios/this_studio
python -m pip install --upgrade pip
pip install -r requirements_trainer.txt

cd /teamspace/studios/this_studio/SECourses_Musubi_Trainer/musubi-tuner

pip install -e .

echo installation completed check for errors

unset LD_LIBRARY_PATH

cd ..

python gui.py --share

