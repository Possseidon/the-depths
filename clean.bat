@echo off

rmdir /S /Q advancements
rmdir /S /Q data
rmdir /S /Q DIM-1
rmdir /S /Q DIM1
rmdir /S /Q entities
rmdir /S /Q playerdata
rmdir /S /Q poi
rmdir /S /Q region
rmdir /S /Q stats

del level.dat_old
del session.lock

git restore level.dat
