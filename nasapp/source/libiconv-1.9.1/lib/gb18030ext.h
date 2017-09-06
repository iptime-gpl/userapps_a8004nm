/*
 * Copyright (C) 1999-2001 Free Software Foundation, Inc.
 * This file is part of the GNU LIBICONV Library.
 *
 * The GNU LIBICONV Library is free software; you can redistribute it
 * and/or modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * The GNU LIBICONV Library is distributed in the hope that it will be
 * useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with the GNU LIBICONV Library; see the file COPYING.LIB.
 * If not, write to the Free Software Foundation, Inc., 59 Temple Place -
 * Suite 330, Boston, MA 02111-1307, USA.
 */

/*
 * GB18030 two-byte extension
 */

static const unsigned short gb18030ext_2uni_pagea9[13] = {
  /* 0xa9 */
  0x303e, 0x2ff0, 0x2ff1, 0x2ff2, 0x2ff3, 0x2ff4, 0x2ff5, 0x2ff6,
  0x2ff7, 0x2ff8, 0x2ff9, 0x2ffa, 0x2ffb,
};
static const unsigned short gb18030ext_2uni_pagefe[95] = {
  /* 0xfe */
  0xfffd, 0xfffd, 0xfffd, 0xfffd, 0xfffd, 0xfffd, 0xfffd, 0xfffd,
  0xfffd, 0xfffd, 0xfffd, 0xfffd, 0xfffd, 0xfffd, 0xfffd, 0xfffd,
  0x2e81, 0xfffd, 0xfffd, 0xfffd, 0x2e84, 0x3473, 0x3447, 0x2e88,
  0x2e8b, 0xfffd, 0x359e, 0x361a, 0x360e, 0x2e8c, 0x2e97, 0x396e,
  0x3918, 0xfffd, 0x39cf, 0x39df, 0x3a73, 0x39d0, 0xfffd, 0xfffd,
  0x3b4e, 0x3c6e, 0x3ce0, 0x2ea7, 0xfffd, 0xfffd, 0x2eaa, 0x4056,
  0x415f, 0x2eae, 0x4337, 0x2eb3, 0x2eb6, 0x2eb7, 0xfffd, 0x43b1,
  0x43ac, 0x2ebb, 0x43dd, 0x44d6, 0x4661, 0x464c, 0xfffd, 0x4723,
  0x4729, 0x477c, 0x478d, 0x2eca, 0x4947, 0x497a, 0x497d, 0x4982,
  0x4983, 0x4985, 0x4986, 0x499f, 0x499b, 0x49b7, 0x49b6, 0xfffd,
  0xfffd, 0x4ca3, 0x4c9f, 0x4ca0, 0x4ca1, 0x4c77, 0x4ca2, 0x4d13,
  0x4d14, 0x4d15, 0x4d16, 0x4d17, 0x4d18, 0x4d19, 0x4dae,
};

static int
gb18030ext_mbtowc (conv_t conv, ucs4_t *pwc, const unsigned char *s, int n)
{
  unsigned char c1 = s[0];
  if ((c1 == 0xa2) || (c1 >= 0xa8 && c1 <= 0xa9) || (c1 == 0xfe)) {
    if (n >= 2) {
      unsigned char c2 = s[1];
      if ((c2 >= 0x40 && c2 < 0x7f) || (c2 >= 0x80 && c2 < 0xff)) {
        unsigned int i = 190 * (c1 - 0x81) + (c2 - (c2 >= 0x80 ? 0x41 : 0x40));
        unsigned short wc = 0xfffd;
        if (i < 7410) {
          if (i == 6432)
            wc = 0x20ac;
        } else if (i < 23750) {
          if (i == 7536)
            wc = 0x01f9;
          else if (i >= 7672 && i < 7685)
            wc = gb18030ext_2uni_pagea9[i-7672];
        } else {
          if (i < 23845)
            wc = gb18030ext_2uni_pagefe[i-23750];
        }
        if (wc != 0xfffd) {
          *pwc = (ucs4_t) wc;
          return 2;
        }
      }
      return RET_ILSEQ;
    }
    return RET_TOOFEW(0);
  }
  return RET_ILSEQ;
}

