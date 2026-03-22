.class final Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;,
        Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$UnhandledEditListException;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "vide"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    .line 9
    .line 10
    const-string/jumbo v0, "soun"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    .line 18
    .line 19
    const-string/jumbo v0, "text"

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    .line 27
    .line 28
    const-string v0, "sbtl"

    .line 29
    .line 30
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    .line 35
    .line 36
    const-string/jumbo v0, "subt"

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    .line 44
    .line 45
    const-string v0, "clcp"

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    .line 52
    .line 53
    const-string v0, "meta"

    .line 54
    .line 55
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    .line 60
    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    array-length v5, p0

    .line 11
    sub-int/2addr v5, v2

    .line 12
    invoke-static {v5, v3, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget-wide v5, p0, v3

    .line 17
    .line 18
    cmp-long v2, v5, p3

    .line 19
    .line 20
    if-gtz v2, :cond_0

    .line 21
    .line 22
    aget-wide v4, p0, v4

    .line 23
    .line 24
    cmp-long p3, p3, v4

    .line 25
    .line 26
    if-gez p3, :cond_0

    .line 27
    .line 28
    aget-wide p3, p0, v0

    .line 29
    .line 30
    cmp-long p0, p3, p5

    .line 31
    .line 32
    if-gez p0, :cond_0

    .line 33
    .line 34
    cmp-long p0, p5, p1

    .line 35
    .line 36
    if-gtz p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v3

    .line 40
    :goto_0
    return v1
.end method

.method private static findEsdsPosition(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    sub-int v1, v0, p1

    .line 6
    .line 7
    if-ge v1, p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    add-int/2addr v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p0, -0x1

    .line 38
    return p0
.end method

.method private static parseAudioSampleEntry(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v14, p5

    .line 8
    .line 9
    move-object/from16 v3, p7

    .line 10
    .line 11
    move-object/from16 v15, p8

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x10

    .line 14
    .line 15
    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x6

    .line 19
    const/4 v13, 0x0

    .line 20
    if-eqz p6, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v5, 0x8

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 33
    .line 34
    .line 35
    move v5, v13

    .line 36
    :goto_0
    const/4 v12, 0x2

    .line 37
    const/4 v11, 0x1

    .line 38
    const/16 v6, 0x10

    .line 39
    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-ne v5, v11, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-ne v5, v12, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readDouble()D

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    long-to-int v4, v4

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/16 v6, 0x14

    .line 64
    .line 65
    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    return-void

    .line 70
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ne v5, v11, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 84
    .line 85
    .line 86
    :cond_4
    move v5, v7

    .line 87
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    sget v7, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    .line 92
    .line 93
    const/16 v16, 0x0

    .line 94
    .line 95
    move/from16 v8, p1

    .line 96
    .line 97
    if-ne v8, v7, :cond_7

    .line 98
    .line 99
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    if-eqz v7, :cond_6

    .line 104
    .line 105
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v8, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-nez v3, :cond_5

    .line 114
    .line 115
    move-object/from16 v3, v16

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 121
    .line 122
    iget-object v9, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    :goto_3
    iget-object v9, v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 129
    .line 130
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v7, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 133
    .line 134
    aput-object v7, v9, p9

    .line 135
    .line 136
    :cond_6
    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 137
    .line 138
    .line 139
    :cond_7
    move-object v10, v3

    .line 140
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    .line 141
    .line 142
    const-string v9, "audio/raw"

    .line 143
    .line 144
    if-ne v8, v3, :cond_8

    .line 145
    .line 146
    const-string v3, "audio/ac3"

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_8
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    .line 150
    .line 151
    if-ne v8, v3, :cond_9

    .line 152
    .line 153
    const-string v3, "audio/eac3"

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_9
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    .line 157
    .line 158
    if-ne v8, v3, :cond_a

    .line 159
    .line 160
    const-string v3, "audio/vnd.dts"

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_a
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    .line 164
    .line 165
    if-eq v8, v3, :cond_13

    .line 166
    .line 167
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    .line 168
    .line 169
    if-ne v8, v3, :cond_b

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_b
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    .line 173
    .line 174
    if-ne v8, v3, :cond_c

    .line 175
    .line 176
    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_c
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    .line 180
    .line 181
    if-ne v8, v3, :cond_d

    .line 182
    .line 183
    const-string v3, "audio/3gpp"

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_d
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    .line 187
    .line 188
    if-ne v8, v3, :cond_e

    .line 189
    .line 190
    const-string v3, "audio/amr-wb"

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_e
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    .line 194
    .line 195
    if-eq v8, v3, :cond_12

    .line 196
    .line 197
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    .line 198
    .line 199
    if-ne v8, v3, :cond_f

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_f
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    .line 203
    .line 204
    if-ne v8, v3, :cond_10

    .line 205
    .line 206
    const-string v3, "audio/mpeg"

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_10
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    .line 210
    .line 211
    if-ne v8, v3, :cond_11

    .line 212
    .line 213
    const-string v3, "audio/alac"

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_11
    move-object/from16 v3, v16

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_12
    :goto_4
    move-object v3, v9

    .line 220
    goto :goto_6

    .line 221
    :cond_13
    :goto_5
    const-string v3, "audio/vnd.dts.hd"

    .line 222
    .line 223
    :goto_6
    move-object v8, v3

    .line 224
    move/from16 v18, v4

    .line 225
    .line 226
    move/from16 v17, v5

    .line 227
    .line 228
    move v7, v6

    .line 229
    move-object/from16 v19, v16

    .line 230
    .line 231
    :goto_7
    sub-int v3, v7, v1

    .line 232
    .line 233
    const/4 v4, -0x1

    .line 234
    if-ge v3, v2, :cond_1e

    .line 235
    .line 236
    invoke-virtual {v0, v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-lez v6, :cond_14

    .line 244
    .line 245
    move v3, v11

    .line 246
    goto :goto_8

    .line 247
    :cond_14
    move v3, v13

    .line 248
    :goto_8
    const-string v5, "childAtomSize should be positive"

    .line 249
    .line 250
    invoke-static {v3, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    sget v5, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    .line 258
    .line 259
    if-eq v3, v5, :cond_1b

    .line 260
    .line 261
    if-eqz p6, :cond_15

    .line 262
    .line 263
    sget v11, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    .line 264
    .line 265
    if-ne v3, v11, :cond_15

    .line 266
    .line 267
    move-object/from16 v26, v8

    .line 268
    .line 269
    move-object/from16 v27, v9

    .line 270
    .line 271
    move-object/from16 v22, v10

    .line 272
    .line 273
    move/from16 v23, v12

    .line 274
    .line 275
    move v1, v13

    .line 276
    const/16 v20, 0x1

    .line 277
    .line 278
    goto/16 :goto_b

    .line 279
    .line 280
    :cond_15
    sget v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    .line 281
    .line 282
    if-ne v3, v4, :cond_16

    .line 283
    .line 284
    add-int/lit8 v3, v7, 0x8

    .line 285
    .line 286
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 287
    .line 288
    .line 289
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-static {v0, v3, v14, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iput-object v3, v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 298
    .line 299
    :goto_9
    move-object/from16 v26, v8

    .line 300
    .line 301
    move-object/from16 v27, v9

    .line 302
    .line 303
    move-object/from16 v22, v10

    .line 304
    .line 305
    move/from16 v23, v12

    .line 306
    .line 307
    move v1, v13

    .line 308
    const/16 v20, 0x1

    .line 309
    .line 310
    goto/16 :goto_a

    .line 311
    .line 312
    :cond_16
    sget v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    .line 313
    .line 314
    if-ne v3, v4, :cond_17

    .line 315
    .line 316
    add-int/lit8 v3, v7, 0x8

    .line 317
    .line 318
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 319
    .line 320
    .line 321
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-static {v0, v3, v14, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iput-object v3, v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_17
    sget v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    .line 333
    .line 334
    if-ne v3, v4, :cond_19

    .line 335
    .line 336
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    const/4 v11, 0x0

    .line 341
    const/16 v21, 0x0

    .line 342
    .line 343
    const/4 v5, 0x0

    .line 344
    const/16 v22, -0x1

    .line 345
    .line 346
    const/16 v23, -0x1

    .line 347
    .line 348
    move-object v4, v8

    .line 349
    move/from16 v24, v6

    .line 350
    .line 351
    move/from16 v6, v22

    .line 352
    .line 353
    move/from16 v25, v7

    .line 354
    .line 355
    move/from16 v7, v23

    .line 356
    .line 357
    move-object/from16 v26, v8

    .line 358
    .line 359
    move/from16 v8, v17

    .line 360
    .line 361
    move-object/from16 v27, v9

    .line 362
    .line 363
    move/from16 v9, v18

    .line 364
    .line 365
    move-object/from16 v22, v10

    .line 366
    .line 367
    move-object v10, v11

    .line 368
    const/16 v20, 0x1

    .line 369
    .line 370
    move-object/from16 v11, v22

    .line 371
    .line 372
    move/from16 v23, v12

    .line 373
    .line 374
    move/from16 v12, v21

    .line 375
    .line 376
    move v1, v13

    .line 377
    move-object/from16 v13, p5

    .line 378
    .line 379
    invoke-static/range {v3 .. v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    iput-object v3, v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 384
    .line 385
    move/from16 v6, v24

    .line 386
    .line 387
    :cond_18
    move/from16 v7, v25

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_19
    move/from16 v24, v6

    .line 391
    .line 392
    move/from16 v25, v7

    .line 393
    .line 394
    move-object/from16 v26, v8

    .line 395
    .line 396
    move-object/from16 v27, v9

    .line 397
    .line 398
    move-object/from16 v22, v10

    .line 399
    .line 400
    move/from16 v23, v12

    .line 401
    .line 402
    move v1, v13

    .line 403
    const/16 v20, 0x1

    .line 404
    .line 405
    sget v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    .line 406
    .line 407
    if-ne v3, v4, :cond_18

    .line 408
    .line 409
    new-array v3, v6, [B

    .line 410
    .line 411
    move/from16 v7, v25

    .line 412
    .line 413
    invoke-virtual {v0, v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v3, v1, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 417
    .line 418
    .line 419
    move-object/from16 v19, v3

    .line 420
    .line 421
    :cond_1a
    :goto_a
    move-object/from16 v8, v26

    .line 422
    .line 423
    goto :goto_d

    .line 424
    :cond_1b
    move-object/from16 v26, v8

    .line 425
    .line 426
    move-object/from16 v27, v9

    .line 427
    .line 428
    move-object/from16 v22, v10

    .line 429
    .line 430
    move/from16 v20, v11

    .line 431
    .line 432
    move/from16 v23, v12

    .line 433
    .line 434
    move v1, v13

    .line 435
    :goto_b
    if-ne v3, v5, :cond_1c

    .line 436
    .line 437
    move v3, v7

    .line 438
    goto :goto_c

    .line 439
    :cond_1c
    invoke-static {v0, v7, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)I

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    :goto_c
    if-eq v3, v4, :cond_1a

    .line 444
    .line 445
    invoke-static {v0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 450
    .line 451
    move-object v8, v4

    .line 452
    check-cast v8, Ljava/lang/String;

    .line 453
    .line 454
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 455
    .line 456
    move-object/from16 v19, v3

    .line 457
    .line 458
    check-cast v19, [B

    .line 459
    .line 460
    const-string v3, "audio/mp4a-latm"

    .line 461
    .line 462
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    if-eqz v3, :cond_1d

    .line 467
    .line 468
    invoke-static/range {v19 .. v19}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v4, Ljava/lang/Integer;

    .line 475
    .line 476
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 477
    .line 478
    .line 479
    move-result v18

    .line 480
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v3, Ljava/lang/Integer;

    .line 483
    .line 484
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 485
    .line 486
    .line 487
    move-result v17

    .line 488
    :cond_1d
    :goto_d
    add-int/2addr v7, v6

    .line 489
    move v13, v1

    .line 490
    move/from16 v11, v20

    .line 491
    .line 492
    move-object/from16 v10, v22

    .line 493
    .line 494
    move/from16 v12, v23

    .line 495
    .line 496
    move-object/from16 v9, v27

    .line 497
    .line 498
    move/from16 v1, p2

    .line 499
    .line 500
    goto/16 :goto_7

    .line 501
    .line 502
    :cond_1e
    move-object/from16 v26, v8

    .line 503
    .line 504
    move-object/from16 v27, v9

    .line 505
    .line 506
    move-object/from16 v22, v10

    .line 507
    .line 508
    move/from16 v23, v12

    .line 509
    .line 510
    iget-object v0, v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 511
    .line 512
    if-nez v0, :cond_21

    .line 513
    .line 514
    move-object/from16 v8, v26

    .line 515
    .line 516
    if-eqz v8, :cond_21

    .line 517
    .line 518
    move-object/from16 v0, v27

    .line 519
    .line 520
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    if-eqz v0, :cond_1f

    .line 525
    .line 526
    move/from16 v7, v23

    .line 527
    .line 528
    goto :goto_e

    .line 529
    :cond_1f
    move v7, v4

    .line 530
    :goto_e
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-nez v19, :cond_20

    .line 535
    .line 536
    goto :goto_f

    .line 537
    :cond_20
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    move-object/from16 v16, v1

    .line 542
    .line 543
    :goto_f
    const/4 v10, 0x0

    .line 544
    const/4 v2, 0x0

    .line 545
    const/4 v3, -0x1

    .line 546
    const/4 v4, -0x1

    .line 547
    move-object v1, v8

    .line 548
    move/from16 v5, v17

    .line 549
    .line 550
    move/from16 v6, v18

    .line 551
    .line 552
    move-object/from16 v8, v16

    .line 553
    .line 554
    move-object/from16 v9, v22

    .line 555
    .line 556
    move-object/from16 v11, p5

    .line 557
    .line 558
    invoke-static/range {v0 .. v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    iput-object v0, v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 563
    .line 564
    :cond_21
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v5, v1

    .line 7
    move v7, v2

    .line 8
    move-object v4, v3

    .line 9
    move-object v6, v4

    .line 10
    :goto_0
    sub-int v8, v0, p1

    .line 11
    .line 12
    if-ge v8, p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    sget v10, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    .line 26
    .line 27
    if-ne v9, v10, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    sget v10, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    .line 39
    .line 40
    if-ne v9, v10, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    sget v10, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    .line 52
    .line 53
    if-ne v9, v10, :cond_2

    .line 54
    .line 55
    move v5, v0

    .line 56
    move v7, v8

    .line 57
    :cond_2
    :goto_1
    add-int/2addr v0, v8

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string p1, "cenc"

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    const-string p1, "cbc1"

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    const-string p1, "cens"

    .line 76
    .line 77
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_5

    .line 82
    .line 83
    const-string p1, "cbcs"

    .line 84
    .line 85
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    return-object v3

    .line 93
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 94
    if-eqz v6, :cond_6

    .line 95
    .line 96
    move p2, p1

    .line 97
    goto :goto_3

    .line 98
    :cond_6
    move p2, v2

    .line 99
    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 100
    .line 101
    invoke-static {p2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    if-eq v5, v1, :cond_7

    .line 105
    .line 106
    move p2, p1

    .line 107
    goto :goto_4

    .line 108
    :cond_7
    move p2, v2

    .line 109
    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 110
    .line 111
    invoke-static {p2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p0, v5, v7, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-eqz p0, :cond_8

    .line 119
    .line 120
    move v2, p1

    .line 121
    :cond_8
    const-string/jumbo p1, "tenc atom is mandatory"

    .line 122
    .line 123
    .line 124
    invoke-static {v2, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method

.method private static parseEdts(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-array v2, v1, [J

    .line 32
    .line 33
    new-array v3, v1, [J

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v1, :cond_4

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-ne v0, v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    :goto_1
    aput-wide v6, v2, v4

    .line 51
    .line 52
    if-ne v0, v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLong()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    int-to-long v6, v6

    .line 64
    :goto_2
    aput-wide v6, v3, v4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readShort()S

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v6, v5, :cond_3

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v0, "Unsupported media rate."

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 93
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0
.end method

.method private static parseEsdsFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    and-int/lit16 v3, v2, 0x80

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    and-int/lit8 v3, v2, 0x40

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    and-int/lit8 v2, v2, 0x20

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "audio/mpeg"

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_4

    .line 68
    .line 69
    const-string v2, "audio/vnd.dts"

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    const-string v2, "audio/vnd.dts.hd"

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    new-array v0, p1, [B

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0, v0, v2, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 108
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method

.method private static parseExpandableClassSize(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method private static parseHdlr(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    .line 17
    .line 18
    if-ne p0, v0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    return p0

    .line 22
    :cond_1
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    .line 23
    .line 24
    if-eq p0, v0, :cond_4

    .line 25
    .line 26
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    .line 27
    .line 28
    if-eq p0, v0, :cond_4

    .line 29
    .line 30
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    .line 31
    .line 32
    if-eq p0, v0, :cond_4

    .line 33
    .line 34
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    .line 35
    .line 36
    if-ne p0, v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    .line 40
    .line 41
    if-ne p0, v0, :cond_3

    .line 42
    .line 43
    const/4 p0, 0x4

    .line 44
    return p0

    .line 45
    :cond_3
    const/4 p0, -0x1

    .line 46
    return p0

    .line 47
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 48
    return p0
.end method

.method private static parseIlst(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v1, p1, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-object p0
.end method

.method private static parseMdhd(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x10

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    shr-int/lit8 v1, p0, 0xa

    .line 48
    .line 49
    and-int/lit8 v1, v1, 0x1f

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x60

    .line 52
    .line 53
    int-to-char v1, v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    shr-int/lit8 v1, p0, 0x5

    .line 58
    .line 59
    and-int/lit8 v1, v1, 0x1f

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x60

    .line 62
    .line 63
    int-to-char v1, v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    and-int/lit8 p0, p0, 0x1f

    .line 68
    .line 69
    add-int/lit8 p0, p0, 0x60

    .line 70
    .line 71
    int-to-char p0, p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method

.method private static parseMetaAtom(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ge v0, p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 29
    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    invoke-static {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    add-int/lit8 v1, v1, -0x8

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method private static parseMvhd(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v0, 0x10

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method private static parsePaspFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)F
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p1, p1

    .line 15
    int-to-float p0, p0

    .line 16
    div-float/2addr p1, p0

    .line 17
    return p1
.end method

.method private static parseProjFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)[B
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 23
    .line 24
    add-int/2addr v1, v0

    .line 25
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    add-int/2addr v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    sub-int v1, v0, p1

    .line 6
    .line 7
    if-ge v1, p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    .line 31
    .line 32
    if-ne v2, v3, :cond_1

    .line 33
    .line 34
    invoke-static {p0, v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_1
    add-int/2addr v0, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method private static parseSchiFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 11

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v1, p2, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    sget v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    .line 20
    .line 21
    if-ne v3, v4, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 39
    .line 40
    .line 41
    move v8, v0

    .line 42
    move v9, v8

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    and-int/lit16 v1, p1, 0xf0

    .line 49
    .line 50
    shr-int/lit8 v1, v1, 0x4

    .line 51
    .line 52
    and-int/lit8 p1, p1, 0xf

    .line 53
    .line 54
    move v9, p1

    .line 55
    move v8, v1

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-ne p1, p2, :cond_1

    .line 61
    .line 62
    move v4, p2

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    move v4, v0

    .line 65
    :goto_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const/16 p1, 0x10

    .line 70
    .line 71
    new-array v7, p1, [B

    .line 72
    .line 73
    invoke-virtual {p0, v7, v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 74
    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    if-nez v6, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    new-array v2, p1, [B

    .line 85
    .line 86
    invoke-virtual {p0, v2, v0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 87
    .line 88
    .line 89
    :cond_2
    move-object v10, v2

    .line 90
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 91
    .line 92
    move-object v3, p0

    .line 93
    move-object v5, p3

    .line 94
    invoke-direct/range {v3 .. v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_3
    add-int/2addr v0, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    return-object v2
.end method

.method public static parseStbl(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v4, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 3
    :cond_0
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 4
    new-instance v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 5
    :goto_0
    invoke-interface {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 6
    new-instance v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v5, [J

    new-array v3, v5, [I

    new-array v6, v5, [J

    new-array v7, v5, [I

    const/4 v4, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 7
    :cond_1
    sget v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 8
    sget v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v5

    .line 9
    :goto_1
    iget-object v6, v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 10
    sget v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    invoke-virtual {v0, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    iget-object v9, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 11
    sget v10, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    invoke-virtual {v0, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    iget-object v10, v10, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 12
    sget v11, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    invoke-virtual {v0, v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 13
    iget-object v11, v11, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    move-object v11, v12

    .line 14
    :goto_2
    sget v13, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    invoke-virtual {v0, v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    goto :goto_3

    :cond_4
    move-object v0, v12

    .line 16
    :goto_3
    new-instance v13, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v9, v6, v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v6, 0xc

    .line 17
    invoke-virtual {v10, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 18
    invoke-virtual {v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    sub-int/2addr v8, v7

    .line 19
    invoke-virtual {v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 20
    invoke-virtual {v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 22
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_4

    :cond_5
    move v15, v5

    :goto_4
    const/16 v16, -0x1

    if-eqz v11, :cond_6

    .line 23
    invoke-virtual {v11, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 24
    invoke-virtual {v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    if-lez v6, :cond_7

    .line 25
    invoke-virtual {v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    :goto_5
    move-object v12, v11

    goto :goto_6

    :cond_6
    move v6, v5

    goto :goto_5

    .line 26
    :cond_7
    :goto_6
    invoke-interface {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-object v11, v11, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 27
    const-string v5, "audio/raw"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    if-nez v6, :cond_8

    move v5, v7

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    :goto_7
    const-string v11, "AtomParsers"

    const-wide/16 v18, 0x0

    if-nez v5, :cond_17

    .line 28
    new-array v5, v3, [J

    .line 29
    new-array v7, v3, [I

    move/from16 p1, v6

    .line 30
    new-array v6, v3, [J

    move/from16 v21, v8

    .line 31
    new-array v8, v3, [I

    move-object/from16 v24, v10

    move v2, v14

    move-wide/from16 v25, v18

    move-wide/from16 v27, v25

    move/from16 v14, v21

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v40, v9

    move/from16 v9, p1

    move-object/from16 p1, v11

    move/from16 v11, v16

    move/from16 v16, v15

    move/from16 v15, v40

    :goto_8
    if-ge v1, v3, :cond_10

    :goto_9
    if-nez v23, :cond_9

    .line 32
    invoke-virtual {v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    move/from16 v29, v14

    move/from16 v30, v15

    .line 33
    iget-wide v14, v13, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v27, v14

    .line 34
    iget v14, v13, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v23, v14

    move/from16 v14, v29

    move/from16 v15, v30

    goto :goto_9

    :cond_9
    move/from16 v29, v14

    move/from16 v30, v15

    if-eqz v0, :cond_b

    :goto_a
    if-nez v21, :cond_a

    if-lez v16, :cond_a

    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    .line 36
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v22

    add-int/lit8 v16, v16, -0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v21, v21, -0x1

    :cond_b
    move/from16 v14, v22

    .line 37
    aput-wide v27, v5, v1

    .line 38
    invoke-interface {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v15

    aput v15, v7, v1

    if-le v15, v10, :cond_c

    move-object/from16 v22, v5

    move v10, v15

    move-object v15, v4

    goto :goto_b

    :cond_c
    move-object v15, v4

    move-object/from16 v22, v5

    :goto_b
    int-to-long v4, v14

    add-long v4, v25, v4

    .line 39
    aput-wide v4, v6, v1

    if-nez v12, :cond_d

    const/4 v4, 0x1

    goto :goto_c

    :cond_d
    const/4 v4, 0x0

    .line 40
    :goto_c
    aput v4, v8, v1

    if-ne v1, v11, :cond_e

    const/4 v4, 0x1

    .line 41
    aput v4, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_e

    .line 42
    invoke-virtual {v12}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    sub-int/2addr v5, v4

    move v11, v5

    :cond_e
    int-to-long v4, v2

    add-long v25, v25, v4

    add-int/lit8 v4, v30, -0x1

    if-nez v4, :cond_f

    if-lez v29, :cond_f

    .line 43
    invoke-virtual/range {v24 .. v24}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 44
    invoke-virtual/range {v24 .. v24}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    add-int/lit8 v5, v29, -0x1

    move/from16 v29, v5

    move/from16 v40, v4

    move v4, v2

    move/from16 v2, v40

    .line 45
    :cond_f
    aget v5, v7, v1

    move/from16 v30, v4

    int-to-long v4, v5

    add-long v27, v27, v4

    add-int/lit8 v23, v23, -0x1

    add-int/lit8 v1, v1, 0x1

    move-object v4, v15

    move-object/from16 v5, v22

    move/from16 v15, v30

    move/from16 v22, v14

    move/from16 v14, v29

    goto/16 :goto_8

    :cond_10
    move/from16 v29, v14

    move/from16 v30, v15

    move/from16 v14, v22

    move-object/from16 v22, v5

    int-to-long v1, v14

    add-long v25, v25, v1

    if-nez v21, :cond_11

    const/4 v1, 0x1

    goto :goto_d

    :cond_11
    const/4 v1, 0x0

    .line 46
    :goto_d
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    :goto_e
    if-lez v16, :cond_13

    .line 47
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_f

    :cond_12
    const/4 v1, 0x0

    :goto_f
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 48
    invoke-virtual {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_e

    :cond_13
    if-nez v9, :cond_15

    if-nez v30, :cond_15

    move/from16 v0, v23

    if-nez v0, :cond_16

    if-eqz v29, :cond_14

    goto :goto_10

    :cond_14
    move-object/from16 v2, p0

    move-object/from16 v1, p1

    goto :goto_11

    :cond_15
    move/from16 v0, v23

    .line 49
    :cond_16
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    iget v4, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": remainingSynchronizationSamples "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v30

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesInChunk "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    move-object v14, v6

    move-object v5, v7

    move-object v15, v8

    move v6, v10

    move-object/from16 v4, v22

    goto :goto_13

    :cond_17
    move-object v2, v1

    move-object v1, v11

    .line 50
    iget v0, v13, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v0, [J

    .line 51
    new-array v0, v0, [I

    .line 52
    :goto_12
    invoke-virtual {v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 53
    iget v5, v13, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v6, v13, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v6, v4, v5

    .line 54
    iget v6, v13, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v6, v0, v5

    goto :goto_12

    .line 55
    :cond_18
    iget-object v5, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget v6, v5, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->pcmEncoding:I

    iget v5, v5, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    .line 56
    invoke-static {v6, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v5

    int-to-long v6, v14

    .line 57
    invoke-static {v5, v4, v0, v6, v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 58
    iget-object v4, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 59
    iget-object v5, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 60
    iget v6, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 61
    iget-object v7, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 62
    iget-object v8, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 63
    iget-wide v9, v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-object v14, v7

    move-object v15, v8

    move-wide/from16 v25, v9

    .line 64
    :goto_13
    iget-wide v11, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v9, 0xf4240

    move-wide/from16 v7, v25

    invoke-static/range {v7 .. v12}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v21

    .line 65
    iget-object v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v12, 0xf4240

    if-eqz v0, :cond_19

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    move-object/from16 p2, v4

    move-object v10, v5

    move/from16 v16, v6

    goto/16 :goto_24

    .line 66
    :cond_1a
    iget-object v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d

    iget v7, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v7, v8, :cond_1d

    array-length v7, v14

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1d

    .line 67
    iget-object v7, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v8, 0x0

    aget-wide v23, v7, v8

    .line 68
    aget-wide v27, v0, v8

    iget-wide v7, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v9, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v29, v7

    move-wide/from16 v31, v9

    invoke-static/range {v27 .. v32}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    add-long v27, v23, v7

    move-object v7, v14

    move-wide/from16 v8, v25

    move-wide/from16 v10, v23

    move-object/from16 p1, v1

    move-wide v0, v12

    move-wide/from16 v12, v27

    .line 69
    invoke-static/range {v7 .. v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v7

    if-eqz v7, :cond_1c

    sub-long v8, v25, v27

    const/4 v7, 0x0

    .line 70
    aget-wide v10, v14, v7

    sub-long v27, v23, v10

    iget-object v7, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget v7, v7, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    int-to-long v10, v7

    iget-wide v12, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v29, v10

    move-wide/from16 v31, v12

    invoke-static/range {v27 .. v32}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 71
    iget-object v7, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget v7, v7, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    int-to-long v10, v7

    iget-wide v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 v16, v6

    move-wide v6, v12

    move-wide v12, v0

    invoke-static/range {v8 .. v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    cmp-long v8, v6, v18

    if-nez v8, :cond_1b

    cmp-long v8, v0, v18

    if-eqz v8, :cond_1e

    :cond_1b
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v6, v8

    if-gtz v10, :cond_1e

    cmp-long v8, v0, v8

    if-gtz v8, :cond_1e

    long-to-int v3, v6

    move-object/from16 v6, p2

    .line 72
    iput v3, v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v0, v0

    .line 73
    iput v0, v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 74
    iget-wide v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v6, 0xf4240

    invoke-static {v14, v6, v7, v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 75
    new-instance v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_1c
    :goto_14
    move/from16 v16, v6

    goto :goto_15

    :cond_1d
    move-object/from16 p1, v1

    goto :goto_14

    .line 76
    :cond_1e
    :goto_15
    iget-object v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_20

    const/4 v1, 0x0

    aget-wide v6, v0, v1

    cmp-long v0, v6, v18

    if-nez v0, :cond_20

    .line 77
    iget-object v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v6, v0, v1

    const/4 v0, 0x0

    .line 78
    :goto_16
    array-length v1, v14

    if-ge v0, v1, :cond_1f

    .line 79
    aget-wide v8, v14, v0

    sub-long v17, v8, v6

    iget-wide v8, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v19, 0xf4240

    move-wide/from16 v21, v8

    .line 80
    invoke-static/range {v17 .. v22}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    aput-wide v8, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_1f
    sub-long v8, v25, v6

    .line 81
    iget-wide v12, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v10, 0xf4240

    .line 82
    invoke-static/range {v8 .. v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 83
    new-instance v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 84
    :cond_20
    iget v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_17

    :cond_21
    const/4 v0, 0x0

    :goto_17
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 85
    :goto_18
    iget-object v9, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v10, v9

    const-wide/16 v11, -0x1

    if-ge v8, v10, :cond_24

    .line 86
    iget-object v10, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    move-object v13, v4

    move-object/from16 v25, v5

    aget-wide v4, v10, v8

    cmp-long v10, v4, v11

    if-eqz v10, :cond_23

    .line 87
    aget-wide v26, v9, v8

    iget-wide v9, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v11, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v28, v9

    move-wide/from16 v30, v11

    .line 88
    invoke-static/range {v26 .. v31}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    const/4 v11, 0x1

    .line 89
    invoke-static {v14, v4, v5, v11, v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v12

    add-long/2addr v4, v9

    const/4 v9, 0x0

    .line 90
    invoke-static {v14, v4, v5, v0, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v4

    sub-int v5, v4, v12

    add-int/2addr v1, v5

    if-eq v6, v12, :cond_22

    const/4 v5, 0x1

    goto :goto_19

    :cond_22
    const/4 v5, 0x0

    :goto_19
    or-int/2addr v5, v7

    move v6, v4

    move v7, v5

    :cond_23
    add-int/lit8 v8, v8, 0x1

    move-object v4, v13

    move-object/from16 v5, v25

    goto :goto_18

    :cond_24
    move-object v13, v4

    move-object/from16 v25, v5

    if-eq v1, v3, :cond_25

    const/4 v4, 0x1

    goto :goto_1a

    :cond_25
    const/4 v4, 0x0

    :goto_1a
    or-int v3, v7, v4

    if-eqz v3, :cond_26

    .line 91
    new-array v4, v1, [J

    goto :goto_1b

    :cond_26
    move-object v4, v13

    :goto_1b
    if-eqz v3, :cond_27

    .line 92
    new-array v5, v1, [I

    goto :goto_1c

    :cond_27
    move-object/from16 v5, v25

    :goto_1c
    if-eqz v3, :cond_28

    const/4 v6, 0x0

    goto :goto_1d

    :cond_28
    move/from16 v6, v16

    :goto_1d
    if-eqz v3, :cond_29

    .line 93
    new-array v7, v1, [I

    goto :goto_1e

    :cond_29
    move-object v7, v15

    .line 94
    :goto_1e
    new-array v8, v1, [J

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 95
    :goto_1f
    iget-object v10, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v11, v10

    if-ge v1, v11, :cond_30

    .line 96
    iget-object v11, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    move-object/from16 p2, v13

    aget-wide v12, v11, v1

    .line 97
    aget-wide v23, v10, v1

    const-wide/16 v10, -0x1

    cmp-long v16, v12, v10

    if-eqz v16, :cond_2f

    .line 98
    iget-wide v10, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 v32, v6

    move-object/from16 v16, v7

    iget-wide v6, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v26, v23

    move-wide/from16 v28, v10

    move-wide/from16 v30, v6

    .line 99
    invoke-static/range {v26 .. v31}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    add-long/2addr v6, v12

    const/4 v10, 0x1

    .line 100
    invoke-static {v14, v12, v13, v10, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v11

    const/4 v10, 0x0

    .line 101
    invoke-static {v14, v6, v7, v0, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v6

    if-eqz v3, :cond_2a

    sub-int v7, v6, v11

    move-object/from16 v10, p2

    .line 102
    invoke-static {v10, v11, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v10, v25

    .line 103
    invoke-static {v10, v11, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v25, v4

    move-object/from16 v4, v16

    .line 104
    invoke-static {v15, v11, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20

    :cond_2a
    move-object/from16 v10, v25

    move-object/from16 v25, v4

    move-object/from16 v4, v16

    :goto_20
    if-ge v11, v6, :cond_2c

    .line 105
    aget v7, v4, v9

    const/16 v16, 0x1

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2b

    move-object/from16 v7, p1

    goto :goto_21

    .line 106
    :cond_2b
    const-string v0, "Ignoring edit list: edit does not start with a sync sample."

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$UnhandledEditListException;

    invoke-direct {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$UnhandledEditListException;-><init>()V

    throw v0

    :cond_2c
    move-object/from16 v7, p1

    const/16 v16, 0x1

    :goto_21
    move/from16 v20, v0

    move v0, v11

    move v11, v9

    move/from16 v9, v32

    :goto_22
    if-ge v0, v6, :cond_2e

    move/from16 p1, v6

    move-object/from16 v33, v7

    .line 108
    iget-wide v6, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    const-wide/32 v28, 0xf4240

    move-wide/from16 v26, v18

    move-wide/from16 v30, v6

    invoke-static/range {v26 .. v31}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 109
    aget-wide v26, v14, v0

    sub-long v34, v26, v12

    move-wide/from16 v26, v12

    iget-wide v12, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v36, 0xf4240

    move-wide/from16 v38, v12

    .line 110
    invoke-static/range {v34 .. v39}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long/2addr v6, v12

    .line 111
    aput-wide v6, v8, v11

    if-eqz v3, :cond_2d

    .line 112
    aget v6, v5, v11

    if-le v6, v9, :cond_2d

    .line 113
    aget v6, v10, v0

    move v9, v6

    :cond_2d
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v6, p1

    move-wide/from16 v12, v26

    move-object/from16 v7, v33

    goto :goto_22

    :cond_2e
    move-object/from16 v33, v7

    move v6, v9

    move v9, v11

    goto :goto_23

    :cond_2f
    move-object/from16 v33, p1

    move/from16 v20, v0

    move/from16 v32, v6

    move-object/from16 v10, v25

    const/16 v16, 0x1

    move-object/from16 v25, v4

    move-object v4, v7

    :goto_23
    add-long v18, v18, v23

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v13, p2

    move-object v7, v4

    move/from16 v0, v20

    move-object/from16 v4, v25

    move-object/from16 p1, v33

    const-wide/16 v11, -0x1

    move-object/from16 v25, v10

    goto/16 :goto_1f

    :cond_30
    move-object/from16 v25, v4

    move/from16 v32, v6

    move-object v4, v7

    .line 114
    iget-wide v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v28, 0xf4240

    move-wide/from16 v26, v18

    move-wide/from16 v30, v0

    invoke-static/range {v26 .. v31}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    .line 115
    new-instance v11, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object v3, v5

    move-object v15, v4

    move/from16 v4, v32

    move-object v5, v8

    move-object v6, v15

    move-wide v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v11

    .line 116
    :goto_24
    iget-wide v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v3, 0xf4240

    invoke-static {v14, v3, v4, v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 117
    new-instance v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v10

    move/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v7, v21

    invoke-direct/range {v0 .. v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 118
    :cond_31
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStsd(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Z)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    invoke-virtual {v10, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v11

    .line 12
    new-instance v12, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    .line 13
    .line 14
    invoke-direct {v12, v11}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v13, 0x0

    .line 18
    move v14, v13

    .line 19
    :goto_0
    if-ge v14, v11, :cond_8

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 22
    .line 23
    .line 24
    move-result v15

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v16

    .line 29
    if-lez v16, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v0, v13

    .line 34
    :goto_1
    const-string v1, "childAtomSize should be positive"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    .line 44
    .line 45
    if-eq v1, v0, :cond_6

    .line 46
    .line 47
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    .line 48
    .line 49
    if-eq v1, v0, :cond_6

    .line 50
    .line 51
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    .line 52
    .line 53
    if-eq v1, v0, :cond_6

    .line 54
    .line 55
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    .line 56
    .line 57
    if-eq v1, v0, :cond_6

    .line 58
    .line 59
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    .line 60
    .line 61
    if-eq v1, v0, :cond_6

    .line 62
    .line 63
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    .line 64
    .line 65
    if-eq v1, v0, :cond_6

    .line 66
    .line 67
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    .line 68
    .line 69
    if-eq v1, v0, :cond_6

    .line 70
    .line 71
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    .line 72
    .line 73
    if-eq v1, v0, :cond_6

    .line 74
    .line 75
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    .line 76
    .line 77
    if-ne v1, v0, :cond_1

    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :cond_1
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    .line 82
    .line 83
    if-eq v1, v0, :cond_5

    .line 84
    .line 85
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    .line 86
    .line 87
    if-eq v1, v0, :cond_5

    .line 88
    .line 89
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    .line 90
    .line 91
    if-eq v1, v0, :cond_5

    .line 92
    .line 93
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    .line 94
    .line 95
    if-eq v1, v0, :cond_5

    .line 96
    .line 97
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    .line 98
    .line 99
    if-eq v1, v0, :cond_5

    .line 100
    .line 101
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    .line 102
    .line 103
    if-eq v1, v0, :cond_5

    .line 104
    .line 105
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    .line 106
    .line 107
    if-eq v1, v0, :cond_5

    .line 108
    .line 109
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    .line 110
    .line 111
    if-eq v1, v0, :cond_5

    .line 112
    .line 113
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    .line 114
    .line 115
    if-eq v1, v0, :cond_5

    .line 116
    .line 117
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    .line 118
    .line 119
    if-eq v1, v0, :cond_5

    .line 120
    .line 121
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    .line 122
    .line 123
    if-eq v1, v0, :cond_5

    .line 124
    .line 125
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    .line 126
    .line 127
    if-eq v1, v0, :cond_5

    .line 128
    .line 129
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    .line 130
    .line 131
    if-eq v1, v0, :cond_5

    .line 132
    .line 133
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    .line 134
    .line 135
    if-ne v1, v0, :cond_2

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_2
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    .line 139
    .line 140
    if-eq v1, v0, :cond_4

    .line 141
    .line 142
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    .line 143
    .line 144
    if-eq v1, v0, :cond_4

    .line 145
    .line 146
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    .line 147
    .line 148
    if-eq v1, v0, :cond_4

    .line 149
    .line 150
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    .line 151
    .line 152
    if-eq v1, v0, :cond_4

    .line 153
    .line 154
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    .line 155
    .line 156
    if-ne v1, v0, :cond_3

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    .line 160
    .line 161
    if-ne v1, v0, :cond_7

    .line 162
    .line 163
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string v1, "application/x-camera-motion"

    .line 168
    .line 169
    const/4 v2, -0x1

    .line 170
    const/4 v3, 0x0

    .line 171
    invoke-static {v0, v1, v3, v2, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iput-object v0, v12, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    .line 179
    .line 180
    move v2, v15

    .line 181
    move/from16 v3, v16

    .line 182
    .line 183
    move/from16 v4, p1

    .line 184
    .line 185
    move-object/from16 v5, p3

    .line 186
    .line 187
    move-object v6, v12

    .line 188
    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    .line 189
    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    .line 193
    .line 194
    move v2, v15

    .line 195
    move/from16 v3, v16

    .line 196
    .line 197
    move/from16 v4, p1

    .line 198
    .line 199
    move-object/from16 v5, p3

    .line 200
    .line 201
    move/from16 v6, p5

    .line 202
    .line 203
    move-object/from16 v7, p4

    .line 204
    .line 205
    move-object v8, v12

    .line 206
    move v9, v14

    .line 207
    invoke-static/range {v0 .. v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    .line 212
    .line 213
    move v2, v15

    .line 214
    move/from16 v3, v16

    .line 215
    .line 216
    move/from16 v4, p1

    .line 217
    .line 218
    move/from16 v5, p2

    .line 219
    .line 220
    move-object/from16 v6, p4

    .line 221
    .line 222
    move-object v7, v12

    .line 223
    move v8, v14

    .line 224
    invoke-static/range {v0 .. v8}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIIILcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    .line 225
    .line 226
    .line 227
    :cond_7
    :goto_5
    add-int v15, v15, v16

    .line 228
    .line 229
    invoke-virtual {v10, v15}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 230
    .line 231
    .line 232
    add-int/lit8 v14, v14, 0x1

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_8
    return-object v12
.end method

.method private static parseTextSampleEntry(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    add-int/lit8 v3, p2, 0x10

    .line 8
    .line 9
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 10
    .line 11
    .line 12
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    .line 13
    .line 14
    const-string v4, "application/ttml+xml"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const-wide v6, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    :goto_0
    move-object v9, v4

    .line 25
    move-object/from16 v18, v5

    .line 26
    .line 27
    move-wide/from16 v16, v6

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    .line 31
    .line 32
    if-ne v1, v3, :cond_1

    .line 33
    .line 34
    add-int/lit8 v1, p3, -0x10

    .line 35
    .line 36
    new-array v3, v1, [B

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v0, v3, v4, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v4, "application/x-quicktime-tx3g"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    .line 50
    .line 51
    if-ne v1, v0, :cond_2

    .line 52
    .line 53
    const-string v4, "application/x-mp4-vtt"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    .line 57
    .line 58
    if-ne v1, v0, :cond_3

    .line 59
    .line 60
    const-wide/16 v6, 0x0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    sget v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    .line 64
    .line 65
    if-ne v1, v0, :cond_4

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    iput v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 69
    .line 70
    const-string v4, "application/x-mp4-cea-608"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    const/4 v14, -0x1

    .line 78
    const/4 v15, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    const/4 v11, -0x1

    .line 81
    const/4 v12, 0x0

    .line 82
    move-object/from16 v13, p5

    .line 83
    .line 84
    invoke-static/range {v8 .. v18}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method private static parseTkhd(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 12

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x10

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x4

    .line 29
    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    move v0, v4

    .line 39
    :cond_1
    const/4 v6, 0x0

    .line 40
    move v7, v6

    .line 41
    :goto_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    if-ge v7, v0, :cond_5

    .line 47
    .line 48
    iget-object v10, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 49
    .line 50
    add-int v11, v5, v7

    .line 51
    .line 52
    aget-byte v10, v10, v11

    .line 53
    .line 54
    const/4 v11, -0x1

    .line 55
    if-eq v10, v11, :cond_4

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    :goto_2
    const-wide/16 v10, 0x0

    .line 69
    .line 70
    cmp-long v5, v0, v10

    .line 71
    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move-wide v8, v0

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 81
    .line 82
    .line 83
    :goto_3
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    const/high16 v4, -0x10000

    .line 106
    .line 107
    const/high16 v5, 0x10000

    .line 108
    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    if-ne v1, v5, :cond_6

    .line 112
    .line 113
    if-ne v2, v4, :cond_6

    .line 114
    .line 115
    if-nez p0, :cond_6

    .line 116
    .line 117
    const/16 v6, 0x5a

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    if-nez v0, :cond_7

    .line 121
    .line 122
    if-ne v1, v4, :cond_7

    .line 123
    .line 124
    if-ne v2, v5, :cond_7

    .line 125
    .line 126
    if-nez p0, :cond_7

    .line 127
    .line 128
    const/16 v6, 0x10e

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    if-ne v0, v4, :cond_8

    .line 132
    .line 133
    if-nez v1, :cond_8

    .line 134
    .line 135
    if-nez v2, :cond_8

    .line 136
    .line 137
    if-ne p0, v4, :cond_8

    .line 138
    .line 139
    const/16 v6, 0xb4

    .line 140
    .line 141
    :cond_8
    :goto_4
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    .line 142
    .line 143
    invoke-direct {p0, v3, v8, v9, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    .line 144
    .line 145
    .line 146
    return-object p0
.end method

.method public static parseTrak(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ZZ)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v2, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-ne v5, v2, :cond_0

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_0
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v2, v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmp-long v4, p2, v6

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    move-object/from16 v4, p1

    .line 52
    .line 53
    move-wide v10, v8

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object/from16 v4, p1

    .line 56
    .line 57
    move-wide/from16 v10, p2

    .line 58
    .line 59
    :goto_0
    iget-object v4, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 60
    .line 61
    invoke-static {v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    cmp-long v4, v10, v6

    .line 66
    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    :goto_1
    move-wide v10, v6

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const-wide/32 v12, 0xf4240

    .line 72
    .line 73
    .line 74
    move-wide v14, v8

    .line 75
    invoke-static/range {v10 .. v15}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    goto :goto_1

    .line 80
    :goto_2
    sget v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    sget v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    .line 87
    .line 88
    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    sget v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    .line 93
    .line 94
    invoke-virtual {v1, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v1, v1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    .line 105
    .line 106
    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget-object v12, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 121
    .line 122
    move-object v15, v4

    .line 123
    check-cast v15, Ljava/lang/String;

    .line 124
    .line 125
    move-object/from16 v16, p4

    .line 126
    .line 127
    move/from16 v17, p6

    .line 128
    .line 129
    invoke-static/range {v12 .. v17}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Z)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-nez p5, :cond_3

    .line 134
    .line 135
    sget v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    .line 136
    .line 137
    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v6, [J

    .line 148
    .line 149
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, [J

    .line 152
    .line 153
    move-object/from16 v17, v0

    .line 154
    .line 155
    move-object/from16 v16, v6

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_3
    move-object/from16 v16, v3

    .line 159
    .line 160
    move-object/from16 v17, v16

    .line 161
    .line 162
    :goto_3
    iget-object v0, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 163
    .line 164
    if-nez v0, :cond_4

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_4
    new-instance v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    .line 168
    .line 169
    invoke-static {v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v1, Ljava/lang/Long;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v6

    .line 181
    iget-object v12, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 182
    .line 183
    iget v13, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 184
    .line 185
    iget-object v14, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 186
    .line 187
    iget v15, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 188
    .line 189
    move-object v3, v0

    .line 190
    move v4, v2

    .line 191
    invoke-direct/range {v3 .. v17}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/mbridge/msdk/playercommon/exoplayer2/Format;I[Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 192
    .line 193
    .line 194
    :goto_4
    return-object v3
.end method

.method public static parseUdta(Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 6
    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lt v1, p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sget v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    .line 31
    .line 32
    if-ne v3, v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 35
    .line 36
    .line 37
    add-int/2addr v1, v2

    .line 38
    invoke-static {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseMetaAtom(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    add-int/lit8 v2, v2, -0x8

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-object v0
.end method

.method private static parseVideoSampleEntry(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;IIIIILcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p6

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    add-int/lit8 v5, v1, 0x10

    .line 12
    .line 13
    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 14
    .line 15
    .line 16
    const/16 v5, 0x10

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    const/16 v5, 0x32

    .line 30
    .line 31
    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    sget v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    move/from16 v8, p1

    .line 42
    .line 43
    if-ne v8, v6, :cond_2

    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v8, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    move-object v3, v7

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 66
    .line 67
    iget-object v9, v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    :goto_0
    iget-object v9, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 74
    .line 75
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v6, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 78
    .line 79
    aput-object v6, v9, p8

    .line 80
    .line 81
    :cond_1
    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    move-object/from16 v20, v3

    .line 85
    .line 86
    const/high16 v6, 0x3f800000    # 1.0f

    .line 87
    .line 88
    const/4 v9, -0x1

    .line 89
    move/from16 v16, v6

    .line 90
    .line 91
    move-object v14, v7

    .line 92
    move-object/from16 v17, v14

    .line 93
    .line 94
    move/from16 v18, v9

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    :goto_1
    sub-int v9, v5, v1

    .line 98
    .line 99
    if-ge v9, v2, :cond_17

    .line 100
    .line 101
    invoke-virtual {v0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-nez v10, :cond_3

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    sub-int/2addr v13, v1

    .line 119
    if-ne v13, v2, :cond_3

    .line 120
    .line 121
    goto/16 :goto_9

    .line 122
    .line 123
    :cond_3
    const/4 v13, 0x1

    .line 124
    if-lez v10, :cond_4

    .line 125
    .line 126
    move v15, v13

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    const/4 v15, 0x0

    .line 129
    :goto_2
    const-string v3, "childAtomSize should be positive"

    .line 130
    .line 131
    invoke-static {v15, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    sget v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    .line 139
    .line 140
    if-ne v3, v15, :cond_7

    .line 141
    .line 142
    if-nez v7, :cond_5

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    const/4 v13, 0x0

    .line 146
    :goto_3
    invoke-static {v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v9, v9, 0x8

    .line 150
    .line 151
    invoke-virtual {v0, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 152
    .line 153
    .line 154
    invoke-static/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->parse(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    iget-object v14, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 159
    .line 160
    iget v7, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    .line 161
    .line 162
    iput v7, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 163
    .line 164
    if-nez v6, :cond_6

    .line 165
    .line 166
    iget v3, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    .line 167
    .line 168
    move/from16 v16, v3

    .line 169
    .line 170
    :cond_6
    const-string/jumbo v7, "video/avc"

    .line 171
    .line 172
    .line 173
    goto/16 :goto_8

    .line 174
    .line 175
    :cond_7
    sget v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    .line 176
    .line 177
    if-ne v3, v15, :cond_9

    .line 178
    .line 179
    if-nez v7, :cond_8

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_8
    const/4 v13, 0x0

    .line 183
    :goto_4
    invoke-static {v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v9, v9, 0x8

    .line 187
    .line 188
    invoke-virtual {v0, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 189
    .line 190
    .line 191
    invoke-static/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;->parse(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    iget-object v14, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 196
    .line 197
    iget v3, v3, Lcom/mbridge/msdk/playercommon/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    .line 198
    .line 199
    iput v3, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 200
    .line 201
    const-string/jumbo v7, "video/hevc"

    .line 202
    .line 203
    .line 204
    goto/16 :goto_8

    .line 205
    .line 206
    :cond_9
    sget v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    .line 207
    .line 208
    if-ne v3, v15, :cond_c

    .line 209
    .line 210
    if-nez v7, :cond_a

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_a
    const/4 v13, 0x0

    .line 214
    :goto_5
    invoke-static {v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 215
    .line 216
    .line 217
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    .line 218
    .line 219
    if-ne v8, v3, :cond_b

    .line 220
    .line 221
    const-string/jumbo v7, "video/x-vnd.on2.vp8"

    .line 222
    .line 223
    .line 224
    goto/16 :goto_8

    .line 225
    .line 226
    :cond_b
    const-string/jumbo v7, "video/x-vnd.on2.vp9"

    .line 227
    .line 228
    .line 229
    goto/16 :goto_8

    .line 230
    .line 231
    :cond_c
    sget v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    .line 232
    .line 233
    if-ne v3, v15, :cond_e

    .line 234
    .line 235
    if-nez v7, :cond_d

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_d
    const/4 v13, 0x0

    .line 239
    :goto_6
    invoke-static {v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 240
    .line 241
    .line 242
    const-string/jumbo v7, "video/3gpp"

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_e
    sget v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    .line 247
    .line 248
    if-ne v3, v15, :cond_10

    .line 249
    .line 250
    if-nez v7, :cond_f

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_f
    const/4 v13, 0x0

    .line 254
    :goto_7
    invoke-static {v13}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 255
    .line 256
    .line 257
    invoke-static {v0, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v7, Ljava/lang/String;

    .line 264
    .line 265
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v3, [B

    .line 268
    .line 269
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v14

    .line 273
    goto :goto_8

    .line 274
    :cond_10
    sget v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    .line 275
    .line 276
    if-ne v3, v15, :cond_11

    .line 277
    .line 278
    invoke-static {v0, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)F

    .line 279
    .line 280
    .line 281
    move-result v16

    .line 282
    move v6, v13

    .line 283
    goto :goto_8

    .line 284
    :cond_11
    sget v15, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    .line 285
    .line 286
    if-ne v3, v15, :cond_12

    .line 287
    .line 288
    invoke-static {v0, v9, v10}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;II)[B

    .line 289
    .line 290
    .line 291
    move-result-object v17

    .line 292
    goto :goto_8

    .line 293
    :cond_12
    sget v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    .line 294
    .line 295
    if-ne v3, v9, :cond_16

    .line 296
    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    const/4 v9, 0x3

    .line 302
    invoke-virtual {v0, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 303
    .line 304
    .line 305
    if-nez v3, :cond_16

    .line 306
    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-eqz v3, :cond_15

    .line 312
    .line 313
    if-eq v3, v13, :cond_14

    .line 314
    .line 315
    const/4 v13, 0x2

    .line 316
    if-eq v3, v13, :cond_14

    .line 317
    .line 318
    if-eq v3, v9, :cond_13

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_13
    move/from16 v18, v9

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_14
    move/from16 v18, v13

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_15
    const/16 v18, 0x0

    .line 328
    .line 329
    :cond_16
    :goto_8
    add-int/2addr v5, v10

    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :cond_17
    :goto_9
    if-nez v7, :cond_18

    .line 333
    .line 334
    return-void

    .line 335
    :cond_18
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    const/high16 v13, -0x40800000    # -1.0f

    .line 340
    .line 341
    const/16 v19, 0x0

    .line 342
    .line 343
    const/4 v8, 0x0

    .line 344
    const/4 v9, -0x1

    .line 345
    const/4 v10, -0x1

    .line 346
    move/from16 v15, p5

    .line 347
    .line 348
    invoke-static/range {v6 .. v20}, Lcom/mbridge/msdk/playercommon/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/mbridge/msdk/playercommon/exoplayer2/video/ColorInfo;Lcom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iput-object v0, v4, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 353
    .line 354
    return-void
.end method
