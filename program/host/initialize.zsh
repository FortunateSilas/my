cd ${HOME}

mkdir ${host}
mkdir ${host_a}
mkdir ${host_d}
mkdir ${host_f}

cd ${host_a}

valet park

cd ${host_f}

mkdir Blank && cd Blank

valet link && valet secure


cd ${HOME}

echo "Done. Host Setup Successfully!!!"
