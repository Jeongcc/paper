db=~/rocksdb
exper_name=Exper1
mkdir ~/ExperResults/$exper_name


# exper name
current_exper=compaction_pri_1_overwrite
result_dir=~/ExperResults/exper_name/$current_exper
sudo rm -rf $result_dir
mkdir $result_dir
#sudo rm -rf ~/mnt/*
#sudo ~/format+remount.sh
(iostat)>$result_dir/start-$current_exper
echo "$current_exper working..."
($db/db_bench --benchmarks="overwrite,stats" -use_direct_io_for_flush_and_compaction=true -use_direct_reads=true -use_existing_db=true -use_existing_keys=true -cache_size=0 -read_cache_size=0 -num=100000000 -key_size=32 -value_size=1024 --db=/home/jeong/mnt -compaction_pri=1 -write_buffer_size=16777216 -statistics)>$result_dir/result-$current_exper
(iostat)>/$result_dir/end-$current_exper
  
# exper name
current_exper=compaction_pri_1_readrandom
result_dir=~/ExperResults/exper_name/$current_exper
sudo rm -rf $result_dir
mkdir $result_dir
#sudo rm -rf ~/mnt/*
#sudo ~/format+remount.sh
(iostat)>$result_dir/start-$current_exper
echo "$current_exper working..."
($db/db_bench --benchmarks="readrandom,stats" -use_direct_io_for_flush_and_compaction=true -use_direct_reads=true -use_existing_db=true -use_existing_keys=true -cache_size=0 -read_cache_size=0 -num=100000000 -key_size=32 -value_size=1024 --db=/home/jeong/mnt -compaction_pri=1 -write_buffer_size=16777216 -statistics)>$result_dir/result-$current_exper
(iostat)>/$result_dir/end-$current_exper

# exper name
current_exper=compaction_pri_1_mixgraph_read
result_dir=~/ExperResults/exper_name/$current_exper
sudo rm -rf $result_dir
mkdir $result_dir
#sudo rm -rf ~/mnt/*
#sudo ~/format+remount.sh
(iostat)>$result_dir/start-$current_exper
echo "$current_exper working..."
($db/db_bench --benchmarks="mixgraph,stats" -use_direct_io_for_flush_and_compaction=true -use_direct_reads=true -use_existing_db=true -use_existing_keys=true -cache_size=0 -read_cache_size=0 -keyrange_dist_a=14.18 -keyrange_dist_b=-2.917 -keyrange_dist_c=0.0164 -keyrange_dist_d=-0.08082 -keyrange_num=60 -value_k=0.2615 -value_sigma=25.45 -iter_k=2.517 -iter_sigma=14.236 -mix_get_ratio=0.9 -mix_put_ratio=0.1 -mix_seek_ratio=0 -sine_mix_rate_interval_milliseconds=5000 -sine_a=1000 -sine_b=0.000073 -sine_d=9=5000000 -num=100000000 -key_size=32 -value_size=1024 --db=/home/jeong/mnt -compaction_pri=1 -write_buffer_size=16777216 -statistics)>$result_dir/result-$current_exper
(iostat)>/$result_dir/end-$current_exper


# exper name
current_exper=compaction_pri_1_mixgraph_write
result_dir=~/ExperResults/exper_name/$current_exper
sudo rm -rf $result_dir
mkdir $result_dir
#sudo rm -rf ~/mnt/*
#sudo ~/format+remount.sh
(iostat)>$result_dir/start-$current_exper
echo "$current_exper working..."
($db/db_bench --benchmarks="mixgraph,stats" -use_direct_io_for_flush_and_compaction=true -use_direct_reads=true -use_existing_db=true -use_existing_keys=true -cache_size=0 -read_cache_size=0 -keyrange_dist_a=14.18 -keyrange_dist_b=-2.917 -keyrange_dist_c=0.0164 -keyrange_dist_d=-0.08082 -keyrange_num=60 -value_k=0.2615 -value_sigma=25.45 -iter_k=2.517 -iter_sigma=14.236 -mix_get_ratio=0.1 -mix_put_ratio=0.9 -mix_seek_ratio=0 -sine_mix_rate_interval_milliseconds=5000 -sine_a=1000 -sine_b=0.000073 -sine_d=9=5000000 -num=100000000 -key_size=32 -value_size=1024 --db=/home/jeong/mnt -compaction_pri=1 -write_buffer_size=16777216 -statistics)>$result_dir/result-$current_exper
(iostat)>/$result_dir/end-$current_exper

