cd ${HOME}

mkdir ${HOST}
mkdir ${HOST_A}
mkdir ${HOST_D}
mkdir ${HOST_F}

cd ${HOST_A}

valet park

cd ${HOST_F}

mkdir Blank && cd Blank

valet link && valet secure


cd ${HOME}

echo "Done. Host Setup Successfully!!!"
