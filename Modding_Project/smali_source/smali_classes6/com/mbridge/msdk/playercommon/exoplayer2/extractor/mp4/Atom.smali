.class abstract Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;
.super Ljava/lang/Object;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;
    }
.end annotation


# static fields
.field public static final DEFINES_LARGE_SIZE:I = 0x1

.field public static final EXTENDS_TO_END_SIZE:I = 0x0

.field public static final FULL_HEADER_SIZE:I = 0xc

.field public static final HEADER_SIZE:I = 0x8

.field public static final LONG_HEADER_SIZE:I = 0x10

.field public static final TYPE_TTML:I

.field public static final TYPE__mp3:I

.field public static final TYPE_ac_3:I

.field public static final TYPE_alac:I

.field public static final TYPE_avc1:I

.field public static final TYPE_avc3:I

.field public static final TYPE_avcC:I

.field public static final TYPE_c608:I

.field public static final TYPE_camm:I

.field public static final TYPE_co64:I

.field public static final TYPE_ctts:I

.field public static final TYPE_d263:I

.field public static final TYPE_dac3:I

.field public static final TYPE_data:I

.field public static final TYPE_ddts:I

.field public static final TYPE_dec3:I

.field public static final TYPE_dtsc:I

.field public static final TYPE_dtse:I

.field public static final TYPE_dtsh:I

.field public static final TYPE_dtsl:I

.field public static final TYPE_ec_3:I

.field public static final TYPE_edts:I

.field public static final TYPE_elst:I

.field public static final TYPE_emsg:I

.field public static final TYPE_enca:I

.field public static final TYPE_encv:I

.field public static final TYPE_esds:I

.field public static final TYPE_frma:I

.field public static final TYPE_ftyp:I

.field public static final TYPE_hdlr:I

.field public static final TYPE_hev1:I

.field public static final TYPE_hvc1:I

.field public static final TYPE_hvcC:I

.field public static final TYPE_ilst:I

.field public static final TYPE_lpcm:I

.field public static final TYPE_mdat:I

.field public static final TYPE_mdhd:I

.field public static final TYPE_mdia:I

.field public static final TYPE_mean:I

.field public static final TYPE_mehd:I

.field public static final TYPE_meta:I

.field public static final TYPE_minf:I

.field public static final TYPE_moof:I

.field public static final TYPE_moov:I

.field public static final TYPE_mp4a:I

.field public static final TYPE_mp4v:I

.field public static final TYPE_mvex:I

.field public static final TYPE_mvhd:I

.field public static final TYPE_name:I

.field public static final TYPE_pasp:I

.field public static final TYPE_proj:I

.field public static final TYPE_pssh:I

.field public static final TYPE_s263:I

.field public static final TYPE_saio:I

.field public static final TYPE_saiz:I

.field public static final TYPE_samr:I

.field public static final TYPE_sawb:I

.field public static final TYPE_sbgp:I

.field public static final TYPE_schi:I

.field public static final TYPE_schm:I

.field public static final TYPE_senc:I

.field public static final TYPE_sgpd:I

.field public static final TYPE_sidx:I

.field public static final TYPE_sinf:I

.field public static final TYPE_sowt:I

.field public static final TYPE_st3d:I

.field public static final TYPE_stbl:I

.field public static final TYPE_stco:I

.field public static final TYPE_stpp:I

.field public static final TYPE_stsc:I

.field public static final TYPE_stsd:I

.field public static final TYPE_stss:I

.field public static final TYPE_stsz:I

.field public static final TYPE_stts:I

.field public static final TYPE_stz2:I

.field public static final TYPE_sv3d:I

.field public static final TYPE_tenc:I

.field public static final TYPE_tfdt:I

.field public static final TYPE_tfhd:I

.field public static final TYPE_tkhd:I

.field public static final TYPE_traf:I

.field public static final TYPE_trak:I

.field public static final TYPE_trex:I

.field public static final TYPE_trun:I

.field public static final TYPE_tx3g:I

.field public static final TYPE_udta:I

.field public static final TYPE_uuid:I

.field public static final TYPE_vmhd:I

.field public static final TYPE_vp08:I

.field public static final TYPE_vp09:I

.field public static final TYPE_vpcC:I

.field public static final TYPE_wave:I

.field public static final TYPE_wvtt:I


