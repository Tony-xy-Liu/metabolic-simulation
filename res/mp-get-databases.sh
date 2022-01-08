# not tested

mpdb=mp-databases

mkdir -p ${mpdb}/taxonomic/formatted
mkdir -p ${mpdb}/functional/formatted
mkdir -p ${mpdb}/ncbi_tree
mkdir -p ${mpdb}/functional_categories

cd ${mpdb}/ncbi_tree
wget https://github.com/kishori82/MetaPathways_Python.3.0/raw/kmk-develop/data/refdata/ncbi_taxonomy_tree.txt.gz
wget https://github.com/kishori82/MetaPathways_Python.3.0/raw/kmk-develop/data/refdata/ncbi.map.gz
cd ../

cd ${mpdb}/functional_categories
wget https://github.com/kishori82/MetaPathways_Python.3.0/raw/kmk-develop/data/refdata/CAZY_hierarchy.txt.gz
wget https://github.com/kishori82/MetaPathways_Python.3.0/raw/kmk-develop/data/refdata/COG_categories.txt.gz
wget https://github.com/kishori82/MetaPathways_Python.3.0/raw/kmk-develop/data/refdata/KO_classification.txt.gz
wget https://github.com/kishori82/MetaPathways_Python.3.0/raw/kmk-develop/data/refdata/SEED_subsystems.txt.gz
cd ../

cd ${mpdb}/functional
wget https://github.com/kishori82/MetaPathways_Python.3.0/raw/kmk-develop/data/refdata/refseq-mini.fasta.gz
gunzip refseq-mini.fasta.gz
mv refseq-mini.fasta  refseq-mini
cat refseq-mini | grep ">" > formatted/refseq-mini-names.txt
makeblastdb -dbtype prot -in refseq-mini -out formatted/refseq-mini
cd ../

