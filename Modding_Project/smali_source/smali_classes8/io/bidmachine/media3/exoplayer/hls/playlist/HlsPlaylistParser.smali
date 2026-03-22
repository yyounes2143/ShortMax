.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
        "Lnn/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:Ljava/util/regex/Pattern;

.field private static final B:Ljava/util/regex/Pattern;

.field private static final C:Ljava/util/regex/Pattern;

.field private static final D:Ljava/util/regex/Pattern;

.field private static final E:Ljava/util/regex/Pattern;

.field private static final F:Ljava/util/regex/Pattern;

.field private static final G:Ljava/util/regex/Pattern;

.field private static final H:Ljava/util/regex/Pattern;

.field private static final I:Ljava/util/regex/Pattern;

.field private static final J:Ljava/util/regex/Pattern;

.field private static final K:Ljava/util/regex/Pattern;

.field private static final L:Ljava/util/regex/Pattern;

.field private static final M:Ljava/util/regex/Pattern;

.field private static final N:Ljava/util/regex/Pattern;

.field private static final O:Ljava/util/regex/Pattern;

.field private static final P:Ljava/util/regex/Pattern;

.field private static final Q:Ljava/util/regex/Pattern;

.field private static final R:Ljava/util/regex/Pattern;

.field private static final S:Ljava/util/regex/Pattern;

.field private static final T:Ljava/util/regex/Pattern;

.field private static final U:Ljava/util/regex/Pattern;

.field private static final V:Ljava/util/regex/Pattern;

.field private static final W:Ljava/util/regex/Pattern;

.field private static final X:Ljava/util/regex/Pattern;

.field private static final Y:Ljava/util/regex/Pattern;

.field private static final Z:Ljava/util/regex/Pattern;

.field private static final a0:Ljava/util/regex/Pattern;

.field private static final b0:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final c0:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final d0:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final e0:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final f0:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final g0:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final h0:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final i0:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final j0:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final k0:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final l0:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final m0:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final n0:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final o0:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final p0:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final q0:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final r0:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;

.field private static final s0:Ljava/util/regex/Pattern;

.field private static final t:Ljava/util/regex/Pattern;

.field private static final u:Ljava/util/regex/Pattern;

.field private static final v:Ljava/util/regex/Pattern;

.field private static final w:Ljava/util/regex/Pattern;

.field private static final x:Ljava/util/regex/Pattern;

.field private static final y:Ljava/util/regex/Pattern;

.field private static final z:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/hls/playlist/d;

.field private final b:Lio/bidmachine/media3/exoplayer/hls/playlist/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "VIDEO=\"(.+?)\""

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "AUDIO=\"(.+?)\""

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const-string v0, "CHANNELS=\"(.+?)\""

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    const-string v0, "VIDEO-RANGE=(SDR|PQ|HLG)"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    const-string v0, "CODECS=\"(.+?)\""

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k:Ljava/util/regex/Pattern;

    .line 72
    .line 73
    const-string v0, "SUPPLEMENTAL-CODECS=\"(.+?)\""

    .line 74
    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l:Ljava/util/regex/Pattern;

    .line 80
    .line 81
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 82
    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m:Ljava/util/regex/Pattern;

    .line 88
    .line 89
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 90
    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n:Ljava/util/regex/Pattern;

    .line 96
    .line 97
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 98
    .line 99
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o:Ljava/util/regex/Pattern;

    .line 104
    .line 105
    const-string v0, "DURATION=([\\d\\.]+)\\b"

    .line 106
    .line 107
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p:Ljava/util/regex/Pattern;

    .line 112
    .line 113
    const-string v0, "[:,]DURATION=([\\d\\.]+)\\b"

    .line 114
    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q:Ljava/util/regex/Pattern;

    .line 120
    .line 121
    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    .line 122
    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r:Ljava/util/regex/Pattern;

    .line 128
    .line 129
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 130
    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s:Ljava/util/regex/Pattern;

    .line 136
    .line 137
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 138
    .line 139
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t:Ljava/util/regex/Pattern;

    .line 144
    .line 145
    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    .line 146
    .line 147
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u:Ljava/util/regex/Pattern;

    .line 152
    .line 153
    const-string v0, "CAN-SKIP-DATERANGES"

    .line 154
    .line 155
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v:Ljava/util/regex/Pattern;

    .line 160
    .line 161
    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    .line 162
    .line 163
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w:Ljava/util/regex/Pattern;

    .line 168
    .line 169
    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    .line 170
    .line 171
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x:Ljava/util/regex/Pattern;

    .line 176
    .line 177
    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    .line 178
    .line 179
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y:Ljava/util/regex/Pattern;

    .line 184
    .line 185
    const-string v0, "CAN-BLOCK-RELOAD"

    .line 186
    .line 187
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z:Ljava/util/regex/Pattern;

    .line 192
    .line 193
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 194
    .line 195
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A:Ljava/util/regex/Pattern;

    .line 200
    .line 201
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 202
    .line 203
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B:Ljava/util/regex/Pattern;

    .line 208
    .line 209
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 210
    .line 211
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C:Ljava/util/regex/Pattern;

    .line 216
    .line 217
    const-string v0, "LAST-MSN=(\\d+)\\b"

    .line 218
    .line 219
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D:Ljava/util/regex/Pattern;

    .line 224
    .line 225
    const-string v0, "LAST-PART=(\\d+)\\b"

    .line 226
    .line 227
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->E:Ljava/util/regex/Pattern;

    .line 232
    .line 233
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 234
    .line 235
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->F:Ljava/util/regex/Pattern;

    .line 240
    .line 241
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 242
    .line 243
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->G:Ljava/util/regex/Pattern;

    .line 248
    .line 249
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 250
    .line 251
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->H:Ljava/util/regex/Pattern;

    .line 256
    .line 257
    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    .line 258
    .line 259
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->I:Ljava/util/regex/Pattern;

    .line 264
    .line 265
    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    .line 266
    .line 267
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->J:Ljava/util/regex/Pattern;

    .line 272
    .line 273
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 274
    .line 275
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->K:Ljava/util/regex/Pattern;

    .line 280
    .line 281
    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 282
    .line 283
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->L:Ljava/util/regex/Pattern;

    .line 288
    .line 289
    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 290
    .line 291
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->M:Ljava/util/regex/Pattern;

    .line 296
    .line 297
    const-string v0, "URI=\"(.+?)\""

    .line 298
    .line 299
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    .line 304
    .line 305
    const-string v0, "IV=([^,.*]+)"

    .line 306
    .line 307
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->O:Ljava/util/regex/Pattern;

    .line 312
    .line 313
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 314
    .line 315
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->P:Ljava/util/regex/Pattern;

    .line 320
    .line 321
    const-string v0, "TYPE=(PART|MAP)"

    .line 322
    .line 323
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Q:Ljava/util/regex/Pattern;

    .line 328
    .line 329
    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 330
    .line 331
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->R:Ljava/util/regex/Pattern;

    .line 336
    .line 337
    const-string v0, "NAME=\"(.+?)\""

    .line 338
    .line 339
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    .line 344
    .line 345
    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 346
    .line 347
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->T:Ljava/util/regex/Pattern;

    .line 352
    .line 353
    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 354
    .line 355
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->U:Ljava/util/regex/Pattern;

    .line 360
    .line 361
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 362
    .line 363
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->V:Ljava/util/regex/Pattern;

    .line 368
    .line 369
    const-string v0, "AUTOSELECT"

    .line 370
    .line 371
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->W:Ljava/util/regex/Pattern;

    .line 376
    .line 377
    const-string v0, "DEFAULT"

    .line 378
    .line 379
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->X:Ljava/util/regex/Pattern;

    .line 384
    .line 385
    const-string v0, "FORCED"

    .line 386
    .line 387
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Y:Ljava/util/regex/Pattern;

    .line 392
    .line 393
    const-string v0, "INDEPENDENT"

    .line 394
    .line 395
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Z:Ljava/util/regex/Pattern;

    .line 400
    .line 401
    const-string v0, "GAP"

    .line 402
    .line 403
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a0:Ljava/util/regex/Pattern;

    .line 408
    .line 409
    const-string v0, "PRECISE"

    .line 410
    .line 411
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b0:Ljava/util/regex/Pattern;

    .line 416
    .line 417
    const-string v0, "VALUE=\"(.+?)\""

    .line 418
    .line 419
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c0:Ljava/util/regex/Pattern;

    .line 424
    .line 425
    const-string v0, "IMPORT=\"(.+?)\""

    .line 426
    .line 427
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d0:Ljava/util/regex/Pattern;

    .line 432
    .line 433
    const-string v0, "[:,]ID=\"(.+?)\""

    .line 434
    .line 435
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e0:Ljava/util/regex/Pattern;

    .line 440
    .line 441
    const-string v0, "CLASS=\"(.+?)\""

    .line 442
    .line 443
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f0:Ljava/util/regex/Pattern;

    .line 448
    .line 449
    const-string v0, "START-DATE=\"(.+?)\""

    .line 450
    .line 451
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g0:Ljava/util/regex/Pattern;

    .line 456
    .line 457
    const-string v0, "CUE=\"(.+?)\""

    .line 458
    .line 459
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h0:Ljava/util/regex/Pattern;

    .line 464
    .line 465
    const-string v0, "END-DATE=\"(.+?)\""

    .line 466
    .line 467
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i0:Ljava/util/regex/Pattern;

    .line 472
    .line 473
    const-string v0, "PLANNED-DURATION=([\\d\\.]+)\\b"

    .line 474
    .line 475
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j0:Ljava/util/regex/Pattern;

    .line 480
    .line 481
    const-string v0, "END-ON-NEXT"

    .line 482
    .line 483
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k0:Ljava/util/regex/Pattern;

    .line 488
    .line 489
    const-string v0, "X-ASSET-URI=\"(.+?)\""

    .line 490
    .line 491
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l0:Ljava/util/regex/Pattern;

    .line 496
    .line 497
    const-string v0, "X-ASSET-LIST=\"(.+?)\""

    .line 498
    .line 499
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m0:Ljava/util/regex/Pattern;

    .line 504
    .line 505
    const-string v0, "X-RESUME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 506
    .line 507
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n0:Ljava/util/regex/Pattern;

    .line 512
    .line 513
    const-string v0, "X-PLAYOUT-LIMIT=([\\d\\.]+)\\b"

    .line 514
    .line 515
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o0:Ljava/util/regex/Pattern;

    .line 520
    .line 521
    const-string v0, "X-SNAP=\"(.+?)\""

    .line 522
    .line 523
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p0:Ljava/util/regex/Pattern;

    .line 528
    .line 529
    const-string v0, "X-RESTRICT=\"(.+?)\""

    .line 530
    .line 531
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q0:Ljava/util/regex/Pattern;

    .line 536
    .line 537
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 538
    .line 539
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r0:Ljava/util/regex/Pattern;

    .line 544
    .line 545
    const-string v0, "\\b(X-[A-Z0-9-]+)="

    .line 546
    .line 547
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s0:Ljava/util/regex/Pattern;

    .line 552
    .line 553
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->n:Lio/bidmachine/media3/exoplayer/hls/playlist/d;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/d;Lio/bidmachine/media3/exoplayer/hls/playlist/c;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/playlist/d;Lio/bidmachine/media3/exoplayer/hls/playlist/c;)V
    .locals 0
    .param p2    # Lio/bidmachine/media3/exoplayer/hls/playlist/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a:Lio/bidmachine/media3/exoplayer/hls/playlist/d;

    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/c;

    return-void