static const unsigned short gb18030ext_page2e[80] = {
  0x0000, 0xfe50, 0x0000, 0x0000, 0xfe54, 0x0000, 0x0000, 0x0000, /*0x80-0x87*/
  0xfe57, 0x0000, 0x0000, 0xfe58, 0xfe5d, 0x0000, 0x0000, 0x0000, /*0x88-0x8f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe5e, /*0x90-0x97*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x98-0x9f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe6b, /*0xa0-0xa7*/
  0x0000, 0x0000, 0xfe6e, 0x0000, 0x0000, 0x0000, 0xfe71, 0x0000, /*0xa8-0xaf*/
  0x0000, 0x0000, 0x0000, 0xfe73, 0x0000, 0x0000, 0xfe74, 0xfe75, /*0xb0-0xb7*/
  0x0000, 0x0000, 0x0000, 0xfe79, 0x0000, 0x0000, 0x0000, 0x0000, /*0xb8-0xbf*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xc0-0xc7*/
  0x0000, 0x0000, 0xfe84, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xc8-0xcf*/
};
static const unsigned short gb18030ext_page2f[16] = {
  0xa98a, 0xa98b, 0xa98c, 0xa98d, 0xa98e, 0xa98f, 0xa990, 0xa991, /*0xf0-0xf7*/
  0xa992, 0xa993, 0xa994, 0xa995, 0x0000, 0x0000, 0x0000, 0x0000, /*0xf8-0xff*/
};
static const unsigned short gb18030ext_page34[56] = {
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe56, /*0x40-0x47*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x48-0x4f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x50-0x57*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x58-0x5f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x60-0x67*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x68-0x6f*/
  0x0000, 0x0000, 0x0000, 0xfe55, 0x0000, 0x0000, 0x0000, 0x0000, /*0x70-0x77*/
};
static const unsigned short gb18030ext_page36[24] = {
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe5c, 0x0000, /*0x08-0x0f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x10-0x17*/
  0x0000, 0x0000, 0xfe5b, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x18-0x1f*/
};
static const unsigned short gb18030ext_page39[24] = {
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe62, /*0xc8-0xcf*/
  0xfe65, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xd0-0xd7*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe63, /*0xd8-0xdf*/
};
static const unsigned short gb18030ext_page43[56] = {
  0x0000, 0x0000, 0x0000, 0x0000, 0xfe78, 0x0000, 0x0000, 0x0000, /*0xa8-0xaf*/
  0x0000, 0xfe77, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xb0-0xb7*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xb8-0xbf*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xc0-0xc7*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xc8-0xcf*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xd0-0xd7*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe7a, 0x0000, 0x0000, /*0xd8-0xdf*/
};
static const unsigned short gb18030ext_page46[32] = {
  0x0000, 0x0000, 0x0000, 0x0000, 0xfe7d, 0x0000, 0x0000, 0x0000, /*0x48-0x4f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x50-0x57*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x58-0x5f*/
  0x0000, 0xfe7c, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x60-0x67*/
};
static const unsigned short gb18030ext_page47_1[16] = {
  0x0000, 0x0000, 0x0000, 0xfe80, 0x0000, 0x0000, 0x0000, 0x0000, /*0x20-0x27*/
  0x0000, 0xfe81, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x28-0x2f*/
};
static const unsigned short gb18030ext_page47_2[24] = {
  0x0000, 0x0000, 0x0000, 0x0000, 0xfe82, 0x0000, 0x0000, 0x0000, /*0x78-0x7f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x80-0x87*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe83, 0x0000, 0x0000, /*0x88-0x8f*/
};
static const unsigned short gb18030ext_page49[120] = {
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe85, /*0x40-0x47*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x48-0x4f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x50-0x57*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x58-0x5f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x60-0x67*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x68-0x6f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x70-0x77*/
  0x0000, 0x0000, 0xfe86, 0x0000, 0x0000, 0xfe87, 0x0000, 0x0000, /*0x78-0x7f*/
  0x0000, 0x0000, 0xfe88, 0xfe89, 0x0000, 0xfe8a, 0xfe8b, 0x0000, /*0x80-0x87*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x88-0x8f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x90-0x97*/
  0x0000, 0x0000, 0x0000, 0xfe8d, 0x0000, 0x0000, 0x0000, 0xfe8c, /*0x98-0x9f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xa0-0xa7*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0xa8-0xaf*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe8f, 0xfe8e, /*0xb0-0xb7*/
};
static const unsigned short gb18030ext_page4c[56] = {
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe96, /*0x70-0x77*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x78-0x7f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x80-0x87*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x88-0x8f*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x90-0x97*/
  0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0xfe93, /*0x98-0x9f*/
  0xfe94, 0xfe95, 0xfe97, 0xfe92, 0x0000, 0x0000, 0x0000, 0x0000, /*0xa0-0xa7*/
};
static const unsigned short gb18030ext_page4d[16] = {
  0x0000, 0x0000, 0x0000, 0xfe98, 0xfe99, 0xfe9a, 0xfe9b, 0xfe9c, /*0x10-0x17*/
  0xfe9d, 0xfe9e, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, /*0x18-0x1f*/
};

