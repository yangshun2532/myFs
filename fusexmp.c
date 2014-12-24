/*
  FUSE: Filesystem in Userspace
  Copyright (C) 2001-2007  Miklos Szeredi <miklos@szeredi.hu>
  Copyright (C) 2011       Sebastian Pipping <sebastian@pipping.org>

  This program can be distributed under the terms of the GNU GPL.
  See the file COPYING.

  gcc -Wall fusexmp.c `pkg-config fuse --cflags --libs` -o fusexmp
*/


#include "fusexmp.h"

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#ifdef linux
/* For pread()/pwrite()/utimensat() */
#define _XOPEN_SOURCE 700
#endif

#include <fuse.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <dirent.h>
#include <errno.h>
#include <sys/time.h>
#ifdef HAVE_SETXATTR
#include <sys/xattr.h>
#endif

int isLink(const char* path)
{
  struct stat statbuf;
  unsigned short int modes;
  lstat(path,&statbuf);
  modes=statbuf.st_mode;
  return S_ISLNK(modes);
}

int addXMP(const char *path,char *xattr)
{
   int i;
   for(i=0;i<=strlen(path);i++)
   {
     xattr[i]=path[i];
   }
   int len_ch=strlen(path);
   char *ch1=".xattr_";
   int len_ch1=strlen(ch1);
   int k=0;
   for(i=len_ch-1;i>=0;i--)
   {
        if(path[i]=='/')
        {
           k=i+1;
           break;
        }
    } 
    for(i=len_ch+len_ch1;i>=k+len_ch1;i--)
    {
      xattr[i]=xattr[i-len_ch1];
    }
    for(i=0;i<len_ch1;i++)
    {
        xattr[k+i]=ch1[i];
    }
     xattr[len_ch+len_ch1]='\0';
     return 0;
}

int getStat(const char *path,struct stat *stbuf)
{
   int res;
   res=lgetxttar(path,"commomStat",stbuf,sizeof(stuct stat)) ;
   return res;
}
int setStat(const char *path,stuct stat *stbuf)
{
   int res;
   res=lsetxttar(path,"commomStat",stbuf,sizeof(stuct stat),0);
   return res;
}
static int xmp_getattr(const char *path, struct stat *stbuf)
{
	int res;
 int res_ssd;
 char path_ssd[100]="";
 strcat(path_ssd,XMP_SSD);
 strcat(path_ssd,path);
	res = lstat(path_ssd, stbuf);
	if (res == -1)
		return -errno;

	return 0;
}

static int xmp_access(const char *path, int mask)
{
	int res;
char path_ssd[100]="";
 strcat(path_ssd,XMP_SSD);
 strcat(path_ssd,path);
	res = access(path_ssd, mask);
	if (res == -1)
		return -errno;

	return 0;
}

static int xmp_readlink(const char *path, char *buf, size_t size)
{
	int res;

	res = readlink(path, buf, size - 1);
        int a =isLink(path);
	if (res == -1)
		return -errno;

	buf[res] = '\0';
	return 0;
}


static int xmp_readdir(const char *path, void *buf, fuse_fill_dir_t filler,
		       off_t offset, struct fuse_file_info *fi)
{
	DIR *dp;
	struct dirent *de;

	(void) offset;
	(void) fi;
char path_ssd[100]="";
 strcat(path_ssd,XMP_SSD);
 strcat(path_ssd,path);
	dp = opendir(path_ssd);
	if (dp == NULL)
		return -errno;

	while ((de = readdir(dp)) != NULL) {
		struct stat st;
		memset(&st, 0, sizeof(st));
		st.st_ino = de->d_ino;
		st.st_mode = de->d_type << 12;
		if (filler(buf, de->d_name, &st, 0))
			break;
	}

	closedir(dp);
	return 0;
}

static int xmp_mknod(const char *path, mode_t mode, dev_t rdev)
{
	int res;
char path_ssd[100]="";
 strcat(path_ssd,XMP_SSD);
 strcat(path_ssd,path);

	/* On Linux this could just be 'mknod(path, mode, rdev)' but this
	   is more portable */
	if (S_ISREG(mode)) {
		res = open(path_ssd, O_CREAT | O_EXCL | O_WRONLY, mode);
		if (res >= 0)
			res = close(res);
	} else if (S_ISFIFO(mode))
		res = mkfifo(path_ssd, mode);
	else
		res = mknod(path_ssd, mode, rdev);
	if (res == -1)
		return -errno;

	return 0;
}

