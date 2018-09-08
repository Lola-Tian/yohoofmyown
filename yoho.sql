SET NAMES UTF8;
DROP DATABASE IF EXISTS yoho;
CREATE DATABASE yoho CHARSET=UTF8;
USE yoho;

/**��װƷ��**/
CREATE TABLE yoho_clothing_brand(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  bname VARCHAR(32)
);
INSERT INTO yoho_clothing_brand VALUES
(NULL,'ShaoYaoJu');


/**��װͼƬ**/
CREATE TABLE yoho_clothing_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT, #ͼƬ���
  cid INT,		      #��װ���
  sm VARCHAR(128),            #СͼƬ·��
  md VARCHAR(128),            #��ͼƬ·��
  lg VARCHAR(128)             #��ͼƬ·��
);
INSERT INTO yoho_clothing_pic VALUES
(NULL, 1, 'img/product_img/c1/sm/01109fc0ac36b9b050d9b889980943a7d6.jpg','img/product_img/c1/md/01109fc0ac36b9b050d9b889980943a7d6.jpg','img/product_img/c1/lg/01109fc0ac36b9b050d9b889980943a7d6.jpg'),
(NULL, 1, 'img/product_img/c1/sm/014c0444a423fd093f4c03b7d8341b9e38.jpg','img/product_img/c1/md/014c0444a423fd093f4c03b7d8341b9e38.jpg','img/product_img/c1/lg/014c0444a423fd093f4c03b7d8341b9e38.jpg'),
(NULL, 1, 'img/product_img/c1/sm/01b2dae7667df6138d761304d03e2794d8.jpg','img/product_img/c1/md/01b2dae7667df6138d761304d03e2794d8.jpg','img/product_img/c1/lg/01b2dae7667df6138d761304d03e2794d8.jpg'),
(NULL, 1, 'img/product_img/c1/sm/01421325b703bfc30f40fa485573c0206b.jpg','img/product_img/c1/md/01421325b703bfc30f40fa485573c0206b.jpg','img/product_img/c1/lg/01421325b703bfc30f40fa485573c0206b.jpg'),
(NULL, 2, 'img/product_img/c2/sm/013e7e0b0b44b786cc46ba149a0b22b297.jpg','img/product_img/c2/md/013e7e0b0b44b786cc46ba149a0b22b297.jpg','img/product_img/c2/lg/013e7e0b0b44b786cc46ba149a0b22b297.jpg'),
(NULL, 2, 'img/product_img/c2/sm/019fdf06d122b8d740e827190b66e8c674.jpg','img/product_img/c2/md/019fdf06d122b8d740e827190b66e8c674.jpg','img/product_img/c2/lg/019fdf06d122b8d740e827190b66e8c674.jpg'),
(NULL, 2, 'img/product_img/c2/sm/0175acb87cd9a89d509675627f8f6344d7.jpg','img/product_img/c2/md/0175acb87cd9a89d509675627f8f6344d7.jpg','img/product_img/c2/lg/0175acb87cd9a89d509675627f8f6344d7.jpg'),
(NULL,3,'img/product_img/c3/sm/026f6c5b374ac7c0cdc7d42649d32d594f.jpg','img/product_img/c3/md/026f6c5b374ac7c0cdc7d42649d32d594f.jpg','img/product_img/c3/lg/026f6c5b374ac7c0cdc7d42649d32d594f.jpg'),
(NULL,3,'img/product_img/c3/sm/02a84c7762518ebc4b53d69637358607a1.jpg','img/product_img/c3/md/02a84c7762518ebc4b53d69637358607a1.jpg','img/product_img/c3/lg/02a84c7762518ebc4b53d69637358607a1.jpg'),
(NULL,3,'img/product_img/c3/sm/0248a52b24e1e1fdda0c4cc3e6ce0655d4.jpg','img/product_img/c3/md/0248a52b24e1e1fdda0c4cc3e6ce0655d4.jpg','img/product_img/c3/lg/0248a52b24e1e1fdda0c4cc3e6ce0655d4.jpg'),
(NULL,3,'img/product_img/c3/sm/02f42a098cd482cd14aee79b065a5182ac.jpg','img/product_img/c3/md/02f42a098cd482cd14aee79b065a5182ac.jpg','img/product_img/c3/lg/02f42a098cd482cd14aee79b065a5182ac.jpg'),
(NULL,4,'img/product_img/c4/sm/01d054705b59bace4617aca451abff742f.jpg','img/product_img/c4/md/01d054705b59bace4617aca451abff742f.jpg','img/product_img/c4/lg/01d054705b59bace4617aca451abff742f.jpg'),
(NULL,4,'img/product_img/c4/sm/01f3b453a6881d52a1712840a81bba98b3.jpg','img/product_img/c4/md/01f3b453a6881d52a1712840a81bba98b3.jpg','img/product_img/c4/lg/01f3b453a6881d52a1712840a81bba98b3.jpg'),
(NULL,4,'img/product_img/c4/sm/016e09a949180f4ad3b95980449eeff47c.jpg','img/product_img/c4/md/016e09a949180f4ad3b95980449eeff47c.jpg','img/product_img/c4/lg/016e09a949180f4ad3b95980449eeff47c.jpg'),
(NULL,5,'img/product_img/c5/sm/0130220ae1b69a026a288ecc64937186a6.jpg','img/product_img/c5/md/0130220ae1b69a026a288ecc64937186a6.jpg','img/product_img/c5/lg/0130220ae1b69a026a288ecc64937186a6.jpg'),
(NULL,5,'img/product_img/c5/sm/0101b36e6a2b64a7533a4e29cf47ef505d.jpg','img/product_img/c5/md/0101b36e6a2b64a7533a4e29cf47ef505d.jpg','img/product_img/c5/lg/0101b36e6a2b64a7533a4e29cf47ef505d.jpg'),
(NULL,5,'img/product_img/c5/sm/014e755ad08d27a3e980a4cb4c11d14267.jpg','img/product_img/c5/md/014e755ad08d27a3e980a4cb4c11d14267.jpg','img/product_img/c5/lg/014e755ad08d27a3e980a4cb4c11d14267.jpg'),
(NULL,5,'img/product_img/c5/sm/014160e0d92bd1557aa304fea218e2db35.jpg','img/product_img/c5/md/014160e0d92bd1557aa304fea218e2db35.jpg','img/product_img/c5/lg/014160e0d92bd1557aa304fea218e2db35.jpg'),
(NULL,6,'img/product_img/c6/sm/02015ccf40688cd6b6bf430ca7c11de928.jpg','img/product_img/c6/md/02015ccf40688cd6b6bf430ca7c11de928.jpg','img/product_img/c6/lg/02015ccf40688cd6b6bf430ca7c11de928.jpg'),
(NULL,6,'img/product_img/c6/sm/026b21f7cac3c015a6c6d6f26f9c6609a0.jpg','img/product_img/c6/md/026b21f7cac3c015a6c6d6f26f9c6609a0.jpg','img/product_img/c6/lg/026b21f7cac3c015a6c6d6f26f9c6609a0.jpg'),
(NULL,6,'img/product_img/c6/sm/02bde6b01343548edab9fccbc41106747c.jpg','img/product_img/c6/md/02bde6b01343548edab9fccbc41106747c.jpg','img/product_img/c6/lg/02bde6b01343548edab9fccbc41106747c.jpg'),
(NULL,7,'img/product_img/c7/sm/0252afd1e903ec9ac418b034d061e6f5a0.jpg','img/product_img/c7/md/0252afd1e903ec9ac418b034d061e6f5a0.jpg','img/product_img/c7/lg/0252afd1e903ec9ac418b034d061e6f5a0.jpg'),
(NULL,7,'img/product_img/c7/sm/02288a6449766b25f910287fab9e8e89f3.jpg','img/product_img/c7/md/02288a6449766b25f910287fab9e8e89f3.jpg','img/product_img/c7/lg/02288a6449766b25f910287fab9e8e89f3.jpg'),
(NULL,7,'img/product_img/c7/sm/02d10a334171b63b4c99f6b6b7f0e0c371.jpg','img/product_img/c7/md/02d10a334171b63b4c99f6b6b7f0e0c371.jpg','img/product_img/c7/lg/02d10a334171b63b4c99f6b6b7f0e0c371.jpg'),
(NULL,8,'img/product_img/c8/sm/02921f33f6b899846da75634dccb39feac.jpg','img/product_img/c8/md/02921f33f6b899846da75634dccb39feac.jpg','img/product_img/c8/lg/02921f33f6b899846da75634dccb39feac.jpg'),
(NULL,8,'img/product_img/c8/sm/02f9edb74d9c6bb0ec824bd07e805b1229.jpg','img/product_img/c8/md/02f9edb74d9c6bb0ec824bd07e805b1229.jpg','img/product_img/c8/lg/02f9edb74d9c6bb0ec824bd07e805b1229.jpg'),
(NULL,8,'img/product_img/c8/sm/02f5b01bb6d2567a890f190894eea7303f.jpg','img/product_img/c8/md/02f5b01bb6d2567a890f190894eea7303f.jpg','img/product_img/c8/lg/02f5b01bb6d2567a890f190894eea7303f.jpg'),
(NULL,8,'img/product_img/c8/sm/02bdb151fd7af74cabbc53787d03264f1e.jpg','img/product_img/c8/md/02bdb151fd7af74cabbc53787d03264f1e.jpg','img/product_img/c8/lg/02bdb151fd7af74cabbc53787d03264f1e.jpg'),
(NULL,9,'img/product_img/c9/sm/02d29471fd78bc02d81b338a5cb1065fa6.jpg','img/product_img/c9/md/02d29471fd78bc02d81b338a5cb1065fa6.jpg','img/product_img/c9/lg/02d29471fd78bc02d81b338a5cb1065fa6.jpg'),
(NULL,9,'img/product_img/c9/sm/014a3f88159e3da4652f6b6074efb13b2d.jpg','img/product_img/c9/md/014a3f88159e3da4652f6b6074efb13b2d.jpg','img/product_img/c9/lg/014a3f88159e3da4652f6b6074efb13b2d.jpg'),
(NULL,9,'img/product_img/c9/sm/01f3a73efb4cc979f38a41df77fdc2c6e3.jpg','img/product_img/c9/md/01f3a73efb4cc979f38a41df77fdc2c6e3.jpg','img/product_img/c9/lg/01f3a73efb4cc979f38a41df77fdc2c6e3.jpg'),
(NULL,9,'img/product_img/c9/sm/0103d4f225a81c3cdf7e0e1bcbd8499969.jpg','img/product_img/c9/md/0103d4f225a81c3cdf7e0e1bcbd8499969.jpg','img/product_img/c9/lg/0103d4f225a81c3cdf7e0e1bcbd8499969.jpg'),
(NULL,10,'img/product_img/c10/sm/01d7624cabdafb2e9d940a3345d19ff9cb.jpg','img/product_img/c10/md/01d7624cabdafb2e9d940a3345d19ff9cb.jpg','img/product_img/c10/lg/01d7624cabdafb2e9d940a3345d19ff9cb.jpg'),
(NULL,10,'img/product_img/c10/sm/01c5545b5f7f8861e46f37a4338552f067.jpg','img/product_img/c10/md/01c5545b5f7f8861e46f37a4338552f067.jpg','img/product_img/c10/lg/01c5545b5f7f8861e46f37a4338552f067.jpg'),
(NULL,10,'img/product_img/c10/sm/01287b9fd2203d81fb52e517b76e651294.jpg','img/product_img/c10/md/01287b9fd2203d81fb52e517b76e651294.jpg','img/product_img/c10/lg/01287b9fd2203d81fb52e517b76e651294.jpg'),
(NULL,11,'img/product_img/c11/sm/011463bd342ad150797bfeee9328b2cc2c.jpg','img/product_img/c11/md/011463bd342ad150797bfeee9328b2cc2c.jpg','img/product_img/c11/lg/011463bd342ad150797bfeee9328b2cc2c.jpg'),
(NULL,11,'img/product_img/c11/sm/018c2e93e3d248b82561510643904b0bff.jpg','img/product_img/c11/md/018c2e93e3d248b82561510643904b0bff.jpg','img/product_img/c11/lg/018c2e93e3d248b82561510643904b0bff.jpg'),
(NULL,11,'img/product_img/c11/sm/01b4ee520ea9b39766b648e2b79f74a710.jpg','img/product_img/c11/md/01b4ee520ea9b39766b648e2b79f74a710.jpg','img/product_img/c11/lg/01b4ee520ea9b39766b648e2b79f74a710.jpg'),
(NULL,11,'img/product_img/c11/sm/014e64353c9d6d5af61d628a5dcc53e983.jpg','img/product_img/c11/md/014e64353c9d6d5af61d628a5dcc53e983.jpg','img/product_img/c11/lg/014e64353c9d6d5af61d628a5dcc53e983.jpg'),
(NULL,12,'img/product_img/c12/sm/0117d6fd448c5926c60213ee623d7a24a5.jpg','img/product_img/c12/md/0117d6fd448c5926c60213ee623d7a24a5.jpg','img/product_img/c12/lg/0117d6fd448c5926c60213ee623d7a24a5.jpg'),
(NULL,12,'img/product_img/c12/sm/01ec2480e9e6689751220130d8975fb3e0.jpg','img/product_img/c12/md/01ec2480e9e6689751220130d8975fb3e0.jpg','img/product_img/c12/lg/01ec2480e9e6689751220130d8975fb3e0.jpg'),
(NULL,12,'img/product_img/c12/sm/010048fbdc19b562e08e2d9dd27ae6be79.jpg','img/product_img/c12/md/010048fbdc19b562e08e2d9dd27ae6be79.jpg','img/product_img/c12/lg/010048fbdc19b562e08e2d9dd27ae6be79.jpg'),
(NULL,12,'img/product_img/c12/sm/01ae3db477f7d100798ac352310eeb0622.jpg','img/product_img/c12/md/01ae3db477f7d100798ac352310eeb0622.jpg','img/product_img/c12/lg/01ae3db477f7d100798ac352310eeb0622.jpg'),
(NULL,13,'img/product_img/c13/sm/02fbff8e1d5647ab40bcb77470e1b6c776.jpg','img/product_img/c13/md/02fbff8e1d5647ab40bcb77470e1b6c776.jpg','img/product_img/c13/lg/02fbff8e1d5647ab40bcb77470e1b6c776.jpg'),
(NULL,13,'img/product_img/c13/sm/027afd50281c7a1569837332559d7204d5.jpg','img/product_img/c13/md/027afd50281c7a1569837332559d7204d5.jpg','img/product_img/c13/lg/027afd50281c7a1569837332559d7204d5.jpg'),
(NULL,13,'img/product_img/c13/sm/0297b9b44dec1ae1911e686e440ff7907e.jpg','img/product_img/c13/md/0297b9b44dec1ae1911e686e440ff7907e.jpg','img/product_img/c13/lg/0297b9b44dec1ae1911e686e440ff7907e.jpg'),
(NULL,13,'img/product_img/c13/sm/025e98dfe687454955d7726f4e6c056216.jpg','img/product_img/c13/md/025e98dfe687454955d7726f4e6c056216.jpg','img/product_img/c13/lg/025e98dfe687454955d7726f4e6c056216.jpg'),
(NULL,14,'img/product_img/c14/sm/02ff9359a91e5741ad6875364d6d71e585.jpg','img/product_img/c14/md/02ff9359a91e5741ad6875364d6d71e585.jpg','img/product_img/c14/lg/02ff9359a91e5741ad6875364d6d71e585.jpg'),
(NULL,14,'img/product_img/c14/sm/02f4c6dc17a27b7b70564771df7c3133c2.jpg','img/product_img/c14/md/02f4c6dc17a27b7b70564771df7c3133c2.jpg','img/product_img/c14/lg/02f4c6dc17a27b7b70564771df7c3133c2.jpg'),
(NULL,14,'img/product_img/c14/sm/02255af83c606009e71be8b64b7c704266.jpg','img/product_img/c14/md/02255af83c606009e71be8b64b7c704266.jpg','img/product_img/c14/lg/02255af83c606009e71be8b64b7c704266.jpg'),
(NULL,14,'img/product_img/c14/sm/026960584ffec01e4a5e11e93610555c36.jpg','img/product_img/c14/md/026960584ffec01e4a5e11e93610555c36.jpg','img/product_img/c14/lg/026960584ffec01e4a5e11e93610555c36.jpg'),
(NULL,15,'img/product_img/c15/sm/0258571d92de218a7eb5ea72336116dd5c.jpg','img/product_img/c15/md/0258571d92de218a7eb5ea72336116dd5c.jpg','img/product_img/c15/lg/0258571d92de218a7eb5ea72336116dd5c.jpg'),
(NULL,15,'img/product_img/c15/sm/025007fcadef18108d126b54e2050c77c4.jpg','img/product_img/c15/md/025007fcadef18108d126b54e2050c77c4.jpg','img/product_img/c15/lg/025007fcadef18108d126b54e2050c77c4.jpg'),
(NULL,15,'img/product_img/c15/sm/02eab8663577d8f30c859eef289810f9e1.jpg','img/product_img/c15/md/02eab8663577d8f30c859eef289810f9e1.jpg','img/product_img/c15/lg/02eab8663577d8f30c859eef289810f9e1.jpg'),
(NULL,15,'img/product_img/c15/sm/0287802960db87d120b168e461289075aa.jpg','img/product_img/c15/md/0287802960db87d120b168e461289075aa.jpg','img/product_img/c15/lg/0287802960db87d120b168e461289075aa.jpg'),
(NULL,16,'img/product_img/c16/sm/01e70120032d5310c9816ebfe63098e43c.jpg','img/product_img/c16/md/01e70120032d5310c9816ebfe63098e43c.jpg','img/product_img/c16/lg/01e70120032d5310c9816ebfe63098e43c.jpg'),
(NULL,16,'img/product_img/c16/sm/028868e7ebe128f076b2ece09a02f4b4f3.jpg','img/product_img/c16/md/028868e7ebe128f076b2ece09a02f4b4f3.jpg','img/product_img/c16/lg/028868e7ebe128f076b2ece09a02f4b4f3.jpg'),
(NULL,16,'img/product_img/c16/sm/0276907dcd95a907a2032706e4e5b43348.jpg','img/product_img/c16/md/0276907dcd95a907a2032706e4e5b43348.jpg','img/product_img/c16/lg/0276907dcd95a907a2032706e4e5b43348.jpg'),
(NULL,16,'img/product_img/c16/sm/021a7ac1b9d88cd5789efdbd66a119cca2.jpg','img/product_img/c16/md/021a7ac1b9d88cd5789efdbd66a119cca2.jpg','img/product_img/c16/lg/021a7ac1b9d88cd5789efdbd66a119cca2.jpg'),
(NULL,17,'img/product_img/c17/sm/027720fa020ab2d9d391b57163995e8383.jpg','img/product_img/c17/md/027720fa020ab2d9d391b57163995e8383.jpg','img/product_img/c17/lg/027720fa020ab2d9d391b57163995e8383.jpg'),
(NULL,17,'img/product_img/c17/sm/029430774228d336494ba46e18bca9c6a3.jpg','img/product_img/c17/md/029430774228d336494ba46e18bca9c6a3.jpg','img/product_img/c17/lg/029430774228d336494ba46e18bca9c6a3.jpg'),
(NULL,17,'img/product_img/c17/sm/02e970769770e51a920d49952d27b8dc22.jpg','img/product_img/c17/md/02e970769770e51a920d49952d27b8dc22.jpg','img/product_img/c17/lg/02e970769770e51a920d49952d27b8dc22.jpg'),
(NULL,17,'img/product_img/c17/sm/02be1d3d3bd3d292982ca1bdea70651fd9.jpg','img/product_img/c17/md/02be1d3d3bd3d292982ca1bdea70651fd9.jpg','img/product_img/c17/lg/02be1d3d3bd3d292982ca1bdea70651fd9.jpg'),
(NULL,18,'img/product_img/c18/sm/01315cd91e6cf27e0036d67faadf244659.jpg','img/product_img/c18/md/01315cd91e6cf27e0036d67faadf244659.jpg','img/product_img/c18/lg/01315cd91e6cf27e0036d67faadf244659.jpg'),
(NULL,18,'img/product_img/c18/sm/01bca5f67fa1354cc950f12f8870cf5907.jpg','img/product_img/c18/md/01bca5f67fa1354cc950f12f8870cf5907.jpg','img/product_img/c18/lg/01bca5f67fa1354cc950f12f8870cf5907.jpg'),
(NULL,18,'img/product_img/c18/sm/010aadd34a174cb4c9dd544ee56fc85711.jpg','img/product_img/c18/md/010aadd34a174cb4c9dd544ee56fc85711.jpg','img/product_img/c18/lg/010aadd34a174cb4c9dd544ee56fc85711.jpg'),
(NULL,18,'img/product_img/c18/sm/015b4fa95ccb36bea3e2adaae12efbb660.jpg','img/product_img/c18/md/015b4fa95ccb36bea3e2adaae12efbb660.jpg','img/product_img/c18/lg/015b4fa95ccb36bea3e2adaae12efbb660.jpg'),
(NULL,19,'img/product_img/c19/sm/0239c9c97e263ba04eb40582597e47699.jpg','img/product_img/c19/md/0239c9c97e263ba04eb40582597e476991.jpg','img/product_img/c19/lg/0239c9c97e263ba04eb40582597e476991.jpg'),
(NULL,19,'img/product_img/c19/sm/027aa8daf3e8c8f09703dee7a6076bd2a6.jpg','img/product_img/c19/md/027aa8daf3e8c8f09703dee7a6076bd2a6.jpg','img/product_img/c19/lg/027aa8daf3e8c8f09703dee7a6076bd2a6.jpg'),
(NULL,19,'img/product_img/c19/sm/024b359c9727165cae9209bba06a548801.jpg','img/product_img/c19/md/024b359c9727165cae9209bba06a548801.jpg','img/product_img/c19/lg/024b359c9727165cae9209bba06a548801.jpg'),
(NULL,19,'img/product_img/c19/sm/02a910ad8e15cd07965ec996a47612f46c.jpg','img/product_img/c19/md/02a910ad8e15cd07965ec996a47612f46c.jpg','img/product_img/c19/lg/02a910ad8e15cd07965ec996a47612f46c.jpg'),
(NULL,20,'img/product_img/c20/sm/0209f5115be1e62f42257bae1d08a1aa53.jpg','img/product_img/c20/md/0209f5115be1e62f42257bae1d08a1aa53.jpg','img/product_img/c20/lg/0209f5115be1e62f42257bae1d08a1aa53.jpg'),
(NULL,20,'img/product_img/c20/sm/02da4fc7bfdd95c54f7bbf6d555216dac0.jpg','img/product_img/c20/md/02da4fc7bfdd95c54f7bbf6d555216dac0.jpg','img/product_img/c20/lg/02da4fc7bfdd95c54f7bbf6d555216dac0.jpg'),
(NULL,20,'img/product_img/c20/sm/02ba2150e4119e9c21854bcf9d73603ff4.jpg','img/product_img/c20/md/02ba2150e4119e9c21854bcf9d73603ff4.jpg','img/product_img/c20/lg/02ba2150e4119e9c21854bcf9d73603ff4.jpg'),
(NULL,20,'img/product_img/c20/sm/027f2a9a2615850b8674deed7dd7c5da7e.jpg','img/product_img/c20/md/027f2a9a2615850b8674deed7dd7c5da7e.jpg','img/product_img/c20/lg/027f2a9a2615850b8674deed7dd7c5da7e.jpg'),
(NULL,21,'img/product_img/c21/sm/026a49defe2b58467f93add27bc2c5af56.jpg','img/product_img/c21/md/026a49defe2b58467f93add27bc2c5af56.jpg','img/product_img/c21/lg/026a49defe2b58467f93add27bc2c5af56.jpg'),
(NULL,21,'img/product_img/c21/sm/01e1a5a8f432b206b55505fc11c46c2fd6.jpg','img/product_img/c21/md/01e1a5a8f432b206b55505fc11c46c2fd6.jpg','img/product_img/c21/lg/01e1a5a8f432b206b55505fc11c46c2fd6.jpg'),
(NULL,21,'img/product_img/c21/sm/02e3e35a0d7919cb4bcca2b57ba34f44b8.jpg','img/product_img/c21/md/02e3e35a0d7919cb4bcca2b57ba34f44b8.jpg','img/product_img/c21/lg/02e3e35a0d7919cb4bcca2b57ba34f44b8.jpg'),
(NULL,22,'img/product_img/c22/sm/0191f24cfe84a8677d49dacef934e119e3.jpg','img/product_img/c22/md/0191f24cfe84a8677d49dacef934e119e3.jpg','img/product_img/c22/lg/0191f24cfe84a8677d49dacef934e119e3.jpg'),
(NULL,22,'img/product_img/c22/sm/0191d6cbfb933c7e6270ec19140e9858b3.jpg','img/product_img/c22/md/0191d6cbfb933c7e6270ec19140e9858b3.jpg','img/product_img/c22/lg/0191d6cbfb933c7e6270ec19140e9858b3.jpg'),
(NULL,22,'img/product_img/c22/sm/01d97c1166b6d00961d7a08cfcf922ffe1.jpg','img/product_img/c22/md/01d97c1166b6d00961d7a08cfcf922ffe1.jpg','img/product_img/c22/lg/01d97c1166b6d00961d7a08cfcf922ffe1.jpg'),
(NULL,23,'img/product_img/c23/sm/0211c9ee85088e9fbc82f0f9f288f0a06d.jpg','img/product_img/c23/md/0211c9ee85088e9fbc82f0f9f288f0a06d.jpg','img/product_img/c23/lg/0211c9ee85088e9fbc82f0f9f288f0a06d.jpg'),
(NULL,23,'img/product_img/c23/sm/02132b17b41731790e8ddd0fd96b03c8f7.jpg','img/product_img/c23/md/02132b17b41731790e8ddd0fd96b03c8f7.jpg','img/product_img/c23/lg/02132b17b41731790e8ddd0fd96b03c8f7.jpg'),
(NULL,23,'img/product_img/c23/sm/02e35f81a0b7d4c319667d9d259dd6c5ef.jpg','img/product_img/c23/md/02e35f81a0b7d4c319667d9d259dd6c5ef.jpg','img/product_img/c23/lg/02e35f81a0b7d4c319667d9d259dd6c5ef.jpg'),
(NULL,24,'img/product_img/c24/sm/015597df306c6efca2c39b926532a0a60f.jpg','img/product_img/c24/md/015597df306c6efca2c39b926532a0a60f.jpg','img/product_img/c24/lg/015597df306c6efca2c39b926532a0a60f.jpg'),
(NULL,24,'img/product_img/c24/sm/01551b70524fa7ab01638d9ab24d409c90.jpg','img/product_img/c24/md/01551b70524fa7ab01638d9ab24d409c90.jpg','img/product_img/c24/lg/01551b70524fa7ab01638d9ab24d409c90.jpg'),
(NULL,24,'img/product_img/c24/sm/0190aad94a881171f5ed369bb3c88ffc01.jpg','img/product_img/c24/md/0190aad94a881171f5ed369bb3c88ffc01.jpg','img/product_img/c24/lg/0190aad94a881171f5ed369bb3c88ffc01.jpg'),
(NULL,25,'img/product_img/c25/sm/01df3e9f570618c2c56d621c6077c6c8be.jpg','img/product_img/c25/md/01df3e9f570618c2c56d621c6077c6c8be.jpg','img/product_img/c25/lg/01df3e9f570618c2c56d621c6077c6c8be.jpg'),
(NULL,25,'img/product_img/c25/sm/01ea79dab07d4d8aebb3ffa99a04e25ffe.jpg','img/product_img/c25/md/01ea79dab07d4d8aebb3ffa99a04e25ffe.jpg','img/product_img/c25/lg/01ea79dab07d4d8aebb3ffa99a04e25ffe.jpg'),
(NULL,25,'img/product_img/c25/sm/015970346698abc8b80bd976e5f45e0d35.jpg','img/product_img/c25/md/015970346698abc8b80bd976e5f45e0d35.jpg','img/product_img/c25/lg/015970346698abc8b80bd976e5f45e0d35.jpg'),
(NULL,25,'img/product_img/c25/sm/01563a87c8282d46318d595a48f4c3f49f.jpg','img/product_img/c25/md/01563a87c8282d46318d595a48f4c3f49f.jpg','img/product_img/c25/lg/01563a87c8282d46318d595a48f4c3f49f.jpg'),
(NULL,26,'img/product_img/c26/sm/02858e716eb658f9f46a9765b5070ac155.jpg','img/product_img/c26/md/02858e716eb658f9f46a9765b5070ac155.jpg','img/product_img/c26/lg/02858e716eb658f9f46a9765b5070ac155.jpg'),
(NULL,26,'img/product_img/c26/sm/029c8e48ea5ce63afcab93f1d6aa9bfb33.jpg','img/product_img/c26/md/029c8e48ea5ce63afcab93f1d6aa9bfb33.jpg','img/product_img/c26/lg/029c8e48ea5ce63afcab93f1d6aa9bfb33.jpg'),
(NULL,26,'img/product_img/c26/sm/02c36dfd2063cedb52c36d475638f368e7.jpg','img/product_img/c26/md/02c36dfd2063cedb52c36d475638f368e7.jpg','img/product_img/c26/lg/02c36dfd2063cedb52c36d475638f368e7.jpg'),
(NULL,26,'img/product_img/c26/sm/02cb139daab3a999f7ab5e80c064ab40df.jpg','img/product_img/c26/md/02cb139daab3a999f7ab5e80c064ab40df.jpg','img/product_img/c26/lg/02cb139daab3a999f7ab5e80c064ab40df.jpg'),
(NULL,27,'img/product_img/c27/sm/02921f33f6b899846da75634dccb39feac.jpg','img/product_img/c27/md/02921f33f6b899846da75634dccb39feac.jpg','img/product_img/c27/lg/02921f33f6b899846da75634dccb39feac.jpg'),
(NULL,27,'img/product_img/c27/sm/02f9edb74d9c6bb0ec824bd07e805b1229.jpg','img/product_img/c27/md/02f9edb74d9c6bb0ec824bd07e805b1229.jpg','img/product_img/c27/lg/02f9edb74d9c6bb0ec824bd07e805b1229.jpg'),
(NULL,27,'img/product_img/c27/sm/02f5b01bb6d2567a890f190894eea7303f.jpg','img/product_img/c27/md/02f5b01bb6d2567a890f190894eea7303f.jpg','img/product_img/c27/lg/02f5b01bb6d2567a890f190894eea7303f.jpg'),
(NULL,27,'img/product_img/c27/sm/02bdb151fd7af74cabbc53787d03264f1e.jpg','img/product_img/c27/md/02bdb151fd7af74cabbc53787d03264f1e.jpg','img/product_img/c27/lg/02bdb151fd7af74cabbc53787d03264f1e.jpg'),
(NULL,28,'img/product_img/c28/sm/023e57b3c492d7947ad09f9d408a8007df.jpg','img/product_img/c28/md/023e57b3c492d7947ad09f9d408a8007df.jpg','img/product_img/c28/lg/023e57b3c492d7947ad09f9d408a8007df.jpg'),
(NULL,28,'img/product_img/c28/sm/0293eb9b1bf13f8fb4639fac7d8f1b8f42.jpg','img/product_img/c28/md/0293eb9b1bf13f8fb4639fac7d8f1b8f42.jpg','img/product_img/c28/lg/0293eb9b1bf13f8fb4639fac7d8f1b8f42.jpg'),
(NULL,28,'img/product_img/c28/sm/02ee5f1eff7b899a35890c7ffb1a26b3ac.jpg','img/product_img/c28/md/02ee5f1eff7b899a35890c7ffb1a26b3ac.jpg','img/product_img/c28/lg/02ee5f1eff7b899a35890c7ffb1a26b3ac.jpg'),
(NULL,29,'img/product_img/c29/sm/02846f99b571395e982df886ca4638e017.jpg','img/product_img/c29/md/02846f99b571395e982df886ca4638e017.jpg','img/product_img/c29/lg/02846f99b571395e982df886ca4638e017.jpg'),
(NULL,29,'img/product_img/c29/sm/025f2f5ee6e361511c81b6050099c49a56.jpg','img/product_img/c29/md/025f2f5ee6e361511c81b6050099c49a56.jpg','img/product_img/c29/lg/025f2f5ee6e361511c81b6050099c49a56.jpg'),
(NULL,29,'img/product_img/c29/sm/02b6d1d4bc627c3b7ef8a96ac11c2a1d53.jpg','img/product_img/c29/md/02b6d1d4bc627c3b7ef8a96ac11c2a1d53.jpg','img/product_img/c29/lg/02b6d1d4bc627c3b7ef8a96ac11c2a1d53.jpg'),
(NULL,30,'img/product_img/c30/sm/0237ab046f82353f81b28981d713ed5c45.jpg','img/product_img/c30/md/0237ab046f82353f81b28981d713ed5c45.jpg','img/product_img/c30/lg/0237ab046f82353f81b28981d713ed5c45.jpg'),
(NULL,30,'img/product_img/c30/sm/026f86ce9b6626bbf0e1ed3c249b322645.jpg','img/product_img/c30/md/026f86ce9b6626bbf0e1ed3c249b322645.jpg','img/product_img/c30/lg/026f86ce9b6626bbf0e1ed3c249b322645.jpg'),
(NULL,30,'img/product_img/c30/sm/02ef56959f39881525645600a69fb62a85.jpg','img/product_img/c30/md/02ef56959f39881525645600a69fb62a85.jpg','img/product_img/c30/lg/02ef56959f39881525645600a69fb62a85.jpg'),
(NULL,30,'img/product_img/c30/sm/0296e1a7cdfba9a65ea707ec1996bff9d8.jpg','img/product_img/c30/md/0296e1a7cdfba9a65ea707ec1996bff9d8.jpg','img/product_img/c30/lg/0296e1a7cdfba9a65ea707ec1996bff9d8.jpg'),
(NULL,31,'img/product_img/c31/sm/0212c88af94f3fc8f36313264ba9fb99a3.jpg','img/product_img/c31/md/0212c88af94f3fc8f36313264ba9fb99a3.jpg','img/product_img/c31/lg/0212c88af94f3fc8f36313264ba9fb99a3.jpg'),
(NULL,31,'img/product_img/c31/sm/02b54d2dd54b72228156bb96e11fd48248.jpg','img/product_img/c31/md/02b54d2dd54b72228156bb96e11fd48248.jpg','img/product_img/c31/lg/02b54d2dd54b72228156bb96e11fd48248.jpg'),
(NULL,31,'img/product_img/c31/sm/027838d50da85c173d3068d6ee6b632821.jpg','img/product_img/c31/md/027838d50da85c173d3068d6ee6b632821.jpg','img/product_img/c31/lg/027838d50da85c173d3068d6ee6b632821.jpg'),
(NULL,31,'img/product_img/c31/sm/02053b17194b2aeec4467db8ae484fc58f.jpg','img/product_img/c31/md/02053b17194b2aeec4467db8ae484fc58f.jpg','img/product_img/c31/lg/02053b17194b2aeec4467db8ae484fc58f.jpg'),
(NULL,32,'img/product_img/c32/sm/02b569a04f820382e3246dc283db650a5f.jpg','img/product_img/c32/md/02b569a04f820382e3246dc283db650a5f.jpg','img/product_img/c32/lg/02b569a04f820382e3246dc283db650a5f.jpg'),
(NULL,32,'img/product_img/c32/sm/023f33a4b6df329f13b0078c87994cff45.jpg','img/product_img/c32/md/023f33a4b6df329f13b0078c87994cff45.jpg','img/product_img/c32/lg/023f33a4b6df329f13b0078c87994cff45.jpg'),
(NULL,32,'img/product_img/c32/sm/0287de65c46779ecbfc8841fb2832cf73e.jpg','img/product_img/c32/md/0287de65c46779ecbfc8841fb2832cf73e.jpg','img/product_img/c32/lg/0287de65c46779ecbfc8841fb2832cf73e.jpg'),
(NULL,33,'img/product_img/c33/sm/02ee6a7d828020860a8e401cb875b9bbec.jpg','img/product_img/c33/md/02ee6a7d828020860a8e401cb875b9bbec.jpg','img/product_img/c33/lg/02ee6a7d828020860a8e401cb875b9bbec.jpg'),
(NULL,33,'img/product_img/c33/sm/02acd0d7d269c26ac88d9930fe86f56d7b.jpg','img/product_img/c33/md/02acd0d7d269c26ac88d9930fe86f56d7b.jpg','img/product_img/c33/lg/02acd0d7d269c26ac88d9930fe86f56d7b.jpg'),
(NULL,33,'img/product_img/c33/sm/02c067c4c2e190d17f5f699196ead69b42.jpg','img/product_img/c33/md/02c067c4c2e190d17f5f699196ead69b42.jpg','img/product_img/c33/lg/02c067c4c2e190d17f5f699196ead69b42.jpg'),
(NULL,33,'img/product_img/c33/sm/023267d4be7ad4a8a057bdb29b695e33a0.jpg','img/product_img/c33/md/023267d4be7ad4a8a057bdb29b695e33a0.jpg','img/product_img/c33/lg/023267d4be7ad4a8a057bdb29b695e33a0.jpg'),
(NULL,34,'img/product_img/c34/sm/021366feb2e89d9aaee8068ecaf8a3a1ea.jpg','img/product_img/c34/md/021366feb2e89d9aaee8068ecaf8a3a1ea.jpg','img/product_img/c34/lg/021366feb2e89d9aaee8068ecaf8a3a1ea.jpg'),
(NULL,34,'img/product_img/c34/sm/029c985a25553062f6d9d75f2f1d329a27.jpg','img/product_img/c34/md/029c985a25553062f6d9d75f2f1d329a27.jpg','img/product_img/c34/lg/029c985a25553062f6d9d75f2f1d329a27.jpg'),
(NULL,34,'img/product_img/c34/sm/020961fffbadfea8fac73efb57133ceba0.jpg','img/product_img/c34/md/020961fffbadfea8fac73efb57133ceba0.jpg','img/product_img/c34/lg/020961fffbadfea8fac73efb57133ceba0.jpg'),
(NULL,34,'img/product_img/c34/sm/02bd6f18542ce05cfb68ccf2d137aa4f5f.jpg','img/product_img/c34/md/02bd6f18542ce05cfb68ccf2d137aa4f5f.jpg','img/product_img/c34/lg/02bd6f18542ce05cfb68ccf2d137aa4f5f.jpg'),
(NULL,35,'img/product_img/c35/sm/01b81506ee596c7034369fe735afdbb8fb.jpg','img/product_img/c35/md/01b81506ee596c7034369fe735afdbb8fb.jpg','img/product_img/c35/lg/01b81506ee596c7034369fe735afdbb8fb.jpg'),
(NULL,35,'img/product_img/c35/sm/01c13d50be6916de0ca9887f3de1d573a6.jpg','img/product_img/c35/md/01c13d50be6916de0ca9887f3de1d573a6.jpg','img/product_img/c35/lg/01c13d50be6916de0ca9887f3de1d573a6.jpg'),
(NULL,35,'img/product_img/c35/sm/0165eb3b6cb81ec359dbc4c3a4e87465e9.jpg','img/product_img/c35/md/0165eb3b6cb81ec359dbc4c3a4e87465e9.jpg','img/product_img/c35/lg/0165eb3b6cb81ec359dbc4c3a4e87465e9.jpg'),
(NULL,35,'img/product_img/c35/sm/01c972c85ea5dc5ea9929891f7984f85d7.jpg','img/product_img/c35/md/01c972c85ea5dc5ea9929891f7984f85d7.jpg','img/product_img/c35/lg/01c972c85ea5dc5ea9929891f7984f85d7.jpg'),
(NULL,36,'img/product_img/c36/sm/027d6bae7911340deb4d9048c834f6b4b.jpg','img/product_img/c36/md/027d6bae7911340deb4d9048c834f6b4be.jpg','img/product_img/c36/lg/027d6bae7911340deb4d9048c834f6b4be.jpg'),
(NULL,36,'img/product_img/c36/sm/02861607b60482a87a4f3b332efac67d27.jpg','img/product_img/c36/md/02861607b60482a87a4f3b332efac67d27.jpg','img/product_img/c36/lg/02861607b60482a87a4f3b332efac67d27.jpg'),
(NULL,36,'img/product_img/c36/sm/028d8be40538a75f2826e1147f6c4a2467.jpg','img/product_img/c36/md/028d8be40538a75f2826e1147f6c4a2467.jpg','img/product_img/c36/lg/028d8be40538a75f2826e1147f6c4a2467.jpg'),
(NULL,36,'img/product_img/c36/sm/023e632d53d480be42f0d8fcead629d49b.jpg','img/product_img/c36/md/023e632d53d480be42f0d8fcead629d49b.jpg','img/product_img/c36/lg/023e632d53d480be42f0d8fcead629d49b.jpg'),



