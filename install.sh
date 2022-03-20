
# Clear the bin before putting there anything
rm -f bin/*

# Set up SmallSoft and copy binaries that are needed
cd smallsoft
git submodule init
git submodule update
make 
# for now just copy everything
cp bin/* ../bin
# go back
cd ..

# Now copy the handy_scripts to the bin
cp src/* bin