static int xmp_mkdir(const char *path, mode_t mode)
{
	int res,res_;
        char path_ssd[100]="";
        strcat(path_ssd,XMP_SSD);
        strcat(path_ssd,path);
FILE* fp=fopen("/home/guest/test","w");
fprintf(fp,"path_ssd:%s\n",path_ssd);
fprintf(fp,"path:%s\n",path);
fclose(fp);
        res_=mkdir(path_ssd,mode);
	if (res_==-1)
		return -errno;

	return 0;
}

static int xmp_unlink(const char *path)
{
	int res;
int res_ssd;
 char path_ssd[100]="";
 strcat(path_ssd,XMP_SSD);
 strcat(path_ssd,path);
	res = unlink(path_ssd);
	if (res == -1)
		return -errno;

	return 0;
}

static int xmp_rmdir(const char *path)
{
	int res,res_ssd;
char path_ssd[100]="";
strcat(path_ssd,XMP_SSD);
strcat(path_ssd,path);
        res_ssd=rmdir(path_ssd);
	if (res_ssd==-1)
		return -errno;

	return 0;
}

static int xmp_symlink(const char *from, const char *to)
{
	int res;
 char from_ssd[100]="";
 strcat(from_ssd,XMP_SSD);
strcat(from_ssd,from);
char to_ssd[100]="";
strcat(to_ssd,XMP_SSD);
strcat(to_ssd,to);
	res = symlink(from_ssd, to_ssd);
	if (res == -1)
		return -errno;

	return 0;
}

static int xmp_rename(const char *from, const char *to)
{
	int res,res_ssd;
char from_ssd[100]="";
char to_ssd[100]="";      
strcat(from_ssd,XMP_SSD);
strcat(from_ssd,from);
strcat(to_ssd,XMP_SSD);
strcat(to_ssd,to);
 res_ssd =rename(from_ssd,to_ssd);
	if (res_ssd==-1)
		return -errno;
	return 0;
}

static int xmp_link(const char *from, const char *to)
{
	int res;
 char from_ssd[100]="";
 strcat(from_ssd,XMP_SSD);
strcat(from_ssd,from);
char to_ssd[100]="";
strcat(to_ssd,XMP_SSD);
strcat(to_ssd,to);

	res = link(from_ssd, to_ssd);
	if (res == -1)
		return -errno;

	return 0;
}

static int xmp_chmod(const char *path, mode_t mode)
{
	int res;
char path_ssd[100]="";
strcat(path_ssd,XMP_SSD);
strcat(path_ssd,path);

	res = chmod(path_ssd, mode);
	if (res == -1)
		return -errno;

	return 0;
}

static int xmp_chown(const char *path, uid_t uid, gid_t gid)
{
	int res;
char path_ssd[100]="";
strcat(path_ssd,XMP_SSD);
strcat(path_ssd,path);

	res = lchown(path_ssd, uid, gid);
	if (res == -1)
		return -errno;

	return 0;
}

static int xmp_truncate(const char *path, off_t size)
{
	int res;
char path_ssd[100]="";
strcat(path_ssd,XMP_SSD);
strcat(path_ssd,path);

	res = truncate(path_ssd, size);
	if (res == -1)
		return -errno;

	return 0;
}

#ifdef HAVE_UTIMENSAT
static int xmp_utimens(const char *path, const struct timespec ts[2])
{
	int res;
char path_ssd[100]="";
strcat(path_ssd,XMP_SSD);
strcat(path_ssd,path);
	/* don't use utime/utimes since they follow symlinks */
	res = utimensat(0, path_ssd, ts, AT_SYMLINK_NOFOLLOW);
	if (res == -1)
		return -errno;

	return 0;
}
#endif

static int xmp_open(const char *path, struct fuse_file_info *fi)
{
	int res;
char path_ssd[100]="";
 strcat(path_ssd,XMP_SSD);
 strcat(path_ssd,path);
	res = open(path_ssd, fi->flags);
	if (res == -1)
		return -errno;

	close(res);
	return 0;
}

static int xmp_read(const char *path, char *buf, size_t size, off_t offset,
		    struct fuse_file_info *fi)
{
	int fd;
	int res;

	(void) fi;
char path_ssd[100]="";
 strcat(path_ssd,XMP_SSD);
 strcat(path_ssd,path);
	fd = open(path_ssd, O_RDONLY);
	if (fd == -1)
		return -errno;

	res = pread(fd, buf, size, offset);
	if (res == -1)
		res = -errno;

	close(fd);
	return res;
}