/**��װ**/
CREATE TABLE yoho_clothing(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  brand_id INT,              #�·��ͺ�--������ɫ
  color_id INT,		     #ͬһ�ͺŲ�ͬ��ɫ
  title VARCHAR(64),         #������
  cost_price DECIMAL(6,2),   #ԭ��/���Ƽ�
  price DECIMAL(6,2),	      #������
  discount FLOAT(2,1),        #����
  color VARCHAR(64),           #��ɫ
  xsimg VARCHAR(256),          #��Сͼ
  only_number VARCHAR(64),      #��Ʒ��Ϣ�����
  sex VARCHAR(16),		#�Ա�
  style VARCHAR(128),		#�������

  collar VARCHAR(32),          #����
  clothing_length VARCHAR(32), #�³�
  version VARCHAR(32),         #����
  thickness1 VARCHAR(32),      #���1
  thickness2 INT,      #���2
  flexibility INT,    #����
  softness INT,	      #�����
  breathability INT,  #͸����
  details VARCHAR(128),      #����
  sizeimg VARCHAR(256),       #�ߴ�ͼ
  longimg VARCHAR(256),	      #��ͼ

  shelf_time DATETIME,        #�ϼ�ʱ��
  stock INT,                  #�������
  sold_count INT,             #���۳�������
  is_onsale BOOLEAN           #�Ƿ������
);

