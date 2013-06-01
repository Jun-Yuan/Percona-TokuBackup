# Don't run helgrind and drd when we are running valgrind
foreach(test 
 backup_directory_tests
 backup_no_fractal_tree
 backup_no_fractal_tree_threaded
 backup_no_ft2
 cannotopen_dest_dir
 check_check
 check_check2
 closedirfails_dest_dir
 copy_files
 debug_coverage
 dest_no_permissions_10
 disable_race
 empty_dest
 end_race_open_6668
 end_race_rename_6668
 end_race_rename_6668b
 failed_rename_kills_backup_6703
 failed_unlink_kills_backup_6704
 file_hash_table_tests
 ftruncate
 ftruncate_injection_6480
 multiple_backups
 open_injection_6476
 open_close_6731
 open_prepare_race_6610
 open_write_close
 no_dest_dir_6317b
 notinsource_6570
 notinsource_6570b
 null_dest_dir_6317
 nondir_dest_dir_6317
 readdirfails_dest_dir
 rename_injection
 range_locks
 read_and_seek
 rename
 source_no_permissions_10 
 test6128
 test6361
 test6415_enospc_injection
 test6431_postcopy
 test6469_many_enospc_injection
 test6477_close_injection
 test6478_read_injection
 test6483_mkdir_injection
 throttle_6564
 unlink
 unlink_create_close_race_6727
 unlink_copy_race
 unlink_during_copy_test6515
 unlink_during_copy_test6515b
 unlink_during_copy_test6515c
 unlink_injection
 write_race
)
    list(APPEND CTEST_CUSTOM_MEMCHECK_IGNORE
      helgrind/${test}
      drd/${test}
      )
  endforeach(test)