static int
gb18030ext_wctomb (conv_t conv, unsigned char *r, ucs4_t wc, int n)
{
  if (n >= 2) {
    unsigned short c = 0;
    if (wc == 0x01f9)
      c = 0xa8bf;
    else if (wc == 0x20ac)
      c = 0xa2e3;
    else if (wc >= 0x2e80 && wc < 0x2ed0)
      c = gb18030ext_page2e[wc-0x2e80];
    else if (wc >= 0x2ff0 && wc < 0x3000)
      c = gb18030ext_page2f[wc-0x2ff0];
    else if (wc == 0x303e)
      c = 0xa989;
    else if (wc >= 0x3440 && wc < 0x3478)
      c = gb18030ext_page34[wc-0x3440];
    else if (wc == 0x359e)
      c = 0xfe5a;
    else if (wc >= 0x3608 && wc < 0x3620)
      c = gb18030ext_page36[wc-0x3608];
    else if (wc == 0x3918)
      c = 0xfe60;
    else if (wc == 0x396e)
      c = 0xfe5f;
    else if (wc >= 0x39c8 && wc < 0x39e0)
      c = gb18030ext_page39[wc-0x39c8];
    else if (wc == 0x3a73)
      c = 0xfe64;
    else if (wc == 0x3b4e)
      c = 0xfe68;
    else if (wc == 0x3c6e)
      c = 0xfe69;
    else if (wc == 0x3ce0)
      c = 0xfe6a;
    else if (wc == 0x4056)
      c = 0xfe6f;
    else if (wc == 0x415f)
      c = 0xfe70;
    else if (wc == 0x4337)
      c = 0xfe72;
    else if (wc >= 0x43a8 && wc < 0x43e0)
      c = gb18030ext_page43[wc-0x43a8];
    else if (wc == 0x44d6)
      c = 0xfe7b;
    else if (wc >= 0x4648 && wc < 0x4668)
      c = gb18030ext_page46[wc-0x4648];
    else if (wc >= 0x4720 && wc < 0x4730)
      c = gb18030ext_page47_1[wc-0x4720];
    else if (wc >= 0x4778 && wc < 0x4790)
      c = gb18030ext_page47_2[wc-0x4778];
    else if (wc >= 0x4940 && wc < 0x49b8)
      c = gb18030ext_page49[wc-0x4940];
    else if (wc >= 0x4c70 && wc < 0x4ca8)
      c = gb18030ext_page4c[wc-0x4c70];
    else if (wc >= 0x4d10 && wc < 0x4d20)
      c = gb18030ext_page4d[wc-0x4d10];
    else if (wc == 0x4dae)
      c = 0xfe9f;
    if (c != 0) {
      r[0] = (c >> 8); r[1] = (c & 0xff);
      return 2;
    }
    return RET_ILUNI;
  }
  return RET_TOOSMALL;
}
