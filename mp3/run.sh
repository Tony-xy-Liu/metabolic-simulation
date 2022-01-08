mpdir=/home/tony/workspace/python/grad/metapathways
export PATH=$PATH:${mpdir}/src/extensions/metacount

ws=./workspace
t=01

python ${mpdir}/src/wrapper.py --input ${ws}/$t/in --output ${ws}/$t/out -p ${ws}/$t/params.txt -d ${mpdir}/dbs