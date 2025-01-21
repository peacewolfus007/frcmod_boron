mpirun -np 2 --allow-run-as-root sander.MPI -O -i min.in -o min.out -p x.prmtop -c x.inpcrd -r min1.ncrst 
ambpdb -p x.prmtop -c min1.ncrst > minimized.pdb
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat1.in  -o heat1.out  -p x.prmtop -c min1.ncrst  -r heat1.ncrst -x heat1.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat2.in  -o heat2.out  -p x.prmtop -c heat1.ncrst -r heat2.ncrst -x heat2.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat3.in  -o heat3.out  -p x.prmtop -c heat2.ncrst -r heat3.ncrst -x heat3.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat4.in  -o heat4.out  -p x.prmtop -c heat3.ncrst -r heat4.ncrst -x heat4.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat5.in  -o heat5.out  -p x.prmtop -c heat4.ncrst -r heat5.ncrst -x heat5.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat6.in  -o heat6.out  -p x.prmtop -c heat5.ncrst -r heat6.ncrst -x heat6.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat7.in  -o heat7.out  -p x.prmtop -c heat6.ncrst -r heat7.ncrst -x heat7.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat8.in  -o heat8.out  -p x.prmtop -c heat7.ncrst -r heat8.ncrst -x heat8.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat9.in  -o heat9.out  -p x.prmtop -c heat8.ncrst -r heat9.ncrst -x heat9.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat10.in  -o heat10.out  -p x.prmtop -c heat9.ncrst -r heat10.ncrst -x heat10.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i heat11.in  -o heat11.out  -p x.prmtop -c heat10.ncrst -r heat11.ncrst -x heat11.nc

mkdir analiz
cd analiz


process_mdout.perl ../heat1.out ../heat2.out ../heat3.out ../heat4.out ../heat4.out ../heat6.out ../heat7.out ../heat8.out ../heat9.out ../heat10.out

mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c heat7.ncrst -r equil1.ncrst -o equil1.out -x  equil1.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c equil1.ncrst -r equil2.ncrst -o equil2.out -x equil2.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c equil2.ncrst -r equil3.ncrst -o equil3.out -x equil3.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c equil3.ncrst -r equil4.ncrst -o equil4.out -x equil4.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c equil4.ncrst -r equil5.ncrst -o equil5.out -x equil5.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c equil5.ncrst -r equil6.ncrst -o equil6.out -x equil6.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c equil6.ncrst -r equil7.ncrst -o equil7.out -x equil7.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c equil7.ncrst -r equil8.ncrst -o equil8.out -x equil8.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c equil8.ncrst -r equil9.ncrst -o equil9.out -x equil9.nc
mpirun -np 2 --allow-run-as-root sander.MPI -O -i equil.in -p x.prmtop -c equil9.ncrst -r equil10.ncrst -o equil10.out -x equil10.nc
