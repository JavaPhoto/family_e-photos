DROP INDEX `idx_user_id` ON `Users`;
DROP INDEX `inx_user_id` ON `LocalAuth`;

DROP TABLE `Users`;
DROP TABLE `LocalAuth`;
DROP TABLE `OAuth`;
DROP TABLE `ApiAuth`;

CREATE TABLE `Users` (
`id` int(11) NOT NULL COMMENT '表主键',
`user_id` int(11) NOT NULL COMMENT '用户实例id',
`username` varchar(255) NULL COMMENT '用户名',
`birthday` varchar(255) NULL COMMENT '生日',
PRIMARY KEY (`id`) ,
UNIQUE INDEX `idx_user_id` (`user_id` ASC) USING BTREE
)
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '用户信息表';
CREATE TABLE `LocalAuth` (
`id` int(11) NOT NULL,
`user_id` int(11) NOT NULL,
`username` varchar(255) NULL,
`password` varchar(255) NOT NULL,
PRIMARY KEY (`id`) ,
UNIQUE INDEX `inx_user_id` (`user_id` ASC) USING BTREE
)
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci
COMMENT = '本地授权信息表';
CREATE TABLE `OAuth` (
`id` int(11) NOT NULL,
`user_id` int(11) NOT NULL,
`oauth_name` varchar(255) NULL COMMENT '认证名称，比如微博、QQ',
`oauth_id` varchar(255) NULL,
`oauth_access_token` varchar(255) NULL,
`oauth_expires` varchar(255) NULL,
PRIMARY KEY (`id`) 
)
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE TABLE `ApiAuth` (
`id` int(11) NOT NULL,
`user_id` int(11) NULL,
`api_key` varchar(255) NULL,
`api_secret` varchar(255) NULL,
PRIMARY KEY (`id`) 
)
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