.end method

.method private static A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "Couldn\'t match "

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " in "

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/ParserException;->e(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    throw p0
.end method

.method private static B(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Ljava/math/BigDecimal;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/math/BigDecimal;

    .line 15
    .line 16
    const-wide/32 v0, 0xf4240

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    return-wide p0
.end method

.method private static C(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r0:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method private static D(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    const/4 v0, -0x1

    .line 2
    if-eq p2, v0, :cond_1

    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-static {p2}, Lcn/m0;->I0(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return p2
.end method

.method private static a(Ljava/io/BufferedReader;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xef

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0xbb

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0xbf

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    return v2

    .line 33
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 34
    invoke-static {p0, v1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D(Ljava/io/BufferedReader;ZI)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    move v1, v2

    .line 39
    :goto_2
    const/4 v3, 0x7

    .line 40
    if-ge v1, v3, :cond_4

    .line 41
    .line 42
    const-string v3, "#EXTM3U"

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eq v0, v3, :cond_3

    .line 49
    .line 50
    return v2

    .line 51
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    invoke-static {p0, v2, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D(Ljava/io/BufferedReader;ZI)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {p0}, Lcn/m0;->I0(I)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "=("

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, "NO"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "|"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, "YES"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, ")"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method private static c(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Lio/bidmachine/media3/common/DrmInitData;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    .line 2
    new-array v0, v0, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->b([B)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lio/bidmachine/media3/common/DrmInitData;

    .line 21
    .line 22
    invoke-direct {p1, p0, v0}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    if-eqz p3, :cond_1

    .line 6
    .line 7
    return-object p3

    .line 8
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static e(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 13
    .line 14
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static f(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 13
    .line 14
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static g(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 13
    .line 14
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p2}, Lzm/u;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p1, 0x1

    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    return p1

    .line 13
    :cond_1
    if-eqz p0, :cond_7

    .line 14
    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const-string p2, "PQ"

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    const-string p2, "db1p"

    .line 27
    .line 28
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_5

    .line 33
    .line 34
    :cond_3
    const-string p2, "SDR"

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_4

    .line 41
    .line 42
    const-string p2, "db2g"

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_5

    .line 49
    .line 50
    :cond_4
    const-string p2, "HLG"

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_6

    .line 57
    .line 58
    const-string p0, "db4"

    .line 59
    .line 60
    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_6

    .line 65
    .line 66
    :cond_5
    return v0

    .line 67
    :cond_6
    return p1

    .line 68
    :cond_7
    :goto_0
    return v0
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/exoplayer/hls/playlist/c$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/c$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "="

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v1, v0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/lit8 v2, v1, 0x1

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-ne v0, v2, :cond_0

    .line 35
    .line 36
    move v0, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x2

    .line 39
    :goto_0
    add-int/2addr v0, v1

    .line 40
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "\""

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "=\"(.+?)\""

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p0, v0, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance p2, Lio/bidmachine/media3/exoplayer/hls/playlist/c$b;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-direct {p2, p1, p0, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    return-object p2

    .line 84
    :cond_1
    const-string v1, "0x"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    const-string v1, "0X"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, "=([\\d\\.]+)\\b"

    .line 110
    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c$b;

    .line 123
    .line 124
    invoke-static {p0, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    .line 125
    .line 126
    .line 127
    move-result-wide v1

    .line 128
    invoke-direct {v0, p1, v1, v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$b;-><init>(Ljava/lang/String;D)V

    .line 129
    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, "=(0[xX][A-F0-9]+)"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {p0, v0, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    new-instance p2, Lio/bidmachine/media3/exoplayer/hls/playlist/c$b;

    .line 158
    .line 159
    invoke-direct {p2, p1, p0, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    return-object p2
.end method

.method private static k(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method private static l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->M:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    invoke-static {p0, v0, v1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x2c

    .line 17
    .line 18
    const-string v5, "video/mp4"

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sget-object p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    .line 23
    .line 24
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 29
    .line 30
    sget-object p2, Lzm/f;->d:Ljava/util/UUID;

    .line 31
    .line 32
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {p1, p2, v5, p0}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    const-string v2, "com.widevine"

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    new-instance p1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 57
    .line 58
    sget-object p2, Lzm/f;->d:Ljava/util/UUID;

    .line 59
    .line 60
    const-string v0, "hls"

    .line 61
    .line 62
    invoke-static {p0}, Lcn/m0;->u0(Ljava/lang/String;)[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {p1, p2, v0, p0}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 67
    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    sget-object p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    .line 85
    .line 86
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    sget-object p1, Lzm/f;->e:Ljava/util/UUID;

    .line 103
    .line 104
    invoke-static {p1, p0}, Lvo/p;->a(Ljava/util/UUID;[B)[B

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    new-instance p2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 109
    .line 110
    invoke-direct {p2, p1, v5, p0}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 111
    .line 112
    .line 113
    return-object p2

    .line 114
    :cond_2
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SAMPLE-AES-CENC"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "SAMPLE-AES-CTR"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "cbcs"

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const-string p0, "cenc"

    .line 22
    .line 23
    :goto_1
    return-object p0
.end method

.method private static n(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static o(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method private static p(Lio/bidmachine/media3/exoplayer/hls/playlist/d;Lio/bidmachine/media3/exoplayer/hls/playlist/c;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/c;
    .locals 117
    .param p1    # Lio/bidmachine/media3/exoplayer/hls/playlist/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v4, v0, Lnn/d;->c:Z

    .line 2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v9, Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v24}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;-><init>(JZJJZ)V

    .line 10
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    const/4 v12, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v18, 0x0

    .line 11
    const-string v3, ""

    move-object/from16 v23, v3

    move/from16 v38, v4

    move-object/from16 v59, v9

    move v4, v12

    move/from16 v26, v4

    move/from16 v29, v26

    move/from16 v30, v29

    move/from16 v39, v30

    move/from16 v57, v39

    move/from16 v83, v57

    move/from16 v88, v83

    move-wide/from16 v24, v16

    move-wide/from16 v34, v24

    move-wide/from16 v36, v34

    move-wide/from16 v27, v18

    move-wide/from16 v31, v27

    move-wide/from16 v41, v31

    move-wide/from16 v53, v41

    move-wide/from16 v84, v53

    move-wide/from16 v86, v84

    move-wide/from16 v90, v86

    move-wide/from16 v92, v90

    move-object/from16 v44, v23

    const/16 v33, 0x1

    const/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v78, 0x0

    const-wide/16 v79, -0x1

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v89, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    .line 12
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->a()Z

    move-result v45

    if-eqz v45, :cond_60

    .line 13
    invoke-virtual/range {p2 .. p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 14
    const-string v3, "#EXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    const-string v3, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    sget-object v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t:Ljava/util/regex/Pattern;

    invoke-static {v2, v3, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 18
    const-string v3, "VOD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    .line 19
    :cond_2
    const-string v3, "EVENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 20
    :cond_3
    const-string v3, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v88, 0x1

    goto :goto_0

    .line 21
    :cond_4
    const-string v3, "#EXT-X-START"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-wide v45, 0x412e848000000000L    # 1000000.0

    if-eqz v3, :cond_5

    .line 22
    sget-object v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->F:Ljava/util/regex/Pattern;

    invoke-static {v2, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v24

    move-object v3, v14

    mul-double v13, v24, v45

    double-to-long v13, v13

    move-wide/from16 v24, v13

    .line 23
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b0:Ljava/util/regex/Pattern;

    .line 24
    invoke-static {v2, v13, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v26

    :goto_1
    move-object v14, v3

    goto :goto_0

    :cond_5
    move-object v3, v14

    .line 25
    const-string v13, "#EXT-X-SERVER-CONTROL"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 26
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z(Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;

    move-result-object v59

    goto :goto_1

    .line 27
    :cond_6
    const-string v13, "#EXT-X-PART-INF"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 28
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r:Ljava/util/regex/Pattern;

    invoke-static {v2, v13}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v13

    mul-double v13, v13, v45

    double-to-long v13, v13

    move-wide/from16 v36, v13

    goto :goto_1

    .line 29
    :cond_7
    const-string v13, "#EXT-X-MAP"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "@"

    if-eqz v13, :cond_d

    .line 30
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v13, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v46

    .line 31
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->H:Ljava/util/regex/Pattern;

    invoke-static {v2, v13, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 32
    invoke-static {v2, v14}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 33
    aget-object v13, v2, v12

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v79

    .line 34
    array-length v13, v2

    const/4 v14, 0x1

    if-le v13, v14, :cond_8

    .line 35
    aget-object v2, v2, v14

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    :cond_8
    const-wide/16 v13, -0x1

    cmp-long v2, v79, v13

    if-nez v2, :cond_9

    move-wide/from16 v41, v18

    :cond_9
    move-object/from16 v13, v78

    if-eqz v13, :cond_a

    if-eqz v81, :cond_b

    :cond_a
    const/4 v14, 0x0

    goto :goto_2

    .line 36
    :cond_b
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    const/4 v14, 0x0

    invoke-static {v0, v14}, Lio/bidmachine/media3/common/ParserException;->e(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 37
    :goto_2
    new-instance v89, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    move-object/from16 v45, v89

    move-wide/from16 v47, v41

    move-wide/from16 v49, v79

    move-object/from16 v51, v13

    move-object/from16 v52, v81

    invoke-direct/range {v45 .. v52}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_c

    add-long v41, v41, v79

    :cond_c
    move-object v14, v3

    move-object/from16 v78, v13

    const-wide/16 v79, -0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v13, v78

    move-object/from16 v94, v81

    const/16 v22, 0x0

    .line 38
    const-string v12, "#EXT-X-TARGETDURATION"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 39
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    move-object/from16 v81, v15

    int-to-long v14, v2

    const-wide/32 v34, 0xf4240

    mul-long v34, v34, v14

    :goto_3
    move-object v14, v3

    move-object/from16 v78, v13

    move-object/from16 v15, v81

    :goto_4
    move-object/from16 v81, v94

    :goto_5
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v81, v15

    .line 40
    const-string v12, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 41
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v86

    move-object v14, v3

    move-object/from16 v78, v13

    move-object/from16 v15, v81

    move-wide/from16 v31, v86

    goto :goto_4

    .line 42
    :cond_f
    const-string v12, "#EXT-X-VERSION"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 43
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v33

    goto :goto_3

    .line 44
    :cond_10
    const-string v12, "#EXT-X-DEFINE"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 45
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d0:Ljava/util/regex/Pattern;

    invoke-static {v2, v12, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 46
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->l:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 47
    invoke-virtual {v5, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 48
    :cond_11
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    .line 49
    invoke-static {v2, v12, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c0:Ljava/util/regex/Pattern;

    .line 50
    invoke-static {v2, v14, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v5, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_6
    move-object v2, v3

    move-object/from16 v60, v8

    move-object v14, v9

    move-object/from16 v95, v10

    move-object/from16 v3, v81

    move-object/from16 v0, v82

    move-wide/from16 v45, v86

    move-object/from16 v10, v94

    move/from16 v82, v4

    :goto_7
    move-object/from16 v86, v7

    goto/16 :goto_34

    .line 52
    :cond_13
    const-string v12, "#EXTINF"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 53
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v90

    .line 54
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C:Ljava/util/regex/Pattern;

    move-object/from16 v15, v23

    invoke-static {v2, v12, v15, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_3

    :cond_14
    move-object/from16 v15, v23

    .line 55
    const-string v12, "#EXT-X-SKIP"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-wide/16 v47, 0x1

    if-eqz v12, :cond_1c

    .line 56
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    if-eqz v1, :cond_15

    .line 57
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v12, 0x1

    goto :goto_8

    :cond_15
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Lcn/a;->g(Z)V

    .line 58
    invoke-static/range {p1 .. p1}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/bidmachine/media3/exoplayer/hls/playlist/c;

    move-object/from16 v23, v15

    iget-wide v14, v12, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->k:J

    sub-long v14, v31, v14

    long-to-int v12, v14

    add-int/2addr v2, v12

    if-ltz v12, :cond_1b

    .line 59
    iget-object v14, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-gt v2, v14, :cond_1b

    move-wide/from16 v14, v84

    :goto_9
    if-ge v12, v2, :cond_1a

    .line 60
    iget-object v13, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    move-object/from16 v58, v9

    move-object/from16 v95, v10

    .line 61
    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->k:J

    cmp-long v9, v31, v9

    if-eqz v9, :cond_16

    .line 62
    iget v9, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->j:I

    sub-int v9, v9, v30

    iget v10, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->d:I

    add-int/2addr v9, v10

    .line 63
    invoke-virtual {v13, v14, v15, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;->b(JI)Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    move-result-object v13

    .line 64
    :cond_16
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-wide v9, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->c:J

    add-long/2addr v14, v9

    .line 66
    iget-wide v9, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->j:J

    const-wide/16 v45, -0x1

    cmp-long v43, v9, v45

    if-eqz v43, :cond_17

    .line 67
    iget-wide v0, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->i:J

    add-long v41, v0, v9

    .line 68
    :cond_17
    iget v0, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->d:I

    .line 69
    iget-object v1, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    .line 70
    iget-object v9, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->f:Lio/bidmachine/media3/common/DrmInitData;

    .line 71
    iget-object v10, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->g:Ljava/lang/String;

    move/from16 v43, v0

    .line 72
    iget-object v0, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->h:Ljava/lang/String;

    move-object/from16 v45, v1

    if-eqz v0, :cond_18

    .line 73
    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 74
    :cond_18
    iget-object v0, v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->h:Ljava/lang/String;

    move-object/from16 v94, v0

    :cond_19
    add-long v86, v86, v47

    const/4 v0, 0x1

    add-int/2addr v12, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v10

    move-wide/from16 v53, v14

    move/from16 v83, v43

    move-object/from16 v89, v45

    move-object/from16 v10, v95

    move-object/from16 v43, v9

    move-object/from16 v9, v58

    goto :goto_9

    :cond_1a
    move-object/from16 v58, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v78, v13

    move-wide/from16 v84, v14

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 75
    :cond_1b
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v58, v9

    move-object/from16 v95, v10

    move-object/from16 v23, v15

    .line 76
    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 77
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->K:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->L:Ljava/util/regex/Pattern;

    .line 79
    const-string v9, "identity"

    invoke-static {v2, v1, v9, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v10, "NONE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 81
    invoke-virtual {v11}, Ljava/util/TreeMap;->clear()V

    move-object/from16 v0, v22

    move-object v10, v0

    move-object/from16 v43, v10

    goto :goto_b

    .line 82
    :cond_1d
    sget-object v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->O:Ljava/util/regex/Pattern;

    invoke-static {v2, v10, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 83
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 84
    const-string v1, "AES-128"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 85
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_1e
    move-object/from16 v0, v22

    goto :goto_b

    :cond_1f
    move-object/from16 v9, v82

    if-nez v9, :cond_20

    .line 86
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    goto :goto_a

    :cond_20
    move-object/from16 v82, v9

    .line 87
    :goto_a
    invoke-static {v2, v1, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 88
    invoke-virtual {v11, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v43, v0

    :goto_b
    move-object/from16 v1, p1

    move-object/from16 v78, v0

    move-object v14, v3

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    const/4 v12, 0x0

    move-object/from16 v0, p0

    :goto_c
    move-object/from16 v81, v10

    move-object/from16 v10, v95

    goto/16 :goto_0

    :cond_21
    move-object/from16 v9, v82

    .line 89
    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 90
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->G:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0, v14}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v79

    .line 93
    array-length v1, v0

    const/4 v10, 0x1

    if-le v1, v10, :cond_22

    .line 94
    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v41, v0

    :cond_22
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    :goto_e
    move-object/from16 v78, v13

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    move-object/from16 v10, v95

    goto/16 :goto_5

    :cond_23
    const/4 v10, 0x1

    .line 95
    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_24

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move/from16 v29, v10

    goto :goto_e

    .line 97
    :cond_24
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    add-int/lit8 v83, v83, 0x1

    goto :goto_d

    .line 98
    :cond_25
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    cmp-long v0, v27, v18

    if-nez v0, :cond_26

    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/m0;->a1(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/m0;->S0(J)J

    move-result-wide v0

    sub-long v27, v0, v84

    goto :goto_d

    :cond_26
    :goto_f
    move-object v2, v3

    move/from16 v82, v4

    move-object/from16 v60, v8

    move-object v0, v9

    move-object/from16 v14, v58

    move-object/from16 v3, v81

    move-wide/from16 v45, v86

    move-object/from16 v10, v94

    goto/16 :goto_7

    .line 100
    :cond_27
    const-string v0, "#EXT-X-GAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move-object/from16 v78, v13

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    move-object/from16 v10, v95

    const/4 v12, 0x0

    const/16 v57, 0x1

    goto/16 :goto_0

    .line 101
    :cond_28
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move-object/from16 v78, v13

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    move-object/from16 v10, v95

    const/4 v12, 0x0

    const/16 v38, 0x1

    goto/16 :goto_0

    .line 102
    :cond_29
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move-object/from16 v78, v13

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    move-object/from16 v10, v95

    const/4 v12, 0x0

    const/16 v39, 0x1

    goto/16 :goto_0

    .line 103
    :cond_2a
    const-string v0, "#EXT-X-RENDITION-REPORT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 104
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D:Ljava/util/regex/Pattern;

    const-wide/16 v14, -0x1

    invoke-static {v2, v0, v14, v15}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v0

    .line 105
    sget-object v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->E:Ljava/util/regex/Pattern;

    const/4 v12, -0x1

    invoke-static {v2, v10, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v10

    .line 106
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v12, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, p3

    .line 107
    invoke-static {v12, v2}, Lcn/j0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 108
    new-instance v14, Lio/bidmachine/media3/exoplayer/hls/playlist/c$e;

    invoke-direct {v14, v2, v0, v1, v10}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$e;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_2b
    move-object/from16 v12, p3

    .line 109
    const-string v0, "#EXT-X-PRELOAD-HINT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v7, :cond_2c

    goto/16 :goto_f

    .line 110
    :cond_2c
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Q:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "PART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_f

    .line 112
    :cond_2d
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v61

    .line 113
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->I:Ljava/util/regex/Pattern;

    const-wide/16 v14, -0x1

    .line 114
    invoke-static {v2, v0, v14, v15}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v0

    .line 115
    sget-object v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->J:Ljava/util/regex/Pattern;

    .line 116
    invoke-static {v2, v10, v14, v15}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v73

    move-wide/from16 v14, v86

    move-object/from16 v10, v94

    .line 117
    invoke-static {v14, v15, v13, v10}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    if-nez v43, :cond_2f

    .line 118
    invoke-virtual {v11}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 119
    invoke-virtual {v11}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-wide/from16 v45, v14

    const/4 v12, 0x0

    new-array v14, v12, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-interface {v2, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 120
    new-instance v12, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {v12, v9, v2}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    if-nez v40, :cond_2e

    .line 121
    invoke-static {v9, v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v40

    :cond_2e
    move-object/from16 v43, v12

    :goto_10
    const-wide/16 v14, -0x1

    goto :goto_11

    :cond_2f
    move-wide/from16 v45, v14

    goto :goto_10

    :goto_11
    cmp-long v2, v0, v14

    if-eqz v2, :cond_30

    cmp-long v12, v73, v14

    if-eqz v12, :cond_32

    .line 122
    :cond_30
    new-instance v7, Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;

    if-eqz v2, :cond_31

    move-wide/from16 v71, v0

    goto :goto_12

    :cond_31
    move-wide/from16 v71, v18

    :goto_12
    const/16 v76, 0x0

    const/16 v77, 0x1

    const-wide/16 v63, 0x0

    const/16 v75, 0x0

    move-object/from16 v60, v7

    move-object/from16 v62, v89

    move/from16 v65, v83

    move-wide/from16 v66, v53

    move-object/from16 v68, v43

    move-object/from16 v69, v13

    .line 123
    invoke-direct/range {v60 .. v77}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;-><init>(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;JIJLio/bidmachine/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move-object/from16 v78, v13

    move-wide/from16 v86, v45

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_33
    move-wide/from16 v0, v86

    move-object/from16 v10, v94

    .line 124
    const-string v12, "#EXT-X-PART"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 125
    invoke-static {v0, v1, v13, v10}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 126
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v12, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v61

    .line 127
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p:Ljava/util/regex/Pattern;

    .line 128
    invoke-static {v2, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v47

    move-object v15, v7

    move-object v12, v8

    mul-double v7, v47, v45

    double-to-long v7, v7

    move/from16 v82, v4

    .line 129
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Z:Ljava/util/regex/Pattern;

    move-object/from16 v86, v15

    const/4 v15, 0x0

    .line 130
    invoke-static {v2, v4, v15}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v4

    if-eqz v38, :cond_34

    .line 131
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_34

    const/16 v45, 0x1

    goto :goto_13

    :cond_34
    move/from16 v45, v15

    :goto_13
    or-int v76, v4, v45

    .line 132
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a0:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v15}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v75

    .line 133
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->H:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 134
    invoke-static {v2, v14}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    aget-object v4, v2, v15

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 136
    array-length v4, v2

    move-wide/from16 v45, v14

    const/4 v14, 0x1

    if-le v4, v14, :cond_35

    .line 137
    aget-object v2, v2, v14

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v92

    :cond_35
    const-wide/16 v14, -0x1

    goto :goto_14

    :cond_36
    const-wide/16 v14, -0x1

    const-wide/16 v45, -0x1

    :goto_14
    cmp-long v2, v45, v14

    if-nez v2, :cond_37

    move-wide/from16 v92, v18

    :cond_37
    if-nez v43, :cond_39

    .line 138
    invoke-virtual {v11}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 139
    invoke-virtual {v11}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v14, 0x0

    new-array v15, v14, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-interface {v4, v15}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 140
    new-instance v14, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {v14, v9, v4}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    if-nez v40, :cond_38

    .line 141
    invoke-static {v9, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v40

    :cond_38
    move-object/from16 v43, v14

    .line 142
    :cond_39
    new-instance v4, Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;

    move-object/from16 v60, v4

    const/16 v77, 0x0

    move-object/from16 v62, v89

    move-wide/from16 v63, v7

    move/from16 v65, v83

    move-wide/from16 v66, v53

    move-object/from16 v68, v43

    move-object/from16 v69, v13

    move-wide/from16 v71, v92

    move-wide/from16 v73, v45

    invoke-direct/range {v60 .. v77}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;-><init>(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;JIJLio/bidmachine/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v14, v58

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v53, v53, v7

    if-eqz v2, :cond_3a

    add-long v92, v92, v45

    :cond_3a
    move-object v8, v12

    move-object/from16 v78, v13

    move-object/from16 v15, v81

    move/from16 v4, v82

    move-object/from16 v7, v86

    const/4 v12, 0x0

    move-wide/from16 v86, v0

    move-object/from16 v82, v9

    move-object/from16 v81, v10

    move-object v9, v14

    move-object/from16 v10, v95

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_3b
    move/from16 v82, v4

    move-object/from16 v86, v7

    move-object v12, v8

    move-object/from16 v14, v58

    .line 143
    const-string v4, "#EXT-X-DATERANGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f0:Ljava/util/regex/Pattern;

    move-object/from16 v7, v23

    .line 144
    invoke-static {v2, v4, v7, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "com.apple.hls.interstitial"

    .line 145
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 146
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e0:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v97

    .line 147
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l0:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 148
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v98, v4

    goto :goto_15

    :cond_3c
    move-object/from16 v98, v22

    .line 149
    :goto_15
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m0:Ljava/util/regex/Pattern;

    .line 150
    invoke-static {v2, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 151
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v99, v4

    goto :goto_16

    :cond_3d
    move-object/from16 v99, v22

    .line 152
    :goto_16
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g0:Ljava/util/regex/Pattern;

    .line 153
    invoke-static {v2, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/m0;->a1(Ljava/lang/String;)J

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Lcn/m0;->S0(J)J

    move-result-wide v100

    .line 154
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i0:Ljava/util/regex/Pattern;

    .line 155
    invoke-static {v2, v4, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 156
    invoke-static {v4}, Lcn/m0;->a1(Ljava/lang/String;)J

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Lcn/m0;->S0(J)J

    move-result-wide v47

    move-wide/from16 v102, v47

    goto :goto_17

    :cond_3e
    move-wide/from16 v102, v16

    .line 157
    :goto_17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    sget-object v8, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h0:Ljava/util/regex/Pattern;

    invoke-static {v2, v8, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 159
    const-string v15, ","

    if-eqz v8, :cond_42

    .line 160
    invoke-static {v8, v15}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v23, v7

    .line 161
    array-length v7, v8

    move-object/from16 v60, v12

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v7, :cond_43

    aget-object v47, v8, v12

    move/from16 v48, v7

    .line 162
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v47

    sparse-switch v47, :sswitch_data_0

    move-object/from16 v47, v8

    :goto_19
    const/4 v8, -0x1

    goto :goto_1b

    :sswitch_0
    move-object/from16 v47, v8

    const-string v8, "POST"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    goto :goto_1a

    :cond_3f
    const/4 v8, 0x2

    goto :goto_1b

    :sswitch_1
    move-object/from16 v47, v8

    const-string v8, "ONCE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    goto :goto_1a

    :cond_40
    const/4 v8, 0x1

    goto :goto_1b

    :sswitch_2
    move-object/from16 v47, v8

    const-string v8, "PRE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    :goto_1a
    goto :goto_19

    :cond_41
    const/4 v8, 0x0

    :goto_1b
    packed-switch v8, :pswitch_data_0

    :goto_1c
    const/4 v7, 0x1

    goto :goto_1d

    .line 164
    :pswitch_0
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :goto_1d
    add-int/2addr v12, v7

    move-object/from16 v8, v47

    move/from16 v7, v48

    goto :goto_18

    :cond_42
    move-object/from16 v23, v7

    move-object/from16 v60, v12

    .line 165
    :cond_43
    sget-object v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q:Ljava/util/regex/Pattern;

    move-object v12, v9

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-static {v2, v7, v8, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v47

    const-wide/16 v49, 0x0

    cmpl-double v7, v47, v49

    if-ltz v7, :cond_44

    mul-double v8, v47, v45

    double-to-long v7, v8

    move-wide/from16 v104, v7

    goto :goto_1e

    :cond_44
    move-wide/from16 v104, v16

    .line 166
    :goto_1e
    sget-object v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j0:Ljava/util/regex/Pattern;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-static {v2, v7, v8, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v47

    cmpl-double v7, v47, v49

    if-ltz v7, :cond_45

    mul-double v7, v47, v45

    double-to-long v7, v7

    move-wide/from16 v106, v7

    goto :goto_1f

    :cond_45
    move-wide/from16 v106, v16

    .line 167
    :goto_1f
    sget-object v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k0:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v109

    .line 168
    sget-object v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n0:Ljava/util/regex/Pattern;

    const-wide/16 v8, 0x1

    .line 169
    invoke-static {v2, v7, v8, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v47

    cmpl-double v7, v47, v8

    if-eqz v7, :cond_46

    mul-double v7, v47, v45

    double-to-long v7, v7

    move-wide/from16 v110, v7

    goto :goto_20

    :cond_46
    move-wide/from16 v110, v16

    .line 170
    :goto_20
    sget-object v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o0:Ljava/util/regex/Pattern;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-static {v2, v7, v8, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v7

    cmpl-double v9, v7, v49

    if-ltz v9, :cond_47

    mul-double v7, v7, v45

    double-to-long v7, v7

    move-wide/from16 v112, v7

    goto :goto_21

    :cond_47
    move-wide/from16 v112, v16

    .line 171
    :goto_21
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 172
    sget-object v8, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p0:Ljava/util/regex/Pattern;

    invoke-static {v2, v8, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_49

    .line 173
    invoke-static {v8, v15}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 174
    array-length v9, v8

    move-object/from16 v55, v12

    const/4 v12, 0x0

    :goto_22
    if-ge v12, v9, :cond_4a

    aget-object v45, v8, v12

    move-object/from16 v46, v8

    .line 175
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move/from16 v45, v9

    const-string v9, "IN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    const-string v9, "OUT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    :goto_23
    const/4 v8, 0x1

    goto :goto_24

    .line 177
    :cond_48
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :goto_24
    add-int/2addr v12, v8

    move/from16 v9, v45

    move-object/from16 v8, v46

    goto :goto_22

    :cond_49
    move-object/from16 v55, v12

    .line 178
    :cond_4a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 179
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q0:Ljava/util/regex/Pattern;

    .line 180
    invoke-static {v2, v9, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4c

    .line 181
    invoke-static {v9, v15}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 182
    array-length v12, v9

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v12, :cond_4c

    aget-object v45, v9, v15

    move-object/from16 v46, v9

    .line 183
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move/from16 v45, v12

    const-string v12, "JUMP"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4b

    const-string v12, "SKIP"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4b

    :goto_26
    const/4 v9, 0x1

    goto :goto_27

    .line 185
    :cond_4b
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :goto_27
    add-int/2addr v15, v9

    move/from16 v12, v45

    move-object/from16 v9, v46

    goto :goto_25

    .line 186
    :cond_4c
    new-instance v9, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v9}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    const/16 v12, 0x11

    .line 187
    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s0:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 189
    :goto_28
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_53

    .line 190
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    .line 191
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v45

    sparse-switch v45, :sswitch_data_1

    move-object/from16 v45, v12

    :goto_29
    const/4 v12, -0x1

    goto :goto_2b

    :sswitch_3
    move-object/from16 v45, v12

    const-string v12, "X-ASSET-URI="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4d

    goto :goto_2a

    :cond_4d
    const/4 v12, 0x5

    goto :goto_2b

    :sswitch_4
    move-object/from16 v45, v12

    const-string v12, "X-RESUME-OFFSET="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4e

    goto :goto_2a

    :cond_4e
    const/4 v12, 0x4

    goto :goto_2b

    :sswitch_5
    move-object/from16 v45, v12

    const-string v12, "X-RESTRICT="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4f

    goto :goto_2a

    :cond_4f
    const/4 v12, 0x3

    goto :goto_2b

    :sswitch_6
    move-object/from16 v45, v12

    const-string v12, "X-ASSET-LIST="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_50

    goto :goto_2a

    :cond_50
    const/4 v12, 0x2

    goto :goto_2b

    :sswitch_7
    move-object/from16 v45, v12

    const-string v12, "X-PLAYOUT-LIMIT="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_51

    goto :goto_2a

    :cond_51
    const/4 v12, 0x1

    goto :goto_2b

    :sswitch_8
    move-object/from16 v45, v12

    const-string v12, "X-SNAP="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_52

    :goto_2a
    goto :goto_29

    :cond_52
    const/4 v12, 0x0

    :goto_2b
    packed-switch v12, :pswitch_data_1

    .line 192
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v46, 0x1

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v61, v3

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 193
    invoke-static {v2, v12, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/exoplayer/hls/playlist/c$b;

    move-result-object v3

    .line 194
    invoke-virtual {v9, v3}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    goto :goto_2c

    :pswitch_1
    move-object/from16 v61, v3

    :goto_2c
    move-object/from16 v12, v45

    move-object/from16 v3, v61

    goto/16 :goto_28

    :cond_53
    move-object/from16 v61, v3

    if-nez v99, :cond_54

    if-nez v98, :cond_55

    :cond_54
    if-eqz v99, :cond_56

    if-nez v98, :cond_56

    .line 195
    :cond_55
    new-instance v2, Lio/bidmachine/media3/exoplayer/hls/playlist/c$c;

    move-object/from16 v96, v2

    .line 196
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v116

    move-object/from16 v108, v4

    move-object/from16 v114, v7

    move-object/from16 v115, v8

    invoke-direct/range {v96 .. v116}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$c;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JJJJLjava/util/List;ZJJLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v3, v81

    .line 197
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_56
    move-object/from16 v3, v81

    :cond_57
    :goto_2d
    move-wide/from16 v45, v0

    move-object/from16 v0, v55

    move-object/from16 v2, v61

    goto/16 :goto_34

    :cond_58
    move-object/from16 v61, v3

    move-object/from16 v23, v7

    :goto_2e
    move-object/from16 v55, v9

    move-object/from16 v60, v12

    move-object/from16 v3, v81

    goto :goto_2f

    :cond_59
    move-object/from16 v61, v3

    goto :goto_2e

    .line 198
    :goto_2f
    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 199
    invoke-static {v0, v1, v13, v10}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-long v0, v0, v47

    .line 200
    invoke-static {v2, v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    const-wide/16 v8, -0x1

    cmp-long v12, v79, v8

    if-nez v12, :cond_5a

    move-wide/from16 v8, v18

    goto :goto_30

    :cond_5a
    if-eqz v88, :cond_5b

    if-nez v89, :cond_5b

    if-nez v7, :cond_5b

    .line 202
    new-instance v7, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    const/16 v51, 0x0

    const/16 v52, 0x0

    const-wide/16 v47, 0x0

    move-object/from16 v45, v7

    move-object/from16 v46, v2

    move-wide/from16 v49, v41

    invoke-direct/range {v45 .. v52}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    move-wide/from16 v8, v41

    :goto_30
    if-nez v43, :cond_5c

    .line 204
    invoke-virtual {v11}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5c

    .line 205
    invoke-virtual {v11}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v15

    move-wide/from16 v62, v0

    const/4 v0, 0x0

    new-array v1, v0, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    invoke-interface {v15, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 206
    new-instance v15, Lio/bidmachine/media3/common/DrmInitData;

    move-object/from16 v0, v55

    invoke-direct {v15, v0, v1}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    if-nez v40, :cond_5d

    .line 207
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v40

    goto :goto_31

    :cond_5c
    move-wide/from16 v62, v0

    move-object/from16 v0, v55

    move-object/from16 v15, v43

    .line 208
    :cond_5d
    :goto_31
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    if-eqz v89, :cond_5e

    move-object/from16 v43, v89

    goto :goto_32

    :cond_5e
    move-object/from16 v43, v7

    :goto_32
    move-object/from16 v41, v1

    move-object/from16 v42, v2

    move-wide/from16 v45, v90

    move/from16 v47, v83

    move-wide/from16 v48, v84

    move-object/from16 v50, v15

    move-object/from16 v51, v13

    move-object/from16 v52, v4

    move-wide/from16 v53, v8

    move-wide/from16 v55, v79

    move-object/from16 v58, v14

    .line 209
    invoke-direct/range {v41 .. v58}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;-><init>(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;Ljava/lang/String;JIJLio/bidmachine/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object/from16 v2, v61

    .line 210
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v53, v84, v90

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_5f

    add-long v8, v8, v79

    :cond_5f
    move-wide/from16 v41, v8

    move-object v9, v1

    move-object v14, v2

    move-object/from16 v81, v10

    move-object/from16 v78, v13

    move-object/from16 v43, v15

    move-wide/from16 v90, v18

    move-object/from16 v44, v23

    move-wide/from16 v84, v53

    move-object/from16 v8, v60

    move/from16 v4, v82

    move-object/from16 v7, v86

    move-object/from16 v10, v95

    const/4 v12, 0x0

    const/16 v57, 0x0

    const-wide/16 v79, -0x1

    move-object/from16 v1, p1

    move-object/from16 v82, v0

    move-object v15, v3

    move-wide/from16 v86, v62

    :goto_33
    move-object/from16 v0, p0

    goto/16 :goto_0

    :goto_34
    move-object/from16 v1, p1

    move-object v15, v3

    move-object/from16 v81, v10

    move-object/from16 v78, v13

    move-object v9, v14

    move-object/from16 v8, v60

    move/from16 v4, v82

    move-object/from16 v7, v86

    move-object/from16 v10, v95

    const/4 v12, 0x0

    move-object/from16 v82, v0

    move-object v14, v2

    move-wide/from16 v86, v45

    goto :goto_33

    :cond_60
    move/from16 v82, v4

    move-object/from16 v86, v7

    move-object/from16 v60, v8

    move-object/from16 v95, v10

    move-object v2, v14

    move-object v3, v15

    move-object v14, v9

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 213
    :goto_35
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_64

    move-object/from16 v4, v60

    .line 214
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/hls/playlist/c$e;

    .line 215
    iget-wide v6, v5, Lio/bidmachine/media3/exoplayer/hls/playlist/c$e;->b:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_61

    .line 216
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    add-long v6, v31, v6

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v6, v10

    .line 217
    :cond_61
    iget v10, v5, Lio/bidmachine/media3/exoplayer/hls/playlist/c$e;->c:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_63

    cmp-long v12, v36, v16

    if-eqz v12, :cond_63

    .line 218
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-static {v2}, Lcom/google/common/collect/l;->d(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    iget-object v10, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    goto :goto_36

    :cond_62
    move-object v10, v14

    .line 219
    :goto_36
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    goto :goto_37

    :cond_63
    const/4 v12, 0x1

    .line 220
    :goto_37
    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/hls/playlist/c$e;->a:Landroid/net/Uri;

    new-instance v13, Lio/bidmachine/media3/exoplayer/hls/playlist/c$e;

    invoke-direct {v13, v5, v6, v7, v10}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$e;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v12

    move-object/from16 v60, v4

    goto :goto_35

    :cond_64
    const/4 v12, 0x1

    if-eqz v86, :cond_65

    move-object/from16 v7, v86

    .line 221
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_65
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;

    cmp-long v4, v27, v18

    if-eqz v4, :cond_66

    move/from16 v78, v12

    goto :goto_38

    :cond_66
    const/16 v78, 0x0

    :goto_38
    move-object v7, v1

    move/from16 v8, v82

    move-object/from16 v58, v14

    move-object/from16 v9, p3

    move-object/from16 v10, v95

    move-wide/from16 v11, v24

    move/from16 v13, v26

    move-wide/from16 v14, v27

    move/from16 v16, v29

    move/from16 v17, v30

    move-wide/from16 v18, v31

    move/from16 v20, v33

    move-wide/from16 v21, v34

    move-wide/from16 v23, v36

    move/from16 v25, v38

    move/from16 v26, v39

    move/from16 v27, v78

    move-object/from16 v28, v40

    move-object/from16 v29, v2

    move-object/from16 v30, v58

    move-object/from16 v31, v59

    move-object/from16 v32, v0

    move-object/from16 v33, v3

    invoke-direct/range {v7 .. v33}, Lio/bidmachine/media3/exoplayer/hls/playlist/c;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLio/bidmachine/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;Ljava/util/Map;Ljava/util/List;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13683 -> :sswitch_2
        0x251681 -> :sswitch_1
        0x2590a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7f5b7c02 -> :sswitch_8
        -0x8e0f436 -> :sswitch_7
        0x17ad642d -> :sswitch_6
        0x57c501cc -> :sswitch_5
        0x6837ce7f -> :sswitch_4
        0x6c2295e3 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static q(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/d;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    new-instance v5, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v11, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v7, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v8, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v9, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v10, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v12, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v13, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v14, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->a()Z

    .line 58
    .line 59
    .line 60
    move-result v18

    .line 61
    const-string v0, "application/x-mpegURL"

    .line 62
    .line 63
    const-string v3, "/"

    .line 64
    .line 65
    if-eqz v18, :cond_13

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->b()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v15, "#EXT"

    .line 72
    .line 73
    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    if-eqz v15, :cond_0

    .line 78
    .line 79
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_0
    const-string v15, "#EXT-X-I-FRAME-STREAM-INF"

    .line 83
    .line 84
    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    const-string v2, "#EXT-X-DEFINE"

    .line 89
    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_1

    .line 95
    .line 96
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    .line 97
    .line 98
    invoke-static {v4, v0, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget-object v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c0:Ljava/util/regex/Pattern;

    .line 103
    .line 104
    invoke-static {v4, v2, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    const-string v2, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 113
    .line 114
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    move-object v1, v5

    .line 121
    move-object/from16 v32, v7

    .line 122
    .line 123
    move-object/from16 v31, v8

    .line 124
    .line 125
    move-object/from16 v30, v9

    .line 126
    .line 127
    move-object/from16 v28, v10

    .line 128
    .line 129
    move-object/from16 v33, v12

    .line 130
    .line 131
    move-object/from16 v20, v13

    .line 132
    .line 133
    move-object/from16 v29, v14

    .line 134
    .line 135
    const/16 v16, 0x1

    .line 136
    .line 137
    goto/16 :goto_a

    .line 138
    .line 139
    :cond_2
    const-string v2, "#EXT-X-MEDIA"

    .line 140
    .line 141
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    const-string v2, "#EXT-X-SESSION-KEY"

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_4

    .line 158
    .line 159
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->L:Ljava/util/regex/Pattern;

    .line 160
    .line 161
    const-string v2, "identity"

    .line 162
    .line 163
    invoke-static {v4, v0, v2, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v4, v0, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_5

    .line 172
    .line 173
    sget-object v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->K:Ljava/util/regex/Pattern;

    .line 174
    .line 175
    invoke-static {v4, v2, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    new-instance v3, Lio/bidmachine/media3/common/DrmInitData;

    .line 184
    .line 185
    filled-new-array {v0}, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-direct {v3, v2, v0}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_4
    const-string v2, "#EXT-X-STREAM-INF"

    .line 197
    .line 198
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-nez v2, :cond_6

    .line 203
    .line 204
    if-eqz v15, :cond_5

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_5
    :goto_1
    move-object v1, v5

    .line 208
    move-object/from16 v32, v7

    .line 209
    .line 210
    move-object/from16 v31, v8

    .line 211
    .line 212
    move-object/from16 v30, v9

    .line 213
    .line 214
    move-object/from16 v28, v10

    .line 215
    .line 216
    move-object/from16 v33, v12

    .line 217
    .line 218
    move-object/from16 v20, v13

    .line 219
    .line 220
    move-object/from16 v29, v14

    .line 221
    .line 222
    goto/16 :goto_a

    .line 223
    .line 224
    :cond_6
    :goto_2
    const-string v2, "CLOSED-CAPTIONS=NONE"

    .line 225
    .line 226
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    or-int v17, v17, v2

    .line 231
    .line 232
    if-eqz v15, :cond_7

    .line 233
    .line 234
    const/16 v2, 0x4000

    .line 235
    .line 236
    move-object/from16 v20, v13

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_7
    move-object/from16 v20, v13

    .line 240
    .line 241
    const/4 v2, 0x0

    .line 242
    :goto_3
    sget-object v13, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h:Ljava/util/regex/Pattern;

    .line 243
    .line 244
    invoke-static {v4, v13}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    move-object/from16 v28, v10

    .line 249
    .line 250
    sget-object v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c:Ljava/util/regex/Pattern;

    .line 251
    .line 252
    move-object/from16 v29, v14

    .line 253
    .line 254
    const/4 v14, -0x1

    .line 255
    invoke-static {v4, v10, v14}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    sget-object v14, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j:Ljava/util/regex/Pattern;

    .line 260
    .line 261
    invoke-static {v4, v14, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    move-object/from16 v30, v9

    .line 266
    .line 267
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k:Ljava/util/regex/Pattern;

    .line 268
    .line 269
    invoke-static {v4, v9, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    move-object/from16 v31, v8

    .line 274
    .line 275
    sget-object v8, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l:Ljava/util/regex/Pattern;

    .line 276
    .line 277
    invoke-static {v4, v8, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    move-object/from16 v32, v7

    .line 282
    .line 283
    const-string v7, ","

    .line 284
    .line 285
    if-eqz v8, :cond_9

    .line 286
    .line 287
    invoke-static {v8, v7}, Lcn/m0;->n1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    const/16 v19, 0x0

    .line 292
    .line 293
    aget-object v8, v8, v19

    .line 294
    .line 295
    invoke-static {v8, v3}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    aget-object v8, v3, v19

    .line 300
    .line 301
    move-object/from16 v21, v8

    .line 302
    .line 303
    array-length v8, v3

    .line 304
    move-object/from16 v33, v12

    .line 305
    .line 306
    const/4 v12, 0x1

    .line 307
    if-le v8, v12, :cond_8

    .line 308
    .line 309
    aget-object v3, v3, v12

    .line 310
    .line 311
    move-object v8, v3

    .line 312
    move-object/from16 v34, v5

    .line 313
    .line 314
    move-object/from16 v3, v21

    .line 315
    .line 316
    :goto_4
    const/4 v12, 0x2

    .line 317
    goto :goto_6

    .line 318
    :cond_8
    move-object/from16 v34, v5

    .line 319
    .line 320
    move-object/from16 v3, v21

    .line 321
    .line 322
    :goto_5
    const/4 v8, 0x0

    .line 323
    goto :goto_4

    .line 324
    :cond_9
    move-object/from16 v33, v12

    .line 325
    .line 326
    move-object/from16 v34, v5

    .line 327
    .line 328
    const/4 v3, 0x0

    .line 329
    goto :goto_5

    .line 330
    :goto_6
    invoke-static {v9, v12}, Lcn/m0;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-static {v14, v5, v3, v8}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    if-eqz v8, :cond_c

    .line 339
    .line 340
    if-eqz v3, :cond_a

    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_a
    move-object v3, v5

    .line 344
    :goto_7
    invoke-static {v9, v12}, Lcn/m0;->T(Ljava/lang/String;I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    if-eqz v5, :cond_b

    .line 349
    .line 350
    new-instance v8, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    :cond_b
    move-object v9, v3

    .line 369
    :cond_c
    sget-object v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m:Ljava/util/regex/Pattern;

    .line 370
    .line 371
    invoke-static {v4, v3, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    if-eqz v3, :cond_d

    .line 376
    .line 377
    const-string v5, "x"

    .line 378
    .line 379
    invoke-static {v3, v5}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    const/4 v5, 0x0

    .line 384
    aget-object v7, v3, v5

    .line 385
    .line 386
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    const/4 v7, 0x1

    .line 391
    aget-object v3, v3, v7

    .line 392
    .line 393
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    if-lez v5, :cond_d

    .line 398
    .line 399
    if-gtz v3, :cond_e

    .line 400
    .line 401
    :cond_d
    const/4 v3, -0x1

    .line 402
    const/4 v5, -0x1

    .line 403
    :cond_e
    sget-object v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n:Ljava/util/regex/Pattern;

    .line 404
    .line 405
    invoke-static {v4, v7, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    if-eqz v7, :cond_f

    .line 410
    .line 411
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    goto :goto_8

    .line 416
    :cond_f
    const/high16 v7, -0x40800000    # -1.0f

    .line 417
    .line 418
    :goto_8
    sget-object v8, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d:Ljava/util/regex/Pattern;

    .line 419
    .line 420
    invoke-static {v4, v8, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v8

    .line 424
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e:Ljava/util/regex/Pattern;

    .line 425
    .line 426
    invoke-static {v4, v12, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v12

    .line 430
    sget-object v14, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f:Ljava/util/regex/Pattern;

    .line 431
    .line 432
    invoke-static {v4, v14, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v14

    .line 436
    move-object/from16 v35, v14

    .line 437
    .line 438
    sget-object v14, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g:Ljava/util/regex/Pattern;

    .line 439
    .line 440
    invoke-static {v4, v14, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v14

    .line 444
    if-eqz v15, :cond_10

    .line 445
    .line 446
    sget-object v15, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    .line 447
    .line 448
    invoke-static {v4, v15, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    invoke-static {v1, v4}, Lcn/j0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    goto :goto_9

    .line 457
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->a()Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-eqz v4, :cond_12

    .line 462
    .line 463
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->b()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-static {v4, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-static {v1, v4}, Lcn/j0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    :goto_9
    new-instance v15, Lio/bidmachine/media3/common/a$b;

    .line 476
    .line 477
    invoke-direct {v15}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    invoke-virtual {v15, v1}, Lio/bidmachine/media3/common/a$b;->e0(I)Lio/bidmachine/media3/common/a$b;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/a$b;->U(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/a$b;->Q(I)Lio/bidmachine/media3/common/a$b;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v0, v13}, Lio/bidmachine/media3/common/a$b;->p0(I)Lio/bidmachine/media3/common/a$b;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/a$b;->B0(I)Lio/bidmachine/media3/common/a$b;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->d0(I)Lio/bidmachine/media3/common/a$b;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/a$b;->b0(F)Lio/bidmachine/media3/common/a$b;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/a$b;->s0(I)Lio/bidmachine/media3/common/a$b;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 521
    .line 522
    .line 523
    move-result-object v23

    .line 524
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 525
    .line 526
    move-object/from16 v21, v0

    .line 527
    .line 528
    move-object/from16 v22, v4

    .line 529
    .line 530
    move-object/from16 v24, v8

    .line 531
    .line 532
    move-object/from16 v25, v12

    .line 533
    .line 534
    move-object/from16 v26, v35

    .line 535
    .line 536
    move-object/from16 v27, v14

    .line 537
    .line 538
    invoke-direct/range {v21 .. v27}, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-object/from16 v1, v34

    .line 545
    .line 546
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    check-cast v0, Ljava/util/ArrayList;

    .line 551
    .line 552
    if-nez v0, :cond_11

    .line 553
    .line 554
    new-instance v0, Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    :cond_11
    new-instance v2, Lmn/h$a;

    .line 563
    .line 564
    move-object/from16 v21, v2

    .line 565
    .line 566
    move/from16 v22, v10

    .line 567
    .line 568
    move/from16 v23, v13

    .line 569
    .line 570
    move-object/from16 v24, v8

    .line 571
    .line 572
    move-object/from16 v25, v12

    .line 573
    .line 574
    move-object/from16 v26, v35

    .line 575
    .line 576
    move-object/from16 v27, v14

    .line 577
    .line 578
    invoke-direct/range {v21 .. v27}, Lmn/h$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    :goto_a
    move-object v5, v1

    .line 585
    move-object/from16 v13, v20

    .line 586
    .line 587
    move-object/from16 v10, v28

    .line 588
    .line 589
    move-object/from16 v14, v29

    .line 590
    .line 591
    move-object/from16 v9, v30

    .line 592
    .line 593
    move-object/from16 v8, v31

    .line 594
    .line 595
    move-object/from16 v7, v32

    .line 596
    .line 597
    move-object/from16 v12, v33

    .line 598
    .line 599
    move-object/from16 v1, p1

    .line 600
    .line 601
    goto/16 :goto_0

    .line 602
    .line 603
    :cond_12
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    .line 604
    .line 605
    const/4 v1, 0x0

    .line 606
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->e(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    throw v0

    .line 611
    :cond_13
    move-object v1, v5

    .line 612
    move-object/from16 v32, v7

    .line 613
    .line 614
    move-object/from16 v31, v8

    .line 615
    .line 616
    move-object/from16 v30, v9

    .line 617
    .line 618
    move-object/from16 v28, v10

    .line 619
    .line 620
    move-object/from16 v33, v12

    .line 621
    .line 622
    move-object/from16 v20, v13

    .line 623
    .line 624
    move-object/from16 v29, v14

    .line 625
    .line 626
    new-instance v4, Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .line 630
    .line 631
    new-instance v2, Ljava/util/HashSet;

    .line 632
    .line 633
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 634
    .line 635
    .line 636
    const/4 v5, 0x0

    .line 637
    :goto_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 638
    .line 639
    .line 640
    move-result v7

    .line 641
    if-ge v5, v7, :cond_16

    .line 642
    .line 643
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    check-cast v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 648
    .line 649
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    .line 650
    .line 651
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v8

    .line 655
    if-eqz v8, :cond_15

    .line 656
    .line 657
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->b:Lio/bidmachine/media3/common/a;

    .line 658
    .line 659
    iget-object v8, v8, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    .line 660
    .line 661
    if-nez v8, :cond_14

    .line 662
    .line 663
    const/4 v8, 0x1

    .line 664
    goto :goto_c

    .line 665
    :cond_14
    const/4 v8, 0x0

    .line 666
    :goto_c
    invoke-static {v8}, Lcn/a;->g(Z)V

    .line 667
    .line 668
    .line 669
    new-instance v8, Lmn/h;

    .line 670
    .line 671
    iget-object v9, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    .line 672
    .line 673
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v9

    .line 677
    check-cast v9, Ljava/util/ArrayList;

    .line 678
    .line 679
    invoke-static {v9}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v9

    .line 683
    check-cast v9, Ljava/util/List;

    .line 684
    .line 685
    const/4 v10, 0x0

    .line 686
    invoke-direct {v8, v10, v10, v9}, Lmn/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 687
    .line 688
    .line 689
    new-instance v9, Lzm/t;

    .line 690
    .line 691
    const/4 v12, 0x1

    .line 692
    new-array v13, v12, [Lzm/t$a;

    .line 693
    .line 694
    const/4 v14, 0x0

    .line 695
    aput-object v8, v13, v14

    .line 696
    .line 697
    invoke-direct {v9, v13}, Lzm/t;-><init>([Lzm/t$a;)V

    .line 698
    .line 699
    .line 700
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->b:Lio/bidmachine/media3/common/a;

    .line 701
    .line 702
    invoke-virtual {v8}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 703
    .line 704
    .line 705
    move-result-object v8

    .line 706
    invoke-virtual {v8, v9}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 707
    .line 708
    .line 709
    move-result-object v8

    .line 710
    invoke-virtual {v8}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 711
    .line 712
    .line 713
    move-result-object v8

    .line 714
    invoke-virtual {v7, v8}, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->a(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 715
    .line 716
    .line 717
    move-result-object v7

    .line 718
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    goto :goto_d

    .line 722
    :cond_15
    const/4 v10, 0x0

    .line 723
    const/4 v12, 0x1

    .line 724
    :goto_d
    add-int/2addr v5, v12

    .line 725
    goto :goto_b

    .line 726
    :cond_16
    const/4 v10, 0x0

    .line 727
    move-object v1, v10

    .line 728
    move-object v8, v1

    .line 729
    const/4 v2, 0x0

    .line 730
    :goto_e
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    .line 731
    .line 732
    .line 733
    move-result v5

    .line 734
    if-ge v2, v5, :cond_28

    .line 735
    .line 736
    move-object/from16 v5, v33

    .line 737
    .line 738
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v7

    .line 742
    check-cast v7, Ljava/lang/String;

    .line 743
    .line 744
    sget-object v9, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->T:Ljava/util/regex/Pattern;

    .line 745
    .line 746
    invoke-static {v7, v9, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v9

    .line 750
    sget-object v12, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    .line 751
    .line 752
    invoke-static {v7, v12, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v12

    .line 756
    new-instance v13, Lio/bidmachine/media3/common/a$b;

    .line 757
    .line 758
    invoke-direct {v13}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 759
    .line 760
    .line 761
    new-instance v14, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    const-string v15, ":"

    .line 770
    .line 771
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v14

    .line 781
    invoke-virtual {v13, v14}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 782
    .line 783
    .line 784
    move-result-object v13

    .line 785
    invoke-virtual {v13, v12}, Lio/bidmachine/media3/common/a$b;->h0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 786
    .line 787
    .line 788
    move-result-object v13

    .line 789
    invoke-virtual {v13, v0}, Lio/bidmachine/media3/common/a$b;->U(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 790
    .line 791
    .line 792
    move-result-object v13

    .line 793
    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;)I

    .line 794
    .line 795
    .line 796
    move-result v14

    .line 797
    invoke-virtual {v13, v14}, Lio/bidmachine/media3/common/a$b;->w0(I)Lio/bidmachine/media3/common/a$b;

    .line 798
    .line 799
    .line 800
    move-result-object v13

    .line 801
    invoke-static {v7, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x(Ljava/lang/String;Ljava/util/Map;)I

    .line 802
    .line 803
    .line 804
    move-result v14

    .line 805
    invoke-virtual {v13, v14}, Lio/bidmachine/media3/common/a$b;->s0(I)Lio/bidmachine/media3/common/a$b;

    .line 806
    .line 807
    .line 808
    move-result-object v13

    .line 809
    sget-object v14, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->R:Ljava/util/regex/Pattern;

    .line 810
    .line 811
    invoke-static {v7, v14, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v14

    .line 815
    invoke-virtual {v13, v14}, Lio/bidmachine/media3/common/a$b;->j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 816
    .line 817
    .line 818
    move-result-object v13

    .line 819
    sget-object v14, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    .line 820
    .line 821
    invoke-static {v7, v14, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v14

    .line 825
    move-object/from16 v15, p1

    .line 826
    .line 827
    if-nez v14, :cond_17

    .line 828
    .line 829
    move-object v14, v10

    .line 830
    goto :goto_f

    .line 831
    :cond_17
    invoke-static {v15, v14}, Lcn/j0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 832
    .line 833
    .line 834
    move-result-object v14

    .line 835
    :goto_f
    new-instance v10, Lzm/t;

    .line 836
    .line 837
    move-object/from16 v21, v0

    .line 838
    .line 839
    new-instance v0, Lmn/h;

    .line 840
    .line 841
    move-object/from16 v33, v5

    .line 842
    .line 843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    invoke-direct {v0, v9, v12, v5}, Lmn/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 848
    .line 849
    .line 850
    const/4 v5, 0x1

    .line 851
    new-array v15, v5, [Lzm/t$a;

    .line 852
    .line 853
    const/4 v5, 0x0

    .line 854
    aput-object v0, v15, v5

    .line 855
    .line 856
    invoke-direct {v10, v15}, Lzm/t;-><init>([Lzm/t$a;)V

    .line 857
    .line 858
    .line 859
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->P:Ljava/util/regex/Pattern;

    .line 860
    .line 861
    invoke-static {v7, v0, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 869
    .line 870
    .line 871
    move-result v5

    .line 872
    sparse-switch v5, :sswitch_data_0

    .line 873
    .line 874
    .line 875
    :goto_10
    const/4 v0, -0x1

    .line 876
    goto :goto_11

    .line 877
    :sswitch_0
    const-string v5, "VIDEO"

    .line 878
    .line 879
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result v0

    .line 883
    if-nez v0, :cond_18

    .line 884
    .line 885
    goto :goto_10

    .line 886
    :cond_18
    const/4 v0, 0x3

    .line 887
    goto :goto_11

    .line 888
    :sswitch_1
    const-string v5, "AUDIO"

    .line 889
    .line 890
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    if-nez v0, :cond_19

    .line 895
    .line 896
    goto :goto_10

    .line 897
    :cond_19
    const/4 v0, 0x2

    .line 898
    goto :goto_11

    .line 899
    :sswitch_2
    const-string v5, "CLOSED-CAPTIONS"

    .line 900
    .line 901
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    move-result v0

    .line 905
    if-nez v0, :cond_1a

    .line 906
    .line 907
    goto :goto_10

    .line 908
    :cond_1a
    const/4 v0, 0x1

    .line 909
    goto :goto_11

    .line 910
    :sswitch_3
    const-string v5, "SUBTITLES"

    .line 911
    .line 912
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v0

    .line 916
    if-nez v0, :cond_1b

    .line 917
    .line 918
    goto :goto_10

    .line 919
    :cond_1b
    const/4 v0, 0x0

    .line 920
    :goto_11
    packed-switch v0, :pswitch_data_0

    .line 921
    .line 922
    .line 923
    :goto_12
    move-object/from16 p0, v8

    .line 924
    .line 925
    move-object/from16 v9, v30

    .line 926
    .line 927
    move-object/from16 v8, v31

    .line 928
    .line 929
    move-object/from16 v5, v32

    .line 930
    .line 931
    :goto_13
    const/4 v7, 0x2

    .line 932
    const/4 v15, 0x3

    .line 933
    const/16 v19, 0x0

    .line 934
    .line 935
    goto/16 :goto_19

    .line 936
    .line 937
    :pswitch_0
    invoke-static {v6, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    if-eqz v0, :cond_1c

    .line 942
    .line 943
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->b:Lio/bidmachine/media3/common/a;

    .line 944
    .line 945
    iget-object v5, v0, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 946
    .line 947
    const/4 v7, 0x2

    .line 948
    invoke-static {v5, v7}, Lcn/m0;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v5

    .line 952
    invoke-virtual {v13, v5}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 953
    .line 954
    .line 955
    move-result-object v7

    .line 956
    invoke-static {v5}, Lzm/u;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v5

    .line 960
    invoke-virtual {v7, v5}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 961
    .line 962
    .line 963
    move-result-object v5

    .line 964
    iget v7, v0, Lio/bidmachine/media3/common/a;->v:I

    .line 965
    .line 966
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/a$b;->B0(I)Lio/bidmachine/media3/common/a$b;

    .line 967
    .line 968
    .line 969
    move-result-object v5

    .line 970
    iget v7, v0, Lio/bidmachine/media3/common/a;->w:I

    .line 971
    .line 972
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/a$b;->d0(I)Lio/bidmachine/media3/common/a$b;

    .line 973
    .line 974
    .line 975
    move-result-object v5

    .line 976
    iget v0, v0, Lio/bidmachine/media3/common/a;->x:F

    .line 977
    .line 978
    invoke-virtual {v5, v0}, Lio/bidmachine/media3/common/a$b;->b0(F)Lio/bidmachine/media3/common/a$b;

    .line 979
    .line 980
    .line 981
    :cond_1c
    if-nez v14, :cond_1d

    .line 982
    .line 983
    goto :goto_12

    .line 984
    :cond_1d
    invoke-virtual {v13, v10}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 985
    .line 986
    .line 987
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;

    .line 988
    .line 989
    invoke-virtual {v13}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 990
    .line 991
    .line 992
    move-result-object v5

    .line 993
    invoke-direct {v0, v14, v5, v9, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    move-object/from16 v5, v32

    .line 997
    .line 998
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    .line 1000
    .line 1001
    move-object/from16 p0, v8

    .line 1002
    .line 1003
    move-object/from16 v9, v30

    .line 1004
    .line 1005
    move-object/from16 v8, v31

    .line 1006
    .line 1007
    goto :goto_13

    .line 1008
    :pswitch_1
    move-object/from16 v5, v32

    .line 1009
    .line 1010
    invoke-static {v6, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    if-eqz v0, :cond_1e

    .line 1015
    .line 1016
    iget-object v15, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->b:Lio/bidmachine/media3/common/a;

    .line 1017
    .line 1018
    iget-object v15, v15, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 1019
    .line 1020
    move-object/from16 p0, v8

    .line 1021
    .line 1022
    const/4 v8, 0x1

    .line 1023
    invoke-static {v15, v8}, Lcn/m0;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v15

    .line 1027
    invoke-virtual {v13, v15}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 1028
    .line 1029
    .line 1030
    invoke-static {v15}, Lzm/u;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v8

    .line 1034
    goto :goto_14

    .line 1035
    :cond_1e
    move-object/from16 p0, v8

    .line 1036
    .line 1037
    const/4 v8, 0x0

    .line 1038
    :goto_14
    sget-object v15, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i:Ljava/util/regex/Pattern;

    .line 1039
    .line 1040
    invoke-static {v7, v15, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v7

    .line 1044
    if-eqz v7, :cond_1f

    .line 1045
    .line 1046
    invoke-static {v7, v3}, Lcn/m0;->n1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v15

    .line 1050
    const/16 v19, 0x0

    .line 1051
    .line 1052
    aget-object v15, v15, v19

    .line 1053
    .line 1054
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1055
    .line 1056
    .line 1057
    move-result v15

    .line 1058
    invoke-virtual {v13, v15}, Lio/bidmachine/media3/common/a$b;->R(I)Lio/bidmachine/media3/common/a$b;

    .line 1059
    .line 1060
    .line 1061
    const-string v15, "audio/eac3"

    .line 1062
    .line 1063
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v15

    .line 1067
    if-eqz v15, :cond_20

    .line 1068
    .line 1069
    const-string v15, "/JOC"

    .line 1070
    .line 1071
    invoke-virtual {v7, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v7

    .line 1075
    if-eqz v7, :cond_20

    .line 1076
    .line 1077
    const-string v7, "ec+3"

    .line 1078
    .line 1079
    invoke-virtual {v13, v7}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 1080
    .line 1081
    .line 1082
    const-string v8, "audio/eac3-joc"

    .line 1083
    .line 1084
    goto :goto_15

    .line 1085
    :cond_1f
    const/16 v19, 0x0

    .line 1086
    .line 1087
    :cond_20
    :goto_15
    invoke-virtual {v13, v8}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 1088
    .line 1089
    .line 1090
    if-eqz v14, :cond_22

    .line 1091
    .line 1092
    invoke-virtual {v13, v10}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 1093
    .line 1094
    .line 1095
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;

    .line 1096
    .line 1097
    invoke-virtual {v13}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v7

    .line 1101
    invoke-direct {v0, v14, v7, v9, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    move-object/from16 v8, v31

    .line 1105
    .line 1106
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    .line 1108
    .line 1109
    :cond_21
    move-object/from16 v9, v30

    .line 1110
    .line 1111
    const/4 v7, 0x2

    .line 1112
    const/4 v15, 0x3

    .line 1113
    goto/16 :goto_19

    .line 1114
    .line 1115
    :cond_22
    move-object/from16 v8, v31

    .line 1116
    .line 1117
    if-eqz v0, :cond_21

    .line 1118
    .line 1119
    invoke-virtual {v13}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    move-object/from16 v9, v30

    .line 1124
    .line 1125
    const/4 v7, 0x2

    .line 1126
    :goto_16
    const/4 v10, 0x1

    .line 1127
    const/4 v15, 0x3

    .line 1128
    goto/16 :goto_1a

    .line 1129
    .line 1130
    :pswitch_2
    move-object/from16 p0, v8

    .line 1131
    .line 1132
    move-object/from16 v8, v31

    .line 1133
    .line 1134
    move-object/from16 v5, v32

    .line 1135
    .line 1136
    const/16 v19, 0x0

    .line 1137
    .line 1138
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->V:Ljava/util/regex/Pattern;

    .line 1139
    .line 1140
    invoke-static {v7, v0, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    const-string v7, "CC"

    .line 1145
    .line 1146
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v7

    .line 1150
    if-eqz v7, :cond_23

    .line 1151
    .line 1152
    const/4 v7, 0x2

    .line 1153
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0

    .line 1157
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1158
    .line 1159
    .line 1160
    move-result v0

    .line 1161
    const-string v9, "application/cea-608"

    .line 1162
    .line 1163
    goto :goto_17

    .line 1164
    :cond_23
    const/4 v7, 0x2

    .line 1165
    const/4 v9, 0x7

    .line 1166
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1171
    .line 1172
    .line 1173
    move-result v0

    .line 1174
    const-string v9, "application/cea-708"

    .line 1175
    .line 1176
    :goto_17
    if-nez v1, :cond_24

    .line 1177
    .line 1178
    new-instance v1, Ljava/util/ArrayList;

    .line 1179
    .line 1180
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    .line 1182
    .line 1183
    :cond_24
    invoke-virtual {v13, v9}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v9

    .line 1187
    invoke-virtual {v9, v0}, Lio/bidmachine/media3/common/a$b;->O(I)Lio/bidmachine/media3/common/a$b;

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v13}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-object/from16 v0, p0

    .line 1198
    .line 1199
    move-object/from16 v9, v30

    .line 1200
    .line 1201
    goto :goto_16

    .line 1202
    :pswitch_3
    move-object/from16 p0, v8

    .line 1203
    .line 1204
    move-object/from16 v8, v31

    .line 1205
    .line 1206
    move-object/from16 v5, v32

    .line 1207
    .line 1208
    const/4 v7, 0x2

    .line 1209
    const/16 v19, 0x0

    .line 1210
    .line 1211
    invoke-static {v6, v9}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f(Ljava/util/ArrayList;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    if-eqz v0, :cond_25

    .line 1216
    .line 1217
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->b:Lio/bidmachine/media3/common/a;

    .line 1218
    .line 1219
    iget-object v0, v0, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 1220
    .line 1221
    const/4 v15, 0x3

    .line 1222
    invoke-static {v0, v15}, Lcn/m0;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    invoke-virtual {v13, v0}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 1227
    .line 1228
    .line 1229
    invoke-static {v0}, Lzm/u;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v0

    .line 1233
    goto :goto_18

    .line 1234
    :cond_25
    const/4 v15, 0x3

    .line 1235
    const/4 v0, 0x0

    .line 1236
    :goto_18
    if-nez v0, :cond_26

    .line 1237
    .line 1238
    const-string v0, "text/vtt"

    .line 1239
    .line 1240
    :cond_26
    invoke-virtual {v13, v0}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 1245
    .line 1246
    .line 1247
    if-eqz v14, :cond_27

    .line 1248
    .line 1249
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;

    .line 1250
    .line 1251
    invoke-virtual {v13}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v10

    .line 1255
    invoke-direct {v0, v14, v10, v9, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    move-object/from16 v9, v30

    .line 1259
    .line 1260
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    .line 1262
    .line 1263
    goto :goto_19

    .line 1264
    :cond_27
    move-object/from16 v9, v30

    .line 1265
    .line 1266
    const-string v0, "HlsPlaylistParser"

    .line 1267
    .line 1268
    const-string v10, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    .line 1269
    .line 1270
    invoke-static {v0, v10}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    .line 1272
    .line 1273
    :goto_19
    move-object/from16 v0, p0

    .line 1274
    .line 1275
    const/4 v10, 0x1

    .line 1276
    :goto_1a
    add-int/2addr v2, v10

    .line 1277
    move-object/from16 v32, v5

    .line 1278
    .line 1279
    move-object/from16 v31, v8

    .line 1280
    .line 1281
    move-object/from16 v30, v9

    .line 1282
    .line 1283
    const/4 v10, 0x0

    .line 1284
    move-object v8, v0

    .line 1285
    move-object/from16 v0, v21

    .line 1286
    .line 1287
    goto/16 :goto_e

    .line 1288
    .line 1289
    :cond_28
    move-object/from16 p0, v8

    .line 1290
    .line 1291
    move-object/from16 v9, v30

    .line 1292
    .line 1293
    move-object/from16 v8, v31

    .line 1294
    .line 1295
    move-object/from16 v5, v32

    .line 1296
    .line 1297
    if-eqz v17, :cond_29

    .line 1298
    .line 1299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    move-object v10, v0

    .line 1304
    goto :goto_1b

    .line 1305
    :cond_29
    move-object v10, v1

    .line 1306
    :goto_1b
    new-instance v13, Lio/bidmachine/media3/exoplayer/hls/playlist/d;

    .line 1307
    .line 1308
    move-object v0, v13

    .line 1309
    move-object/from16 v1, p1

    .line 1310
    .line 1311
    move-object/from16 v2, v29

    .line 1312
    .line 1313
    move-object v3, v4

    .line 1314
    move-object v4, v5

    .line 1315
    move-object v5, v8

    .line 1316
    move-object v6, v9

    .line 1317
    move-object/from16 v7, v28

    .line 1318
    .line 1319
    move-object/from16 v8, p0

    .line 1320
    .line 1321
    move-object v9, v10

    .line 1322
    move/from16 v10, v16

    .line 1323
    .line 1324
    move-object/from16 v12, v20

    .line 1325
    .line 1326
    invoke-direct/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/common/a;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 1327
    .line 1328
    .line 1329
    return-object v13

    .line 1330
    nop

    .line 1331
    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "YES"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    return p2
.end method

.method private static s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_0
    return-wide p2
.end method

.method private static t(Ljava/lang/String;Ljava/util/regex/Pattern;I)I
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    return p2
.end method

.method private static u(Ljava/lang/String;Ljava/util/regex/Pattern;J)J
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_0
    return-wide p2
.end method

.method private static v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    move-object p2, p0

    .line 21
    check-cast p2, Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_2

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p2, p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :cond_2
    :goto_0
    return-object p2
.end method

.method private static w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static x(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->U:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const-string p1, ","

    .line 16
    .line 17
    invoke-static {p0, p1}, Lcn/m0;->m1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p1, "public.accessibility.describes-video"

    .line 22
    .line 23
    invoke-static {p0, p1}, Lcn/m0;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x200

    .line 30
    .line 31
    :cond_1
    const-string p1, "public.accessibility.transcribes-spoken-dialog"

    .line 32
    .line 33
    invoke-static {p0, p1}, Lcn/m0;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    or-int/lit16 v0, v0, 0x1000

    .line 40
    .line 41
    :cond_2
    const-string p1, "public.accessibility.describes-music-and-sound"

    .line 42
    .line 43
    invoke-static {p0, p1}, Lcn/m0;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    or-int/lit16 v0, v0, 0x400

    .line 50
    .line 51
    :cond_3
    const-string p1, "public.easy-to-read"

    .line 52
    .line 53
    invoke-static {p0, p1}, Lcn/m0;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    or-int/lit16 v0, v0, 0x2000

    .line 60
    .line 61
    :cond_4
    return v0
.end method

.method private static y(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->X:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Y:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    invoke-static {p0, v2, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    or-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    :cond_0
    sget-object v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->W:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    invoke-static {p0, v2, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    or-int/lit8 v0, v0, 0x4

    .line 27
    .line 28
    :cond_1
    return v0
.end method

.method private static z(Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    cmpl-double v1, v4, v2

    .line 12
    .line 13
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    move-wide v11, v8

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    mul-double/2addr v4, v6

    .line 28
    double-to-long v4, v4

    .line 29
    move-wide v11, v4

    .line 30
    :goto_0
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v0, v1, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x:Ljava/util/regex/Pattern;

    .line 38
    .line 39
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v14

    .line 43
    cmpl-double v1, v14, v2

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    move-wide v14, v8

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    mul-double/2addr v14, v6

    .line 50
    double-to-long v14, v14

    .line 51
    :goto_1
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y:Ljava/util/regex/Pattern;

    .line 52
    .line 53
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v16

    .line 57
    cmpl-double v1, v16, v2

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    :goto_2
    move-wide/from16 v16, v8

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    mul-double v1, v16, v6

    .line 65
    .line 66
    double-to-long v8, v1

    .line 67
    goto :goto_2

    .line 68
    :goto_3
    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z:Ljava/util/regex/Pattern;

    .line 69
    .line 70
    invoke-static {v0, v1, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v18

    .line 74
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;

    .line 75
    .line 76
    move-object v10, v0

    .line 77
    invoke-direct/range {v10 .. v18}, Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;-><init>(JZJJZ)V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method


# virtual methods
.method public i(Landroid/net/Uri;Ljava/io/InputStream;)Lnn/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a(Ljava/io/BufferedReader;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v3, "#EXT-X-STREAM-INF"

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;

    .line 52
    .line 53
    invoke-direct {v1, p2, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v1, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/d;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {v0}, Lcn/m0;->m(Ljava/io/Closeable;)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    :try_start_1
    const-string v3, "#EXT-X-TARGETDURATION"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    const-string v3, "#EXTINF"

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_3

    .line 93
    .line 94
    const-string v3, "#EXT-X-KEY"

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    const-string v3, "#EXT-X-BYTERANGE"

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_3

    .line 109
    .line 110
    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_3

    .line 117
    .line 118
    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-nez v3, :cond_3

    .line 125
    .line 126
    const-string v3, "#EXT-X-ENDLIST"

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_2

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a:Lio/bidmachine/media3/exoplayer/hls/playlist/d;

    .line 143
    .line 144
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/c;

    .line 145
    .line 146
    new-instance v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;

    .line 147
    .line 148
    invoke-direct {v3, p2, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Lio/bidmachine/media3/exoplayer/hls/playlist/d;Lio/bidmachine/media3/exoplayer/hls/playlist/c;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/c;

    .line 156
    .line 157
    .line 158
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    invoke-static {v0}, Lcn/m0;->m(Ljava/io/Closeable;)V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_4
    invoke-static {v0}, Lcn/m0;->m(Ljava/io/Closeable;)V

    .line 164
    .line 165
    .line 166
    const-string p1, "Failed to parse the playlist, could not identify any tags."

    .line 167
    .line 168
    invoke-static {p1, v2}, Lio/bidmachine/media3/common/ParserException;->e(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    throw p1

    .line 173
    :cond_5
    :try_start_2
    const-string p1, "Input does not start with the #EXTM3U header."

    .line 174
    .line 175
    invoke-static {p1, v2}, Lio/bidmachine/media3/common/ParserException;->e(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :goto_2
    invoke-static {v0}, Lcn/m0;->m(Ljava/io/Closeable;)V

    .line 181
    .line 182
    .line 183
    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i(Landroid/net/Uri;Ljava/io/InputStream;)Lnn/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