INSERT INTO yoho_clothing VALUES
(NULL,1,1,'��ˎ����Ůԭ����� ���̾��ĵ��� ����','109','78.00','7.2','��ɫ','img/product_img/c1/xs/01109fc0ac36b9b050d9b889980943a7d6.jpg','51893408','Ů��','��������','Բ��','�̿�','����','��','2','3','3','3','��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c1/028f7a697118f099ba807ca05c0bab7335.jpg','img/product_img/c1/02c72263278a21d77a3b5086e2cef87de2.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,2,'��ˎ����Ůԭ����� ��Ҫ���� ֱͲ����ȹ','249','188',7.6,'����','img/product_img/c2/xs/019fdf06d122b8d740e827190b66e8c674.jpg','51897558','Ů��','ֱͲȹ','��������','��','����','��','2','2','3','2','����ײɫ��ƣ���POLOȹ�İ��ͣ��������ݣ�ÿһ��Ԫ�ض��ǿɰ���������ڶ������ƣ�������ӱ���������ƣ������ȵ��ļ�������һ˿������','img/product_img/c2/021745903d73255145934114300d0ad6b9.jpg','img/product_img/c2/01c78fadb237b5ca9611e2a97a38a125cf.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,3,'��ˎ����Ůԭ����� ���ϸ��ŷ������','239','179',7.5,'����','img/product_img/c3/xs/026f6c5b374ac7c0cdc7d42649d32d594f.jpg','51893402','Ů��','ӡ������','Բ��','����','����','��','2','3','2','2','��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c3/02b88893867a25856084d4fb0112f2fbee.jpg','img/product_img/c3/02c8dca57df707c253bf11684dabe425a5.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,4,'��ˎ����Ůԭ����� ������������T�� ��ɫ',139,'99',7.1,'��ɫ','img/product_img/c4/xs/01d054705b59bace4617aca451abff742f.jpg','51877826','Ů��','ͼ��T��','Բ��','����','����','��','3','2','2','2','��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c4/019405d0b114452d69f098e7f2790aa56b.jpg','img/product_img/c4/01517899279046945dc88a6dd8275db32f.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,5,'��ˎ����Ůԭ����� �̻ҷ��� ��������','119','89',7.5,'��������','img/product_img/c5/xs/0130220ae1b69a026a288ecc64937186a6.jpg','51906514','Ů��','��������','Բ��','�̿�','����','��','2','3','2','2','��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c5/01f704bd4f8207ba713199461184524b8a.jpg','img/product_img/c5/01dc700bc4d95225895accfce4bfc3efe1.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,6,'��ˎ����Ůԭ����� �ּ��ͷ翪�� ��ɫ','219','169',7.7,'��ɫ','img/product_img/c6/xs/02015ccf40688cd6b6bf430ca7c11de928.jpg','51925392','Ů��','��Լ����','����','����','����','��','2','2','3','2','��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c6/01774fa269722f1f7090929e5246be5596.jpg','img/product_img/c6/01a2edda7fc999162adcaa041ed85a3306.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,7,'��ˎ����Ůԭ����� ����Сϵ������',219,168,7.7,'��ɫ�׵�','img/product_img/c7/xs/0252afd1e903ec9ac418b034d061e6f5a0.jpg','51906500','Ů��','ӡ������','V��','����','����','��',2,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c7/02d458f06f363cf128bedf14d32c52322b.jpg','img/product_img/c7/020507d47588a0ecb1678f6fc26f4930ec.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,8,'��ˎ����Ůԭ����� ������ ��ɫ����ȹ',249,188,7.6,'��ɫ','img/product_img/c8/xs/02921f33f6b899846da75634dccb39feac.jpg','51906520','Ů��','��βȹ','ƽ��','��','����','��',2,2,4,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c8/011443e2379f0597162d16f8792a4cc4e3.jpg','img/product_img/c8/011abb6f3a7f0c4e0b9daa5030eadcaeef.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,9,'��ˎ����Ůԭ����� ����һ�ּ��������ȹ ��ɫ',259,199,7.7,'���','img/product_img/c9/xs/02d29471fd78bc02d81b338a5cb1065fa6.jpg','51906524','Ů��','����ȹ','¶��','��','����','��',2,2,2,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c9/0225de9dae64e90451bc046a3b982628bb.jpg','img/product_img/c9/02ba821e356e56bf074915cef5bb47dd03.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,10,'��ˎ����Ůԭ����� �䵭��������ȹ ��ɫ','289',219,7.6,'��ɫ','img/product_img/c10/xs/01d7624cabdafb2e9d940a3345d19ff9cb.jpg',51906516,'Ů��','����ȹ','Բ��','��','����','��',3,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c10/0179f5f5bd1b868c2a8f31c3fb6f1539ca.jpg','img/product_img/c10/01ba251fb3d2d277fbf251058a4cda1a3c.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,11,'��ˎ����Ůԭ����� ���������ճ���',239,178,7.4,'��ɫ','img/product_img/c11/xs/011463bd342ad150797bfeee9328b2cc2c.jpg',51925382,'Ů��','ӡ������','V��','����','����','��',2,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c11/01e447e78b340ae911bd13b1880ac427db.jpg','img/product_img/c11/01233b9611081ec39432ebcbf8a0565230.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,12,'��ˎ����Ůԭ����� ����âС��Ĩ�ر���',119,88,7.4,'����ɫ','img/product_img/c12/xs/0117d6fd448c5926c60213ee623d7a24a5.jpg',51906508,'Ů��','��������','¶��','�̿�','����','��',2,2,3,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c12/02e2a02eaa6a8ba605dd00c20b16c3e1b4.jpg','img/product_img/c12/02803fb3bd954180f85d63c082dae53bee.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,13,'��ˎ����Ůԭ����� �����Ứ ����ȹ',309,238,7.7,'����','img/product_img/c13/xs/02fbff8e1d5647ab40bcb77470e1b6c776.jpg',51906530,'Ů��','����ȹ','Բ��','��','����','��',2,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c13/0268a06cc0e3192ec944bade1f10be484e.jpg','img/product_img/c13/029de105bd260e2870eadc3d7c7fef0e11.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,14,'��ˎ����Ůԭ����� ī��Բ�ӳ���T��',239,178,7.4,'��ɫ','img/product_img/c14/xs/026960584ffec01e4a5e11e93610555c36.jpg',51925386,'Ů��','ͼ��T��','Բ��','����','����','��',2,3,3,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c14/02b780ae0fb8a164d6b84341e9cf288bd1.jpg','img/product_img/c14/022c01e5e27e7b3df73b2de63a29259ce4.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,15,'��ˎ����Ůԭ����� ���Ż���԰��������ȹ',249,189,7.6,'��ɫ','img/product_img/c15/xs/0287802960db87d120b168e461289075aa.jpg',51925378,'Ů��','����ȹ','����','��','����','��',2,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c15/017cb8e6435928509ac0bbfd521e568ef5.jpg','img/product_img/c15/01084d0297849b21e44c34a0747eed03e1.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,16,'��ˎ����Ůԭ����� ���Ų�������ȹ',289,219,7.6,'��ɫ�׵�','img/product_img/c16/xs/01e70120032d5310c9816ebfe63098e43c.jpg',51906506,'Ů��','����ȹ','Բ��','��','����','��',2,2,3,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c16/02d36498fbeaaa16893352a564a4476cea.jpg','img/product_img/c16/02dabdfc1bc42aafb75b0e5c969b7f3fe7.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,17,'��ˎ����Ůԭ����� ��ˬ�����ܲ���',249,188,7.6,'��ɫ','img/product_img/c17/xs/027720fa020ab2d9d391b57163995e8383.jpg',51906528,'Ů��','���׿�','��','�ŷ�','����','��',2,2,3,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c17/01f87dd53655df664e8b6daa9d545c608a.jpg','img/product_img/c17/01d8834a9e95deff804b413e54e8c1f044.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,7,'��ˎ����Ůԭ����� ����Сϵ������',219,168,7.7,'��ɫ�ڵ�','img/product_img/c18/xs/01315cd91e6cf27e0036d67faadf244659.jpg','51906498','Ů��','ӡ������','V��','����','����','��',3,2,2,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c18/02d458f06f363cf128bedf14d32c52322b.jpg','img/product_img/c18/020507d47588a0ecb1678f6fc26f4930ec.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,19,'��ˎ����Ůԭ����� ��ҰС��㿪������ȹ',329,248,7.5,'��ɫ','img/product_img/c19/xs/0239c9c97e263ba04eb40582597e476991.jpg',51925384,'Ů��','����','V��','����','����','��',3,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c19/010c2ba6fd8a34cb7e94ca278cdfa5e48c.jpg','img/product_img/c19/013eb65a809634ada63034b74ead5b1cf3.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,20,'��ˎ����Ůԭ����� ��������� ����',259,199,7.7,'������','img/product_img/c20/xs/0209f5115be1e62f42257bae1d08a1aa53.jpg',51906502,'Ů��','����','����','����','����','��',2,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c20/01a8e3c7fd3a186207180786275b9e9184.jpg','img/product_img/c20/0179bb86103a30d62752ab7b352a0aff21.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,21,'��ˎ����Ůԭ����� �����ɿ��� ��������ȹ',199,148,7.4,'��ɫ','img/product_img/c21/xs/026a49defe2b58467f93add27bc2c5af56.jpg',51897560,'Ů��','ֱͲȹ','Բ��','����','����','��',2,2,3,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c21/0141402fec53e85cbe63f31741f9415e5c.jpg','img/product_img/c21/01da0b28f65f2b18db79266a5922fa3520.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,9,'��ˎ����Ůԭ����� ����һ�ּ��������ȹ ��ɫ',259,199,7.7,'�ڸ���','img/product_img/c22/xs/0191f24cfe84a8677d49dacef934e119e3.jpg',51906526,'Ů��','����ȹ','¶��','��','����','��',2,2,2,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c22/0225de9dae64e90451bc046a3b982628bb.jpg','img/product_img/c22/02ba821e356e56bf074915cef5bb47dd03.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,23,'��ˎ����Ůԭ����� �ǺӰ��� ƴ�Ӱ���ȹ',249,188,7.6,'�Ǻ���+��','img/product_img/c23/xs/0211c9ee85088e9fbc82f0f9f288f0a06d.jpg',51906512,'Ů��','ɡȹ','��','����','����','��',3,2,2,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c23/017680764e1d292654a82ace9e0ec6340e.jpg','img/product_img/c23/01fde6e4d6c2e558e7775fb2fb48e5218d.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,16,'��ˎ����Ůԭ����� ���Ų�������ȹ',289,219,7.6,'��ɫ�ڵ�','img/product_img/c24/xs/015597df306c6efca2c39b926532a0a60f.jpg',51906504,'Ů��','����ȹ','Բ��','��','����','��',2,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c24/02d36498fbeaaa16893352a564a4476cea.jpg','img/product_img/c24/02dabdfc1bc42aafb75b0e5c969b7f3fe7.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,25,'��ˎ����Ůԭ����� СҰī�����ճ���',209,159,7.6,'��ɫ','img/product_img/c25/xs/01df3e9f570618c2c56d621c6077c6c8be.jpg',51925390,'Ů��','ӡ������','V��','����','����','��',3,2,2,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c25/02b083cc0a407d0eb6a82d862888454ff6.jpg','img/product_img/c25/02625b865206525941c3945e753a6742ae.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,26,'��ˎ����Ůԭ����� ��ҩ֮ī������ȹ',379,288,7.6,'��ɫ','img/product_img/c26/xs/02858e716eb658f9f46a9765b5070ac155.jpg',51925388,'Ů��','ֱͲȹ','V��','����','����','��',2,2,2,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c26/020cd3d25f0698e910e7e4fb039ca2e9da.jpg','img/product_img/c26/0266d22d9861e68305fdd818059a18d7e3.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,27,'��ˎ����Ůԭ����� ������ ��ɫ����ȹ',249,188,7.6,'��ɫ','img/product_img/c27/xs/02921f33f6b899846da75634dccb39feac.jpg',51906520,'Ů��','��βȹ','��','����','����','��',2,2,4,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c27/011443e2379f0597162d16f8792a4cc4e3.jpg','img/product_img/c27/011abb6f3a7f0c4e0b9daa5030eadcaeef.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,10,'��ˎ����Ůԭ����� �䵭��������ȹ ��ɫ','289',219,7.6,'��ɫ','img/product_img/c28/xs/023e57b3c492d7947ad09f9d408a8007df.jpg',51906518,'Ů��','����ȹ','Բ��','��','����','��',2,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c28/0179f5f5bd1b868c2a8f31c3fb6f1539ca.jpg','img/product_img/c28/01ba251fb3d2d277fbf251058a4cda1a3c.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,6,'��ˎ����Ůԭ����� �ּ��ͷ翪�� ��ɫ','219','169',7.7,'��ɫ','img/product_img/c29/xs/025f2f5ee6e361511c81b6050099c49a56.jpg','51925394','Ů��','��Լ����','����','����','����','��','3','2','2','2','��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c29/02ce32ef1f7edf05e2e7e67ed22af3ec82.jpg','img/product_img/c29/0213b22bdab692bde3bd283ef46f2f479c.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,30,'��ˎ����Ůԭ����� ������T�� ��ɫ','289','175',6.1,'��ɫ','img/product_img/c30/xs/0237ab046f82353f81b28981d713ed5c45.jpg',51893386,'Ů��','ͼ��T��','Բ��','����','����','��',2,2,2,3,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c30/016247492fadc79723cbb9932c58a2ca1c.jpg','img/product_img/c30/01e36bc1a6704670554749faf2c3b0428b.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,30,'��ˎ����Ůԭ����� ������T�� ��ɫ','229','169',7.4,'��ɫ','img/product_img/c31/xs/0212c88af94f3fc8f36313264ba9fb99a3.jpg',51877712,'Ů��','ͼ��T��','Բ��','����','����','��',3,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c31/02a939ede6652abe631f7866811842daba.jpg','img/product_img/c31/0141d00ce5199029e35903424682854259.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,31,'��ˎ����Ůԭ����� С���߶�����ȹ ��ɫ',229,168,7.3,'��ɫ','img/product_img/c32/xs/02b569a04f820382e3246dc283db650a5f.jpg',51877702,'Ů��','ֱͲȹ','Բ��','����','����','��',2,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c32/012bc9221db5967d8a2f009744cff66399.jpg','img/product_img/c32/01d732005d4d1dafc69ff07826008e732a.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,31,'��ˎ����Ůԭ����� С���߶�����ȹ ��ɫ',229,168,7.3,'��ɫ','img/product_img/c33/xs/02ee6a7d828020860a8e401cb875b9bbec.jpg',51877700,'Ů��','ֱͲȹ','Բ��','����','����','��',3,2,3,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c33/01c92039eb0d4b7a4d1f10517ba6ea6b32.jpg','img/product_img/c33/02e019bac2311f915e5391d5476245181d.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,34,'��ˎ����Ůԭ����� һ��һ�����¾��� ����ȹ',239,179,7.5,'��ɫ','img/product_img/c34/xs/021366feb2e89d9aaee8068ecaf8a3a1ea.jpg',51893424,'Ů��','����ȹ','Բ��','����','����','��',3,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c34/01f1947a9d02cf154eae58778836d8bfa4.jpg','img/product_img/c34/016928453cda1cf50981a87b336ea1d5cc.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,35,'��ˎ����Ůԭ����� ������Ů ��������ȹ',249,189,7.6,'��ɫ','img/product_img/c35/xs/01b81506ee596c7034369fe735afdbb8fb.jpg',51893398,'Ů��','����ȹ','Բ��','����','����','��',2,2,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c35/014ce3463a3d314ce2f5ff188a34debda5.jpg','img/product_img/c35/018bb42a80ca97abe07ba3063b6900937a.jpg','2018-06-19 10:00','3000','1800',1),
(NULL,1,30,'��ˎ����Ůԭ����� ������T�� ��ɫ','229','169',7.4,'��ɫ','img/product_img/c36/xs/027d6bae7911340deb4d9048c834f6b4be.jpg',51877710,'Ů��','ͼ��T��','Բ��','����','����','��',2,3,2,2,'��ˎ����Ůԭ����������ֳ��ģ�����ԭζ����ÿ��ϵ�ж����������Լ���С���¡�','img/product_img/c36/023262f95bd49299685cbeb63d5822dac0.jpg','img/product_img/c36/01c76edb969caa7cbfb948f9e8bf6b3e22.jpg','2018-06-19 10:00','3000','1800',1),



