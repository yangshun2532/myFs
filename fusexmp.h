#ifndef _FUSEXMP_H
#define _FUSEXMP_H_

// FUSE API changes frequently; so you need to define which version of the API
// is being used by your file system. Let's stick with version 26 for now.
//
#define FUSE_USE_VERSION 26

#include <limits.h>
#include <stdio.h>

#define DEFAULT_SSD         "/mnt/ssd/"
#define DEFAULT_HDD         "/mnt/hdd/"
#define DEFAULT_THRESHOLD   4096

// maintain melangefs state in here
// -- add more fields that you feel are important
//
struct xmp_state {
    char *ssd;
    char *hdd;
    int threshold;
};

int isLink(const char *);  //if is ,return 1

int addXMP(const char *,char *);//if succcess,return 0



// some useful macros, if you want
//
#define XMP_DATA ((struct melange_state *) fuse_get_context()->private_data)

#define XMP_SSD \
    ((struct xmp_state *) fuse_get_context()->private_data)->ssd
#define XMP_HDD \
    ((struct xmp_state *) fuse_get_context()->private_data)->hdd
#define XMP_TH \
     ((struct xmp_state *) fuse_get_context()->private_data)->threshold


#endif