# instance fields
.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ftyp"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    .line 8
    .line 9
    const-string v0, "avc1"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    .line 16
    .line 17
    const-string v0, "avc3"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    .line 24
    .line 25
    const-string v0, "hvc1"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    .line 32
    .line 33
    const-string v0, "hev1"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    .line 40
    .line 41
    const-string v0, "s263"

    .line 42
    .line 43
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    .line 48
    .line 49
    const-string v0, "d263"

    .line 50
    .line 51
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    .line 56
    .line 57
    const-string v0, "mdat"

    .line 58
    .line 59
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdat:I

    .line 64
    .line 65
    const-string v0, "mp4a"

    .line 66
    .line 67
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    .line 72
    .line 73
    const-string v0, ".mp3"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    .line 80
    .line 81
    const-string/jumbo v0, "wave"

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    .line 89
    .line 90
    const-string v0, "lpcm"

    .line 91
    .line 92
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    .line 97
    .line 98
    const-string/jumbo v0, "sowt"

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    .line 106
    .line 107
    const-string v0, "ac-3"

    .line 108
    .line 109
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    .line 114
    .line 115
    const-string v0, "dac3"

    .line 116
    .line 117
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    .line 122
    .line 123
    const-string v0, "ec-3"

    .line 124
    .line 125
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    .line 130
    .line 131
    const-string v0, "dec3"

    .line 132
    .line 133
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    .line 138
    .line 139
    const-string v0, "dtsc"

    .line 140
    .line 141
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    .line 146
    .line 147
    const-string v0, "dtsh"

    .line 148
    .line 149
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    .line 154
    .line 155
    const-string v0, "dtsl"

    .line 156
    .line 157
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    .line 162
    .line 163
    const-string v0, "dtse"

    .line 164
    .line 165
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    .line 170
    .line 171
    const-string v0, "ddts"

    .line 172
    .line 173
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    .line 178
    .line 179
    const-string/jumbo v0, "tfdt"

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    .line 187
    .line 188
    const-string/jumbo v0, "tfhd"

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    .line 196
    .line 197
    const-string/jumbo v0, "trex"

    .line 198
    .line 199
    .line 200
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    .line 205
    .line 206
    const-string/jumbo v0, "trun"

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    .line 214
    .line 215
    const-string/jumbo v0, "sidx"

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    .line 223
    .line 224
    const-string v0, "moov"

    .line 225
    .line 226
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    .line 231
    .line 232
    const-string v0, "mvhd"

    .line 233
    .line 234
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    .line 239
    .line 240
    const-string/jumbo v0, "trak"

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    .line 248
    .line 249
    const-string v0, "mdia"

    .line 250
    .line 251
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    .line 256
    .line 257
    const-string v0, "minf"

    .line 258
    .line 259
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    .line 264
    .line 265
    const-string/jumbo v0, "stbl"

    .line 266
    .line 267
    .line 268
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    .line 273
    .line 274
    const-string v0, "avcC"

    .line 275
    .line 276
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    .line 281
    .line 282
    const-string v0, "hvcC"

    .line 283
    .line 284
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    .line 289
    .line 290
    const-string v0, "esds"

    .line 291
    .line 292
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    .line 297
    .line 298
    const-string v0, "moof"

    .line 299
    .line 300
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    .line 305
    .line 306
    const-string/jumbo v0, "traf"

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    .line 314
    .line 315
    const-string v0, "mvex"

    .line 316
    .line 317
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    .line 322
    .line 323
    const-string v0, "mehd"

    .line 324
    .line 325
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

    .line 330
    .line 331
    const-string/jumbo v0, "tkhd"

    .line 332
    .line 333
    .line 334
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    .line 339
    .line 340
    const-string v0, "edts"

    .line 341
    .line 342
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    .line 347
    .line 348
    const-string v0, "elst"

    .line 349
    .line 350
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    .line 355
    .line 356
    const-string v0, "mdhd"

    .line 357
    .line 358
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    .line 363
    .line 364
    const-string v0, "hdlr"

    .line 365
    .line 366
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    .line 371
    .line 372
    const-string/jumbo v0, "stsd"

    .line 373
    .line 374
    .line 375
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    .line 380
    .line 381
    const-string v0, "pssh"

    .line 382
    .line 383
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    .line 388
    .line 389
    const-string/jumbo v0, "sinf"

    .line 390
    .line 391
    .line 392
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    .line 397
    .line 398
    const-string v0, "schm"

    .line 399
    .line 400
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    .line 405
    .line 406
    const-string v0, "schi"

    .line 407
    .line 408
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    .line 413
    .line 414
    const-string/jumbo v0, "tenc"

    .line 415
    .line 416
    .line 417
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    .line 422
    .line 423
    const-string v0, "encv"

    .line 424
    .line 425
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    .line 430
    .line 431
    const-string v0, "enca"

    .line 432
    .line 433
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    .line 438
    .line 439
    const-string v0, "frma"

    .line 440
    .line 441
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    .line 446
    .line 447
    const-string v0, "saiz"

    .line 448
    .line 449
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    .line 454
    .line 455
    const-string v0, "saio"

    .line 456
    .line 457
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    .line 462
    .line 463
    const-string v0, "sbgp"

    .line 464
    .line 465
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    .line 470
    .line 471
    const-string/jumbo v0, "sgpd"

    .line 472
    .line 473
    .line 474
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    .line 479
    .line 480
    const-string/jumbo v0, "uuid"

    .line 481
    .line 482
    .line 483
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    .line 488
    .line 489
    const-string v0, "senc"

    .line 490
    .line 491
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    .line 496
    .line 497
    const-string v0, "pasp"

    .line 498
    .line 499
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    .line 504
    .line 505
    const-string v0, "TTML"

    .line 506
    .line 507
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    .line 512
    .line 513
    const-string/jumbo v0, "vmhd"

    .line 514
    .line 515
    .line 516
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vmhd:I

    .line 521
    .line 522
    const-string v0, "mp4v"

    .line 523
    .line 524
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    .line 529
    .line 530
    const-string/jumbo v0, "stts"

    .line 531
    .line 532
    .line 533
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    .line 538
    .line 539
    const-string/jumbo v0, "stss"

    .line 540
    .line 541
    .line 542
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    .line 547
    .line 548
    const-string v0, "ctts"

    .line 549
    .line 550
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    .line 555
    .line 556
    const-string/jumbo v0, "stsc"

    .line 557
    .line 558
    .line 559
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    .line 564
    .line 565
    const-string/jumbo v0, "stsz"

    .line 566
    .line 567
    .line 568
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    .line 573
    .line 574
    const-string/jumbo v0, "stz2"

    .line 575
    .line 576
    .line 577
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    .line 582
    .line 583
    const-string/jumbo v0, "stco"

    .line 584
    .line 585
    .line 586
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    .line 591
    .line 592
    const-string v0, "co64"

    .line 593
    .line 594
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    .line 599
    .line 600
    const-string/jumbo v0, "tx3g"

    .line 601
    .line 602
    .line 603
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    .line 608
    .line 609
    const-string/jumbo v0, "wvtt"

    .line 610
    .line 611
    .line 612
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    .line 617
    .line 618
    const-string/jumbo v0, "stpp"

    .line 619
    .line 620
    .line 621
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    .line 626
    .line 627
    const-string v0, "c608"

    .line 628
    .line 629
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    .line 634
    .line 635
    const-string v0, "samr"

    .line 636
    .line 637
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    .line 642
    .line 643
    const-string v0, "sawb"

    .line 644
    .line 645
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    .line 650
    .line 651
    const-string/jumbo v0, "udta"

    .line 652
    .line 653
    .line 654
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_udta:I

    .line 659
    .line 660
    const-string v0, "meta"

    .line 661
    .line 662
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    .line 667
    .line 668
    const-string v0, "ilst"

    .line 669
    .line 670
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    .line 675
    .line 676
    const-string v0, "mean"

    .line 677
    .line 678
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mean:I

    .line 683
    .line 684
    const-string v0, "name"

    .line 685
    .line 686
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_name:I

    .line 691
    .line 692
    const-string v0, "data"

    .line 693
    .line 694
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 695
    .line 696
    .line 697
    move-result v0

    .line 698
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    .line 699
    .line 700
    const-string v0, "emsg"

    .line 701
    .line 702
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_emsg:I

    .line 707
    .line 708
    const-string/jumbo v0, "st3d"

    .line 709
    .line 710
    .line 711
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 712
    .line 713
    .line 714
    move-result v0

    .line 715
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    .line 716
    .line 717
    const-string/jumbo v0, "sv3d"

    .line 718
    .line 719
    .line 720
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    .line 725
    .line 726
    const-string v0, "proj"

    .line 727
    .line 728
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 729
    .line 730
    .line 731
    move-result v0

    .line 732
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    .line 733
    .line 734
    const-string/jumbo v0, "vp08"

    .line 735
    .line 736
    .line 737
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    .line 742
    .line 743
    const-string/jumbo v0, "vp09"

    .line 744
    .line 745
    .line 746
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 747
    .line 748
    .line 749
    move-result v0

    .line 750
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    .line 751
    .line 752
    const-string/jumbo v0, "vpcC"

    .line 753
    .line 754
    .line 755
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    .line 760
    .line 761
    const-string v0, "camm"

    .line 762
    .line 763
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    .line 768
    .line 769
    const-string v0, "alac"

    .line 770
    .line 771
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 772
    .line 773
    .line 774
    move-result v0

    .line 775
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    .line 776
    .line 777
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->type:I

    .line 5
    .line 6
    return-void
.end method

.method public static getAtomTypeString(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    shr-int/lit8 v1, p0, 0x18

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    .line 15
    int-to-char v1, v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    shr-int/lit8 v1, p0, 0x10

    .line 20
    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 22
    .line 23
    int-to-char v1, v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    shr-int/lit8 v1, p0, 0x8

    .line 28
    .line 29
    and-int/lit16 v1, v1, 0xff

    .line 30
    .line 31
    int-to-char v1, v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    and-int/lit16 p0, p0, 0xff

    .line 36
    .line 37
    int-to-char p0, p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static parseFullAtomFlags(I)I
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    return p0
.end method

.method public static parseFullAtomVersion(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->type:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