/****��ҳ�ֲ������Ʒ****/
CREATE TABLE yoho_index_big_carousel(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	img VARCHAR(128),
	title VARCHAR(64),
	href VARCHAR(128)
);
INSERT INTO `yoho_index_big_carousel` VALUES (null, 'img/index_img/banner1.jpg', '��ҵ��', 'product_details.html?cid=28');
INSERT INTO `yoho_index_big_carousel` VALUES (null, 'img/index_img/banner2.jpg', '�����»���', 'product_details.html?cid=19');
INSERT INTO `yoho_index_big_carousel` VALUES (null, 'img/index_img/banner3.jpg', '��ʱ�Ż�', 'lookforward.html');
INSERT INTO `yoho_index_big_carousel` VALUES (null, 'img/index_img/banner4.jpg', 'VIP�۸���', 'lookforward.html');
INSERT INTO `yoho_index_big_carousel` VALUES (null, 'img/index_img/banner5.jpg', '�ĵ���ˮС��', 'product_details.html?cid=18');
INSERT INTO `yoho_index_big_carousel` VALUES (null, 'img/index_img/banner6.jpg', '��������', 'product_details.html?cid=10');
INSERT INTO `yoho_index_big_carousel` VALUES (null, 'img/index_img/banner7.jpg', '��������', 'product_details.html?cid=6');
INSERT INTO `yoho_index_big_carousel` VALUES (null, 'img/index_img/banner8.jpg', '��Ʒ����', 'product_details.html?cid=12');