static int xmp_write(const char *path, const char *buf, size_t size,
		     off_t offset, struct fuse_file_info *fi)
{
	int fd;
	int res;

	(void) fi;
char path_ssd[100]="";
 strcat(path_ssd,XMP_SSD);
 strcat(path_ssd,path);
	fd = open(path_ssd, O_WRONLY);
	if (fd == -1)
		return -errno;

	res = pwrite(fd, buf, size, offset);
	if (res == -1)
		res = -errno;

	close(fd);
	return res;
}

static int xmp_statfs(const char *path, struct statvfs *stbuf)
{
	int res;
char path_ssd[100]="";
 strcat(path_ssd,XMP_SSD);
 strcat(path_ssd,path);
	res = statvfs(path_ssd, stbuf);
	if (res == -1)
		return -errno;

	return 0;
}

static int xmp_release(const char *path, struct fuse_file_info *fi)
{
	/* Just a stub.	 This method is optional and can safely be left
	   unimplemented */

	(void) path;
	(void) fi;
	return 0;
}

static int xmp_fsync(const char *path, int isdatasync,
		     struct fuse_file_info *fi)
{
	/* Just a stub.	 This method is optional and can safely be left
	   unimplemented */

	(void) path;
	(void) isdatasync;
	(void) fi;
	return 0;
}


#ifdef HAVE_POSIX_FALLOCATE
static int xmp_fallocate(const char *path, int mode,
			off_t offset, off_t length, struct fuse_file_info *fi)
{
	int fd;
	int res;

	(void) fi;

	if (mode)
		return -EOPNOTSUPP;

	fd = open(path, O_WRONLY);
	if (fd == -1)
		return -errno;

	res = -posix_fallocate(fd, offset, length);

	close(fd);
	return res;
}
#endif

#ifdef HAVE_SETXATTR
/* xattr operations are optional and can safely be left unimplemented */
static int xmp_setxattr(const char *path, const char *name, const char *value,
			size_t size, int flags)
{
	int res = lsetxattr(path, name, value, size, flags);
	if (res == -1)
		return -errno;
	return 0;
}

static int xmp_getxattr(const char *path, const char *name, char *value,
			size_t size)
{
	int res = lgetxattr(path, name, value, size);
	if (res == -1)
		return -errno;
	return res;
}

static int xmp_listxattr(const char *path, char *list, size_t size)
{
	int res = llistxattr(path, list, size);
	if (res == -1)
		return -errno;
	return res;
}

static int xmp_removexattr(const char *path, const char *name)
{
	int res = lremovexattr(path, name);
	if (res == -1)
		return -errno;
	return 0;
}
#endif /* HAVE_SETXATTR */

static struct fuse_operations xmp_oper = {
	.getattr	= xmp_getattr,
	.access		= xmp_access,
	.readlink	= xmp_readlink,
	.readdir	= xmp_readdir,
	.mknod		= xmp_mknod,
	.mkdir		= xmp_mkdir,
	.symlink	= xmp_symlink,
	.unlink		= xmp_unlink,
	.rmdir		= xmp_rmdir,
	.rename		= xmp_rename,
	.link		= xmp_link,
	.chmod		= xmp_chmod,
	.chown		= xmp_chown,
	.truncate	= xmp_truncate,
      //  .LOOKUP         = xmp_LOOKUP,
#ifdef HAVE_UTIMENSAT
	.utimens	= xmp_utimens,
#endif
	.open		= xmp_open,
	.read		= xmp_read,
	.write		= xmp_write,
	.statfs		= xmp_statfs,
	.release	= xmp_release,
	.fsync		= xmp_fsync,
#ifdef HAVE_POSIX_FALLOCATE
	.fallocate	= xmp_fallocate,
#endif
#ifdef HAVE_SETXATTR
	.setxattr	= xmp_setxattr,
	.getxattr	= xmp_getxattr,
	.listxattr	= xmp_listxattr,
	.removexattr	= xmp_removexattr,
#endif
};

int main(int argc, char *argv[])
{
    int fuse_stat;
    struct xmp_state *xmp_data;
    xmp_data = calloc(sizeof(struct xmp_state), 1);
    if (xmp_data == NULL) {
        fprintf(stdout, "Error during calloc(). %s", strerror(errno));
        return -1;
    }
   xmp_data->threshold=0;
   sscanf(argv[2],"%d",&xmp_data->threshold);
   xmp_data->ssd=argv[3];
   xmp_data->hdd=argv[4];
     char* argv_f[2];
     argv_f[0]=argv[0];
     argv_f[1]=argv[1];
     argv_f[2]="-d";
     int argc_f=2;
    fuse_stat = fuse_main(argc_f, argv_f, &xmp_oper, xmp_data);
    
    return fuse_stat;
   
}
