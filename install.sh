mkdir bin

# Clear the bin before putting there anything
rm -f bin/*
# update submodules 
git submodule update --init --recursive
# Set up SmallSoft and copy binaries that are needed
cd smallsoft
make 
# for now just move everything
mv bin/* ../bin
# go back
cd ..

# Now copy the handy_scripts to the bin
cp src/* bin