/****��ҳ��Ʒ****/
CREATE TABLE yoho_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);
INSERT INTO yoho_index_product VALUES
(NULL, 'Lightning Bear ����������ͷ����T��','img/index_img/f5/016bb20fc3b0b4f97a496d36d055a3fbc1.jpg', 174.00, 'product_detail.html?cid=3', 1, 1, 1),
(NULL, 'Dickies box��ĸӡ������T�� Ů��','img/index_img/f5/02808980faa35c53becfb9f2738c174c1b.jpg', 219.00, 'product_detail.html?cid=7', 2, 2, 2),
(NULL, 'Lightning Bear ��ʽLOGO��ĸ����T��','img/index_img/f5/017a9305193eb72da6ad298c162dca01b8.jpg', 165.00, 'product_details.html?cid=11', 3, 3, 3),
(NULL, 'Mee joan ����ɫӡ����ɴ����������ȹ','img/index_img/f5/01f99732afc0da33a624fc9b13b00169a0.jpg', 299.00, 'product_details.html?cid=15', 4, 4, 4),
(NULL, '������navel ӡ����֯����ȹ','img/index_img/f5/02628845769b98b828151cd7ee8cef1337.jpg', 399.00, 'product_detail.html?cid=19', 5, 5, 5),
(NULL, 'b+ab ţ�б���ȹ','img/index_img/f5/01f0d059d9728c563994a53f47f7394c0c.jpg', 389.00, 'product_detail.html?cid=23', 6, 6, 6),
(NULL, 'Levi��s 501 ŮʿֱͲˮϴ����ţ�п�','img/index_img/f5/0293178bf4b2c5baa41951e23f363ce0d8.jpg', 559.00, 'product_details.html?cid=27', 7, 7, 7),
(NULL, 'adidas Originals Ů SC PANT RIB ���п�','img/index_img/f5/020143e41e22f2b57ebb0605f8ce4924b0.jpg', 799.00, 'product_details.html?cid=31', 8, 8, 8),

(NULL, '��ˎ����Ůԭ����� ���̾��ĵ��� ����','img/index_img/f6/01109fc0ac36b9b050d9b889980943a7d6.jpg', 78.00, 'product_detail.html?cid=1', 9, 9, 9),
(NULL, 'inmix ��Yangfanjame ͬ�emoji  TR90Ȥζ�󷽿�ƫ��̫����','img/index_img/f6/021b0eda592ea5bf329dfde128880ecde3.jpg', 98.00, 'product_detail.html?cid=35', 10, 10, 10),
(NULL, 'TURN SIGNAL SUPER HUMANϵ�� ��ĸӡ����ɫT��','img/index_img/f6/02dff0c07a13e4be6210da6a3627de0567.jpg', 98.00, 'product_details.html?cid=39', 11, 11, 11),
(NULL, 'UNIFREE ���츴��Ȥζ��ֽӡ�����ɳ���','img/index_img/f6/02be073eb36006e270da2b70dcf399a5c6.jpg', 239.00, 'product_details.html?cid=43', 12, 12, 12),
(NULL, 'TYAKASHA����ɳ ����ϵ�� Ů���ɫСëȦ���������','img/index_img/f6/0117d4b675d7a570e4c83d9637899bb093.jpg', 358.00, 'product_detail.html?cid=47', 13, 13, 13),
(NULL, 'Levi��s ��������ϵ�� Ůʿ����ƴ��ţ�мп�','img/index_img/f6/01d9eb2b297045e571da0d3df9324985fa.jpg', 899.00, 'product_detail.html?cid=51', 14, 14, 14),
(NULL, 'TYAKASHA����ɳ  �˶���ϵ��  Ů���͸��ɹ����ñ�˶��п�','img/index_img/f6/0121e60865cea0159bc9326f49ffe77af3.jpg', 458.00, 'product_details.html?cid=55', 15, 15, 15),
(NULL, 'TYAKASHA����ɳ  �˶���ϵ�� Ů���װ�ɫ�˶�����ӡ������','img/index_img/f6/01035f9b2e9e8754dadcc3a6bf857085d4.jpg', 258.00, 'product_details.html?cid=59', 16, 16, 16),
(NULL, 'SIBYL OF NO.17 ײɫ������ĸӡ����������','img/index_img/f6/018e192efc025a4ab5c367ae0a3e4b5f60.jpg', 69.00, 'product_detail.html?cid=63', 17, 17, 17),
(NULL, '��� Ȥζ������������������ȹ','img/index_img/f6/029fb160e34198483156ac2736ac974822.jpg', 149.00, 'product_detail.html?cid=67', 18, 18, 18),
(NULL, '���ݳ� ��ˮʱ��ϵ�� ײɫ������������ȹ','img/index_img/f6/02dfe505503fbc8bb6ab5a68104a59ab62.jpg', 179.00, 'product_details.html?cid=71', 19, 19, 19),
(NULL, 'Mola Luna  ��ɫë��ţ�а���ȹ','img/index_img/f6/013072fcb8b961983aead4fb46ebeb301f.jpg', 179.00, 'product_details.html?cid=75', 20, 20, 20);




/**�û���Ϣ**/
CREATE TABLE yoho_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #ͷ��ͼƬ·��
  user_name VARCHAR(32),      #�û���������С��
  gender INT                  #�Ա�  0-Ů  1-��
);
INSERT INTO `yoho_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '������', '0');
INSERT INTO `yoho_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '������', '1');
INSERT INTO `yoho_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '�־ǿ', '1');
INSERT INTO `yoho_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '��С��', '0');


/*�û������¼��*/
CREATE TABLE yoho_shoppingcart_item(
	iid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,	#�û����
	cid INT,	#��Ʒ���
	size VARCHAR(32),	#����
	count INT,	#��������
	is_checked BOOLEAN	#�Ƿ��Ѿ���ѡ��ȷ������
);
INSERT INTO yoho_shoppingcart_item VALUES
(2,1,3,'M',1,0),
(5,1,24,'M',1,0),
(8,2,9,'S',2,1),
(20,1,'S',3,0),
(6,1,10,'L',1,1);