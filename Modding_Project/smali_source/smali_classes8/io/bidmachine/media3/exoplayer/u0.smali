.class final Lio/bidmachine/media3/exoplayer/u0;
.super Lzm/e;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/u0$c;,
        Lio/bidmachine/media3/exoplayer/u0$d;,
        Lio/bidmachine/media3/exoplayer/u0$b;,
        Lio/bidmachine/media3/exoplayer/u0$e;
    }
.end annotation


# instance fields
.field private final A:Lio/bidmachine/media3/exoplayer/u0$d;

.field private final B:Lio/bidmachine/media3/exoplayer/d;

.field private final C:Lio/bidmachine/media3/exoplayer/o2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final D:Lio/bidmachine/media3/exoplayer/t2;

.field private final E:Lio/bidmachine/media3/exoplayer/w2;

.field private final F:J

.field private final G:Lio/bidmachine/media3/exoplayer/q2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final H:Lcn/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/f<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:Z

.field private K:I

.field private L:I

.field private M:Z

.field private N:Lgn/i0;

.field private O:Lsn/t;

.field private P:Lio/bidmachine/media3/exoplayer/ExoPlayer$c;

.field private Q:Z

.field private R:Lzm/w$b;

.field private S:Lzm/s;

.field private T:Lzm/s;

.field private U:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private V:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private W:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private X:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Y:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Z:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private a0:Z

.field final b:Lvn/w;

.field private b0:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:Lzm/w$b;

.field private c0:I

.field private final d:Lcn/k;

.field private d0:I

.field private final e:Landroid/content/Context;

.field private e0:Lcn/d0;

.field private final f:Lzm/w;

.field private f0:Lgn/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:[Lio/bidmachine/media3/exoplayer/h2;

.field private g0:Lgn/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:[Lio/bidmachine/media3/exoplayer/h2;

.field private h0:Lzm/c;

.field private final i:Lvn/v;

.field private i0:F

.field private final j:Lcn/n;

.field private j0:Z

.field private final k:Lio/bidmachine/media3/exoplayer/i1$f;

.field private k0:Lbn/b;

.field private final l:Lio/bidmachine/media3/exoplayer/i1;

.field private l0:Z

.field private final m:Lcn/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/q<",
            "Lzm/w$d;",
            ">;"
        }
    .end annotation
.end field

.field private m0:Z

.field private final n:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio/bidmachine/media3/exoplayer/ExoPlayer$a;",
            ">;"
        }
    .end annotation
.end field

.field private n0:I

.field private final o:Lzm/a0$b;

.field private o0:Lio/bidmachine/media3/common/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/u0$e;",
            ">;"
        }
    .end annotation
.end field

.field private p0:Z

.field private final q:Z

.field private q0:Z

.field private final r:Lio/bidmachine/media3/exoplayer/source/r$a;

.field private r0:Lzm/k;

.field private final s:Lhn/a;

.field private s0:Lzm/i0;

.field private final t:Landroid/os/Looper;

.field private t0:Lzm/s;

.field private final u:Lwn/d;

.field private u0:Lio/bidmachine/media3/exoplayer/e2;

.field private final v:J

.field private v0:I

.field private final w:J

.field private w0:I

.field private final x:J

.field private x0:J

.field private final y:Lcn/h;

.field private final z:Lio/bidmachine/media3/exoplayer/u0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer"

    .line 2
    .line 3
    invoke-static {v0}, Lzm/r;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayer$b;Lzm/w;)V
    .locals 40
    .param p2    # Lzm/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x14

    .line 6
    .line 7
    const/4 v7, 0x1

    .line 8
    invoke-direct/range {p0 .. p0}, Lzm/e;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v8, Lcn/k;

    .line 12
    .line 13
    invoke-direct {v8}, Lcn/k;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/u0;->d:Lcn/k;

    .line 17
    .line 18
    :try_start_0
    const-string v8, "ExoPlayerImpl"

    .line 19
    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v10, "Init "

    .line 26
    .line 27
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v10, " ["

    .line 42
    .line 43
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v10, "AndroidXMedia3/1.7.1"

    .line 47
    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v10, "] ["

    .line 52
    .line 53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget-object v10, Lcn/m0;->e:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v10, "]"

    .line 62
    .line 63
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-static {v8, v9}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/u0;->e:Landroid/content/Context;

    .line 80
    .line 81
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->i:Lh7/e;

    .line 82
    .line 83
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->b:Lcn/h;

    .line 84
    .line 85
    invoke-interface {v8, v9}, Lh7/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    check-cast v8, Lhn/a;

    .line 90
    .line 91
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 92
    .line 93
    iget v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->k:I

    .line 94
    .line 95
    iput v8, v1, Lio/bidmachine/media3/exoplayer/u0;->n0:I

    .line 96
    .line 97
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->l:Lio/bidmachine/media3/common/PriorityTaskManager;

    .line 98
    .line 99
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/u0;->o0:Lio/bidmachine/media3/common/PriorityTaskManager;

    .line 100
    .line 101
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->m:Lzm/c;

    .line 102
    .line 103
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/u0;->h0:Lzm/c;

    .line 104
    .line 105
    iget v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->s:I

    .line 106
    .line 107
    iput v8, v1, Lio/bidmachine/media3/exoplayer/u0;->c0:I

    .line 108
    .line 109
    iget v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->t:I

    .line 110
    .line 111
    iput v8, v1, Lio/bidmachine/media3/exoplayer/u0;->d0:I

    .line 112
    .line 113
    iget-boolean v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->q:Z

    .line 114
    .line 115
    iput-boolean v8, v1, Lio/bidmachine/media3/exoplayer/u0;->j0:Z

    .line 116
    .line 117
    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->B:J

    .line 118
    .line 119
    iput-wide v8, v1, Lio/bidmachine/media3/exoplayer/u0;->F:J

    .line 120
    .line 121
    new-instance v15, Lio/bidmachine/media3/exoplayer/u0$c;

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    invoke-direct {v15, v1, v8}, Lio/bidmachine/media3/exoplayer/u0$c;-><init>(Lio/bidmachine/media3/exoplayer/u0;Lio/bidmachine/media3/exoplayer/u0$a;)V

    .line 125
    .line 126
    .line 127
    iput-object v15, v1, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 128
    .line 129
    new-instance v9, Lio/bidmachine/media3/exoplayer/u0$d;

    .line 130
    .line 131
    invoke-direct {v9, v8}, Lio/bidmachine/media3/exoplayer/u0$d;-><init>(Lio/bidmachine/media3/exoplayer/u0$a;)V

    .line 132
    .line 133
    .line 134
    iput-object v9, v1, Lio/bidmachine/media3/exoplayer/u0;->A:Lio/bidmachine/media3/exoplayer/u0$d;

    .line 135
    .line 136
    new-instance v9, Landroid/os/Handler;

    .line 137
    .line 138
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->j:Landroid/os/Looper;

    .line 139
    .line 140
    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 141
    .line 142
    .line 143
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->d:Lh7/n;

    .line 144
    .line 145
    invoke-interface {v10}, Lh7/n;->get()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    move-object/from16 v23, v10

    .line 150
    .line 151
    check-cast v23, Lgn/h0;

    .line 152
    .line 153
    move-object/from16 v10, v23

    .line 154
    .line 155
    move-object v11, v9

    .line 156
    move-object v12, v15

    .line 157
    move-object v13, v15

    .line 158
    move-object v14, v15

    .line 159
    invoke-interface/range {v10 .. v15}, Lgn/h0;->b(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;Lio/bidmachine/media3/exoplayer/audio/e;Lun/h;Lqn/b;)[Lio/bidmachine/media3/exoplayer/h2;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    iput-object v10, v1, Lio/bidmachine/media3/exoplayer/u0;->g:[Lio/bidmachine/media3/exoplayer/h2;

    .line 164
    .line 165
    array-length v11, v10

    .line 166
    const/4 v12, 0x0

    .line 167
    if-lez v11, :cond_0

    .line 168
    .line 169
    move v11, v7

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    move v11, v12

    .line 172
    :goto_0
    invoke-static {v11}, Lcn/a;->g(Z)V

    .line 173
    .line 174
    .line 175
    array-length v10, v10

    .line 176
    new-array v10, v10, [Lio/bidmachine/media3/exoplayer/h2;

    .line 177
    .line 178
    iput-object v10, v1, Lio/bidmachine/media3/exoplayer/u0;->h:[Lio/bidmachine/media3/exoplayer/h2;

    .line 179
    .line 180
    move v10, v12

    .line 181
    :goto_1
    iget-object v11, v1, Lio/bidmachine/media3/exoplayer/u0;->h:[Lio/bidmachine/media3/exoplayer/h2;

    .line 182
    .line 183
    array-length v13, v11

    .line 184
    if-ge v10, v13, :cond_1

    .line 185
    .line 186
    iget-object v13, v1, Lio/bidmachine/media3/exoplayer/u0;->g:[Lio/bidmachine/media3/exoplayer/h2;

    .line 187
    .line 188
    aget-object v17, v13, v10

    .line 189
    .line 190
    iget-object v13, v1, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 191
    .line 192
    move-object/from16 v16, v23

    .line 193
    .line 194
    move-object/from16 v18, v9

    .line 195
    .line 196
    move-object/from16 v19, v13

    .line 197
    .line 198
    move-object/from16 v20, v13

    .line 199
    .line 200
    move-object/from16 v21, v13

    .line 201
    .line 202
    move-object/from16 v22, v13

    .line 203
    .line 204
    invoke-interface/range {v16 .. v22}, Lgn/h0;->a(Lio/bidmachine/media3/exoplayer/h2;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;Lio/bidmachine/media3/exoplayer/audio/e;Lun/h;Lqn/b;)Lio/bidmachine/media3/exoplayer/h2;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    aput-object v13, v11, v10

    .line 209
    .line 210
    add-int/2addr v10, v7

    .line 211
    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    goto/16 :goto_7

    .line 214
    .line 215
    :cond_1
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->f:Lh7/n;

    .line 216
    .line 217
    invoke-interface {v9}, Lh7/n;->get()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    check-cast v9, Lvn/v;

    .line 222
    .line 223
    iput-object v9, v1, Lio/bidmachine/media3/exoplayer/u0;->i:Lvn/v;

    .line 224
    .line 225
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->e:Lh7/n;

    .line 226
    .line 227
    invoke-interface {v10}, Lh7/n;->get()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    check-cast v10, Lio/bidmachine/media3/exoplayer/source/r$a;

    .line 232
    .line 233
    iput-object v10, v1, Lio/bidmachine/media3/exoplayer/u0;->r:Lio/bidmachine/media3/exoplayer/source/r$a;

    .line 234
    .line 235
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->h:Lh7/n;

    .line 236
    .line 237
    invoke-interface {v10}, Lh7/n;->get()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    check-cast v10, Lwn/d;

    .line 242
    .line 243
    iput-object v10, v1, Lio/bidmachine/media3/exoplayer/u0;->u:Lwn/d;

    .line 244
    .line 245
    iget-boolean v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->u:Z

    .line 246
    .line 247
    iput-boolean v11, v1, Lio/bidmachine/media3/exoplayer/u0;->q:Z

    .line 248
    .line 249
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->v:Lgn/i0;

    .line 250
    .line 251
    iput-object v11, v1, Lio/bidmachine/media3/exoplayer/u0;->N:Lgn/i0;

    .line 252
    .line 253
    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->w:J

    .line 254
    .line 255
    iput-wide v13, v1, Lio/bidmachine/media3/exoplayer/u0;->v:J

    .line 256
    .line 257
    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->x:J

    .line 258
    .line 259
    iput-wide v13, v1, Lio/bidmachine/media3/exoplayer/u0;->w:J

    .line 260
    .line 261
    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->y:J

    .line 262
    .line 263
    iput-wide v13, v1, Lio/bidmachine/media3/exoplayer/u0;->x:J

    .line 264
    .line 265
    iget-boolean v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->C:Z

    .line 266
    .line 267
    iput-boolean v11, v1, Lio/bidmachine/media3/exoplayer/u0;->Q:Z

    .line 268
    .line 269
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->j:Landroid/os/Looper;

    .line 270
    .line 271
    iput-object v11, v1, Lio/bidmachine/media3/exoplayer/u0;->t:Landroid/os/Looper;

    .line 272
    .line 273
    iget-object v15, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->b:Lcn/h;

    .line 274
    .line 275
    iput-object v15, v1, Lio/bidmachine/media3/exoplayer/u0;->y:Lcn/h;

    .line 276
    .line 277
    if-nez p2, :cond_2

    .line 278
    .line 279
    move-object v13, v1

    .line 280
    goto :goto_2

    .line 281
    :cond_2
    move-object/from16 v13, p2

    .line 282
    .line 283
    :goto_2
    iput-object v13, v1, Lio/bidmachine/media3/exoplayer/u0;->f:Lzm/w;

    .line 284
    .line 285
    new-instance v14, Lcn/q;

    .line 286
    .line 287
    new-instance v4, Lio/bidmachine/media3/exoplayer/b0;

    .line 288
    .line 289
    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/b0;-><init>(Lio/bidmachine/media3/exoplayer/u0;)V

    .line 290
    .line 291
    .line 292
    invoke-direct {v14, v11, v15, v4}, Lcn/q;-><init>(Landroid/os/Looper;Lcn/h;Lcn/q$b;)V

    .line 293
    .line 294
    .line 295
    iput-object v14, v1, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 296
    .line 297
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 298
    .line 299
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 300
    .line 301
    .line 302
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/u0;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 303
    .line 304
    new-instance v4, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .line 308
    .line 309
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/u0;->p:Ljava/util/List;

    .line 310
    .line 311
    new-instance v4, Lsn/t$a;

    .line 312
    .line 313
    invoke-direct {v4, v12}, Lsn/t$a;-><init>(I)V

    .line 314
    .line 315
    .line 316
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/u0;->O:Lsn/t;

    .line 317
    .line 318
    sget-object v4, Lio/bidmachine/media3/exoplayer/ExoPlayer$c;->b:Lio/bidmachine/media3/exoplayer/ExoPlayer$c;

    .line 319
    .line 320
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/u0;->P:Lio/bidmachine/media3/exoplayer/ExoPlayer$c;

    .line 321
    .line 322
    new-instance v4, Lvn/w;

    .line 323
    .line 324
    iget-object v14, v1, Lio/bidmachine/media3/exoplayer/u0;->g:[Lio/bidmachine/media3/exoplayer/h2;

    .line 325
    .line 326
    array-length v5, v14

    .line 327
    new-array v5, v5, [Lgn/g0;

    .line 328
    .line 329
    array-length v14, v14

    .line 330
    new-array v14, v14, [Lvn/q;

    .line 331
    .line 332
    sget-object v6, Lzm/e0;->b:Lzm/e0;

    .line 333
    .line 334
    invoke-direct {v4, v5, v14, v6, v8}, Lvn/w;-><init>([Lgn/g0;[Lvn/q;Lzm/e0;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/u0;->b:Lvn/w;

    .line 338
    .line 339
    new-instance v5, Lzm/a0$b;

    .line 340
    .line 341
    invoke-direct {v5}, Lzm/a0$b;-><init>()V

    .line 342
    .line 343
    .line 344
    iput-object v5, v1, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 345
    .line 346
    new-instance v5, Lzm/w$b$a;

    .line 347
    .line 348
    invoke-direct {v5}, Lzm/w$b$a;-><init>()V

    .line 349
    .line 350
    .line 351
    new-array v2, v2, [I

    .line 352
    .line 353
    fill-array-data v2, :array_0

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v2}, Lzm/w$b$a;->c([I)Lzm/w$b$a;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v9}, Lvn/v;->h()Z

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    const/16 v6, 0x1d

    .line 365
    .line 366
    invoke-virtual {v2, v6, v5}, Lzm/w$b$a;->d(IZ)Lzm/w$b$a;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->r:Z

    .line 371
    .line 372
    const/16 v6, 0x17

    .line 373
    .line 374
    invoke-virtual {v2, v6, v5}, Lzm/w$b$a;->d(IZ)Lzm/w$b$a;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->r:Z

    .line 379
    .line 380
    const/16 v6, 0x19

    .line 381
    .line 382
    invoke-virtual {v2, v6, v5}, Lzm/w$b$a;->d(IZ)Lzm/w$b$a;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->r:Z

    .line 387
    .line 388
    const/16 v6, 0x21

    .line 389
    .line 390
    invoke-virtual {v2, v6, v5}, Lzm/w$b$a;->d(IZ)Lzm/w$b$a;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->r:Z

    .line 395
    .line 396
    const/16 v6, 0x1a

    .line 397
    .line 398
    invoke-virtual {v2, v6, v5}, Lzm/w$b$a;->d(IZ)Lzm/w$b$a;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->r:Z

    .line 403
    .line 404
    const/16 v6, 0x22

    .line 405
    .line 406
    invoke-virtual {v2, v6, v5}, Lzm/w$b$a;->d(IZ)Lzm/w$b$a;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2}, Lzm/w$b$a;->e()Lzm/w$b;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/u0;->c:Lzm/w$b;

    .line 415
    .line 416
    new-instance v5, Lzm/w$b$a;

    .line 417
    .line 418
    invoke-direct {v5}, Lzm/w$b$a;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5, v2}, Lzm/w$b$a;->b(Lzm/w$b;)Lzm/w$b$a;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    const/4 v5, 0x4

    .line 426
    invoke-virtual {v2, v5}, Lzm/w$b$a;->a(I)Lzm/w$b$a;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    const/16 v6, 0xa

    .line 431
    .line 432
    invoke-virtual {v2, v6}, Lzm/w$b$a;->a(I)Lzm/w$b$a;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v2}, Lzm/w$b$a;->e()Lzm/w$b;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/u0;->R:Lzm/w$b;

    .line 441
    .line 442
    invoke-interface {v15, v11, v8}, Lcn/h;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcn/n;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/u0;->j:Lcn/n;

    .line 447
    .line 448
    new-instance v2, Lio/bidmachine/media3/exoplayer/c0;

    .line 449
    .line 450
    invoke-direct {v2, v1}, Lio/bidmachine/media3/exoplayer/c0;-><init>(Lio/bidmachine/media3/exoplayer/u0;)V

    .line 451
    .line 452
    .line 453
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/u0;->k:Lio/bidmachine/media3/exoplayer/i1$f;

    .line 454
    .line 455
    invoke-static {v4}, Lio/bidmachine/media3/exoplayer/e2;->k(Lvn/w;)Lio/bidmachine/media3/exoplayer/e2;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    iput-object v6, v1, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 460
    .line 461
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 462
    .line 463
    invoke-interface {v6, v13, v11}, Lhn/a;->X(Lzm/w;Landroid/os/Looper;)V

    .line 464
    .line 465
    .line 466
    new-instance v6, Lhn/b2;

    .line 467
    .line 468
    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->H:Ljava/lang/String;

    .line 469
    .line 470
    invoke-direct {v6, v13}, Lhn/b2;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    new-instance v14, Lio/bidmachine/media3/exoplayer/i1;

    .line 474
    .line 475
    iget-object v13, v1, Lio/bidmachine/media3/exoplayer/u0;->e:Landroid/content/Context;

    .line 476
    .line 477
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/u0;->g:[Lio/bidmachine/media3/exoplayer/h2;

    .line 478
    .line 479
    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/u0;->h:[Lio/bidmachine/media3/exoplayer/h2;

    .line 480
    .line 481
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->g:Lh7/n;

    .line 482
    .line 483
    invoke-interface {v3}, Lh7/n;->get()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    move-object/from16 v19, v3

    .line 488
    .line 489
    check-cast v19, Lio/bidmachine/media3/exoplayer/j1;

    .line 490
    .line 491
    iget v3, v1, Lio/bidmachine/media3/exoplayer/u0;->I:I

    .line 492
    .line 493
    iget-boolean v7, v1, Lio/bidmachine/media3/exoplayer/u0;->J:Z

    .line 494
    .line 495
    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 496
    .line 497
    move-object/from16 v36, v6

    .line 498
    .line 499
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/u0;->N:Lgn/i0;

    .line 500
    .line 501
    move-object/from16 v32, v2

    .line 502
    .line 503
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->z:Lgn/d0;

    .line 504
    .line 505
    move-object/from16 v37, v11

    .line 506
    .line 507
    move-object/from16 v23, v12

    .line 508
    .line 509
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->A:J

    .line 510
    .line 511
    move-wide/from16 v26, v11

    .line 512
    .line 513
    iget-boolean v11, v1, Lio/bidmachine/media3/exoplayer/u0;->Q:Z

    .line 514
    .line 515
    iget-boolean v12, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->I:Z

    .line 516
    .line 517
    move/from16 v29, v12

    .line 518
    .line 519
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->E:Lgn/f0;

    .line 520
    .line 521
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/u0;->P:Lio/bidmachine/media3/exoplayer/ExoPlayer$c;

    .line 522
    .line 523
    move-object/from16 v16, v13

    .line 524
    .line 525
    move-object v13, v14

    .line 526
    move-object/from16 v38, v14

    .line 527
    .line 528
    move-object/from16 v14, v16

    .line 529
    .line 530
    move-object/from16 v39, v15

    .line 531
    .line 532
    move-object v15, v5

    .line 533
    move-object/from16 v16, v8

    .line 534
    .line 535
    move-object/from16 v17, v9

    .line 536
    .line 537
    move-object/from16 v18, v4

    .line 538
    .line 539
    move-object/from16 v20, v10

    .line 540
    .line 541
    move/from16 v21, v3

    .line 542
    .line 543
    move/from16 v22, v7

    .line 544
    .line 545
    move-object/from16 v24, v6

    .line 546
    .line 547
    move-object/from16 v25, v2

    .line 548
    .line 549
    move/from16 v28, v11

    .line 550
    .line 551
    move-object/from16 v30, v37

    .line 552
    .line 553
    move-object/from16 v31, v39

    .line 554
    .line 555
    move-object/from16 v33, v36

    .line 556
    .line 557
    move-object/from16 v34, v12

    .line 558
    .line 559
    move-object/from16 v35, v0

    .line 560
    .line 561
    invoke-direct/range {v13 .. v35}, Lio/bidmachine/media3/exoplayer/i1;-><init>(Landroid/content/Context;[Lio/bidmachine/media3/exoplayer/h2;[Lio/bidmachine/media3/exoplayer/h2;Lvn/v;Lvn/w;Lio/bidmachine/media3/exoplayer/j1;Lwn/d;IZLhn/a;Lgn/i0;Lgn/d0;JZZLandroid/os/Looper;Lcn/h;Lio/bidmachine/media3/exoplayer/i1$f;Lhn/b2;Lgn/f0;Lio/bidmachine/media3/exoplayer/ExoPlayer$c;)V

    .line 562
    .line 563
    .line 564
    move-object/from16 v0, v38

    .line 565
    .line 566
    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 567
    .line 568
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/i1;->K()Landroid/os/Looper;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    const/high16 v3, 0x3f800000    # 1.0f

    .line 573
    .line 574
    iput v3, v1, Lio/bidmachine/media3/exoplayer/u0;->i0:F

    .line 575
    .line 576
    const/4 v3, 0x0

    .line 577
    iput v3, v1, Lio/bidmachine/media3/exoplayer/u0;->I:I

    .line 578
    .line 579
    sget-object v3, Lzm/s;->I:Lzm/s;

    .line 580
    .line 581
    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/u0;->S:Lzm/s;

    .line 582
    .line 583
    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/u0;->T:Lzm/s;

    .line 584
    .line 585
    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/u0;->t0:Lzm/s;

    .line 586
    .line 587
    const/4 v3, -0x1

    .line 588
    iput v3, v1, Lio/bidmachine/media3/exoplayer/u0;->v0:I

    .line 589
    .line 590
    sget-object v3, Lbn/b;->c:Lbn/b;

    .line 591
    .line 592
    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/u0;->k0:Lbn/b;

    .line 593
    .line 594
    const/4 v3, 0x1

    .line 595
    iput-boolean v3, v1, Lio/bidmachine/media3/exoplayer/u0;->l0:Z

    .line 596
    .line 597
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 598
    .line 599
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/exoplayer/u0;->C(Lzm/w$d;)V

    .line 600
    .line 601
    .line 602
    new-instance v3, Landroid/os/Handler;

    .line 603
    .line 604
    move-object/from16 v4, v37

    .line 605
    .line 606
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 607
    .line 608
    .line 609
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 610
    .line 611
    invoke-interface {v10, v3, v5}, Lwn/d;->h(Landroid/os/Handler;Lwn/d$a;)V

    .line 612
    .line 613
    .line 614
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 615
    .line 616
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/exoplayer/u0;->V0(Lio/bidmachine/media3/exoplayer/ExoPlayer$a;)V

    .line 617
    .line 618
    .line 619
    move-object/from16 v3, p1

    .line 620
    .line 621
    iget-wide v5, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->c:J

    .line 622
    .line 623
    const-wide/16 v7, 0x0

    .line 624
    .line 625
    cmp-long v7, v5, v7

    .line 626
    .line 627
    if-lez v7, :cond_3

    .line 628
    .line 629
    invoke-virtual {v0, v5, v6}, Lio/bidmachine/media3/exoplayer/i1;->E(J)V

    .line 630
    .line 631
    .line 632
    :cond_3
    sget v5, Lcn/m0;->a:I

    .line 633
    .line 634
    const/16 v6, 0x1f

    .line 635
    .line 636
    if-lt v5, v6, :cond_4

    .line 637
    .line 638
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/u0;->e:Landroid/content/Context;

    .line 639
    .line 640
    iget-boolean v6, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->D:Z

    .line 641
    .line 642
    move-object/from16 v7, v36

    .line 643
    .line 644
    invoke-static {v5, v1, v6, v7}, Lio/bidmachine/media3/exoplayer/u0$b;->c(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/u0;ZLhn/b2;)V

    .line 645
    .line 646
    .line 647
    :cond_4
    new-instance v5, Lcn/f;

    .line 648
    .line 649
    const/4 v6, 0x0

    .line 650
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 651
    .line 652
    .line 653
    move-result-object v14

    .line 654
    new-instance v7, Lio/bidmachine/media3/exoplayer/e0;

    .line 655
    .line 656
    invoke-direct {v7, v1}, Lio/bidmachine/media3/exoplayer/e0;-><init>(Lio/bidmachine/media3/exoplayer/u0;)V

    .line 657
    .line 658
    .line 659
    move-object v13, v5

    .line 660
    move-object v15, v2

    .line 661
    move-object/from16 v16, v4

    .line 662
    .line 663
    move-object/from16 v17, v39

    .line 664
    .line 665
    move-object/from16 v18, v7

    .line 666
    .line 667
    invoke-direct/range {v13 .. v18}, Lcn/f;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lcn/h;Lcn/f$a;)V

    .line 668
    .line 669
    .line 670
    iput-object v5, v1, Lio/bidmachine/media3/exoplayer/u0;->H:Lcn/f;

    .line 671
    .line 672
    new-instance v7, Lio/bidmachine/media3/exoplayer/f0;

    .line 673
    .line 674
    invoke-direct {v7, v1}, Lio/bidmachine/media3/exoplayer/f0;-><init>(Lio/bidmachine/media3/exoplayer/u0;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v5, v7}, Lcn/f;->h(Ljava/lang/Runnable;)V

    .line 678
    .line 679
    .line 680
    new-instance v5, Lio/bidmachine/media3/exoplayer/d;

    .line 681
    .line 682
    iget-object v14, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    .line 683
    .line 684
    iget-object v7, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->j:Landroid/os/Looper;

    .line 685
    .line 686
    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 687
    .line 688
    move-object v13, v5

    .line 689
    move-object v15, v2

    .line 690
    move-object/from16 v16, v7

    .line 691
    .line 692
    move-object/from16 v17, v8

    .line 693
    .line 694
    move-object/from16 v18, v39

    .line 695
    .line 696
    invoke-direct/range {v13 .. v18}, Lio/bidmachine/media3/exoplayer/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/d$b;Lcn/h;)V

    .line 697
    .line 698
    .line 699
    iput-object v5, v1, Lio/bidmachine/media3/exoplayer/u0;->B:Lio/bidmachine/media3/exoplayer/d;

    .line 700
    .line 701
    iget-boolean v7, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->p:Z

    .line 702
    .line 703
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/exoplayer/d;->f(Z)V

    .line 704
    .line 705
    .line 706
    iget-boolean v5, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->G:Z

    .line 707
    .line 708
    if-eqz v5, :cond_5

    .line 709
    .line 710
    iget-object v13, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->J:Lio/bidmachine/media3/exoplayer/q2;

    .line 711
    .line 712
    iput-object v13, v1, Lio/bidmachine/media3/exoplayer/u0;->G:Lio/bidmachine/media3/exoplayer/q2;

    .line 713
    .line 714
    new-instance v14, Lio/bidmachine/media3/exoplayer/g0;

    .line 715
    .line 716
    invoke-direct {v14, v1}, Lio/bidmachine/media3/exoplayer/g0;-><init>(Lio/bidmachine/media3/exoplayer/u0;)V

    .line 717
    .line 718
    .line 719
    iget-object v15, v1, Lio/bidmachine/media3/exoplayer/u0;->e:Landroid/content/Context;

    .line 720
    .line 721
    move-object/from16 v16, v4

    .line 722
    .line 723
    move-object/from16 v17, v2

    .line 724
    .line 725
    move-object/from16 v18, v39

    .line 726
    .line 727
    invoke-interface/range {v13 .. v18}, Lio/bidmachine/media3/exoplayer/q2;->a(Lio/bidmachine/media3/exoplayer/q2$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcn/h;)V

    .line 728
    .line 729
    .line 730
    goto :goto_3

    .line 731
    :cond_5
    const/4 v5, 0x0

    .line 732
    iput-object v5, v1, Lio/bidmachine/media3/exoplayer/u0;->G:Lio/bidmachine/media3/exoplayer/q2;

    .line 733
    .line 734
    :goto_3
    iget-boolean v5, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->r:Z

    .line 735
    .line 736
    if-eqz v5, :cond_6

    .line 737
    .line 738
    new-instance v5, Lio/bidmachine/media3/exoplayer/o2;

    .line 739
    .line 740
    iget-object v14, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    .line 741
    .line 742
    iget-object v15, v1, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 743
    .line 744
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/u0;->h0:Lzm/c;

    .line 745
    .line 746
    invoke-virtual {v7}, Lzm/c;->b()I

    .line 747
    .line 748
    .line 749
    move-result v16

    .line 750
    move-object v13, v5

    .line 751
    move-object/from16 v17, v2

    .line 752
    .line 753
    move-object/from16 v18, v4

    .line 754
    .line 755
    move-object/from16 v19, v39

    .line 756
    .line 757
    invoke-direct/range {v13 .. v19}, Lio/bidmachine/media3/exoplayer/o2;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/o2$b;ILandroid/os/Looper;Landroid/os/Looper;Lcn/h;)V

    .line 758
    .line 759
    .line 760
    iput-object v5, v1, Lio/bidmachine/media3/exoplayer/u0;->C:Lio/bidmachine/media3/exoplayer/o2;

    .line 761
    .line 762
    goto :goto_4

    .line 763
    :cond_6
    const/4 v4, 0x0

    .line 764
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/u0;->C:Lio/bidmachine/media3/exoplayer/o2;

    .line 765
    .line 766
    :goto_4
    new-instance v4, Lio/bidmachine/media3/exoplayer/t2;

    .line 767
    .line 768
    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    .line 769
    .line 770
    move-object/from16 v7, v39

    .line 771
    .line 772
    invoke-direct {v4, v5, v2, v7}, Lio/bidmachine/media3/exoplayer/t2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcn/h;)V

    .line 773
    .line 774
    .line 775
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/u0;->D:Lio/bidmachine/media3/exoplayer/t2;

    .line 776
    .line 777
    iget v5, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->o:I

    .line 778
    .line 779
    if-eqz v5, :cond_7

    .line 780
    .line 781
    const/4 v5, 0x1

    .line 782
    goto :goto_5

    .line 783
    :cond_7
    move v5, v6

    .line 784
    :goto_5
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/exoplayer/t2;->e(Z)V

    .line 785
    .line 786
    .line 787
    new-instance v4, Lio/bidmachine/media3/exoplayer/w2;

    .line 788
    .line 789
    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    .line 790
    .line 791
    invoke-direct {v4, v5, v2, v7}, Lio/bidmachine/media3/exoplayer/w2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcn/h;)V

    .line 792
    .line 793
    .line 794
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/u0;->E:Lio/bidmachine/media3/exoplayer/w2;

    .line 795
    .line 796
    iget v2, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->o:I

    .line 797
    .line 798
    const/4 v5, 0x2

    .line 799
    if-ne v2, v5, :cond_8

    .line 800
    .line 801
    const/4 v12, 0x1

    .line 802
    goto :goto_6

    .line 803
    :cond_8
    move v12, v6

    .line 804
    :goto_6
    invoke-virtual {v4, v12}, Lio/bidmachine/media3/exoplayer/w2;->e(Z)V

    .line 805
    .line 806
    .line 807
    sget-object v2, Lzm/k;->e:Lzm/k;

    .line 808
    .line 809
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/u0;->r0:Lzm/k;

    .line 810
    .line 811
    sget-object v2, Lzm/i0;->e:Lzm/i0;

    .line 812
    .line 813
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/u0;->s0:Lzm/i0;

    .line 814
    .line 815
    sget-object v2, Lcn/d0;->c:Lcn/d0;

    .line 816
    .line 817
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/u0;->e0:Lcn/d0;

    .line 818
    .line 819
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/u0;->h0:Lzm/c;

    .line 820
    .line 821
    iget-boolean v3, v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->n:Z

    .line 822
    .line 823
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/i1;->c1(Lzm/c;Z)V

    .line 824
    .line 825
    .line 826
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/u0;->h0:Lzm/c;

    .line 827
    .line 828
    const/4 v2, 0x1

    .line 829
    const/4 v3, 0x3

    .line 830
    invoke-direct {v1, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 831
    .line 832
    .line 833
    iget v0, v1, Lio/bidmachine/media3/exoplayer/u0;->c0:I

    .line 834
    .line 835
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    const/4 v2, 0x4

    .line 840
    const/4 v3, 0x2

    .line 841
    invoke-direct {v1, v3, v2, v0}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    iget v0, v1, Lio/bidmachine/media3/exoplayer/u0;->d0:I

    .line 845
    .line 846
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    const/4 v2, 0x5

    .line 851
    invoke-direct {v1, v3, v2, v0}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 852
    .line 853
    .line 854
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/u0;->j0:Z

    .line 855
    .line 856
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    const/16 v2, 0x9

    .line 861
    .line 862
    const/4 v3, 0x1

    .line 863
    invoke-direct {v1, v3, v2, v0}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 864
    .line 865
    .line 866
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/u0;->A:Lio/bidmachine/media3/exoplayer/u0$d;

    .line 867
    .line 868
    const/4 v2, 0x7

    .line 869
    const/4 v3, 0x2

    .line 870
    invoke-direct {v1, v3, v2, v0}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 871
    .line 872
    .line 873
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/u0;->A:Lio/bidmachine/media3/exoplayer/u0$d;

    .line 874
    .line 875
    const/4 v2, 0x6

    .line 876
    const/16 v3, 0x8

    .line 877
    .line 878
    invoke-direct {v1, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 879
    .line 880
    .line 881
    iget v0, v1, Lio/bidmachine/media3/exoplayer/u0;->n0:I

    .line 882
    .line 883
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    const/16 v2, 0x10

    .line 888
    .line 889
    invoke-direct {v1, v2, v0}, Lio/bidmachine/media3/exoplayer/u0;->b2(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    .line 891
    .line 892
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/u0;->d:Lcn/k;

    .line 893
    .line 894
    invoke-virtual {v0}, Lcn/k;->e()Z

    .line 895
    .line 896
    .line 897
    return-void

    .line 898
    :goto_7
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/u0;->d:Lcn/k;

    .line 899
    .line 900
    invoke-virtual {v2}, Lcn/k;->e()Z

    .line 901
    .line 902
    .line 903
    throw v0

    .line 904
    nop

    .line 905
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method static synthetic A0(Lio/bidmachine/media3/exoplayer/u0;)Lzm/s;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->X0()Lzm/s;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic A1(Lzm/d0;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lzm/w$d;->a0(Lzm/d0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic B0(Lio/bidmachine/media3/exoplayer/u0;)Lzm/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/u0;->S:Lzm/s;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic B1(FLzm/w$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lzm/w$d;->G(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C0(Lio/bidmachine/media3/exoplayer/u0;Lzm/s;)Lzm/s;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->S:Lzm/s;

    .line 2
    .line 3
    return-object p1
.end method

.method private synthetic C1(Lzm/w$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->R:Lzm/w$b;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lzm/w$d;->f0(Lzm/w$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic D0(Lio/bidmachine/media3/exoplayer/u0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/u0;->a0:Z

    .line 2
    .line 3
    return p0
.end method

.method private static synthetic D1(Lio/bidmachine/media3/exoplayer/e2;ILzm/w$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lzm/w$d;->H(Lzm/a0;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic E0(Lio/bidmachine/media3/exoplayer/u0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->g2(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic E1(ILzm/w$e;Lzm/w$e;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-interface {p3, p0}, Lzm/w$d;->onPositionDiscontinuity(I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p1, p2, p0}, Lzm/w$d;->P(Lzm/w$e;Lzm/w$e;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static synthetic F0(Lio/bidmachine/media3/exoplayer/u0;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/u0;->U1(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic F1(Lzm/q;ILzm/w$d;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lzm/w$d;->Q(Lzm/q;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G0(Lio/bidmachine/media3/exoplayer/u0;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->f2(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/e2;->f:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lzm/w$d;->M(Lio/bidmachine/media3/common/PlaybackException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic H0(Lio/bidmachine/media3/exoplayer/u0;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/u0;->k2(ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic H1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/e2;->f:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lzm/w$d;->U(Lio/bidmachine/media3/common/PlaybackException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic I0(Lio/bidmachine/media3/exoplayer/u0;)Lio/bidmachine/media3/exoplayer/o2;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/u0;->C:Lio/bidmachine/media3/exoplayer/o2;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic I1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/e2;->i:Lvn/w;

    .line 2
    .line 3
    iget-object p0, p0, Lvn/w;->d:Lzm/e0;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lzm/w$d;->T(Lzm/e0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic J0(Lio/bidmachine/media3/exoplayer/o2;)Lzm/k;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/u0;->b1(Lio/bidmachine/media3/exoplayer/o2;)Lzm/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic J1(Lzm/s;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lzm/w$d;->e0(Lzm/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K0(Lio/bidmachine/media3/exoplayer/u0;)Lzm/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/u0;->r0:Lzm/k;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic K1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/e2;->g:Z

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lzm/w$d;->onLoadingChanged(Z)V

    .line 4
    .line 5
    .line 6
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/e2;->g:Z

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lzm/w$d;->F(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic L0(Lio/bidmachine/media3/exoplayer/u0;Lzm/k;)Lzm/k;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->r0:Lzm/k;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic L1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/e2;->l:Z

    .line 2
    .line 3
    iget p0, p0, Lio/bidmachine/media3/exoplayer/e2;->e:I

    .line 4
    .line 5
    invoke-interface {p1, v0, p0}, Lzm/w$d;->onPlayerStateChanged(ZI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic M0(Lio/bidmachine/media3/exoplayer/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->n2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic M1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/exoplayer/e2;->e:I

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lzm/w$d;->A(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic N0(Lio/bidmachine/media3/exoplayer/u0;Lgn/b;)Lgn/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->f0:Lgn/b;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic N1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/e2;->l:Z

    .line 2
    .line 3
    iget p0, p0, Lio/bidmachine/media3/exoplayer/e2;->m:I

    .line 4
    .line 5
    invoke-interface {p1, v0, p0}, Lzm/w$d;->w(ZI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic O0(Lio/bidmachine/media3/exoplayer/u0;)Lhn/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic O1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/exoplayer/e2;->n:I

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lzm/w$d;->z(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic P0(Lio/bidmachine/media3/exoplayer/u0;Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->U:Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic P1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/e2;->n()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-interface {p1, p0}, Lzm/w$d;->y(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method static synthetic Q0(Lio/bidmachine/media3/exoplayer/u0;Lzm/i0;)Lzm/i0;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->s0:Lzm/i0;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic Q1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/e2;->o:Lzm/v;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lzm/w$d;->t(Lzm/v;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic R0(Lio/bidmachine/media3/exoplayer/u0;)Lcn/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 2
    .line 3
    return-object p0
.end method

.method private static R1(Lio/bidmachine/media3/exoplayer/e2;I)Lio/bidmachine/media3/exoplayer/e2;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/e2;->h(I)Lio/bidmachine/media3/exoplayer/e2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/e2;->b(Z)Lio/bidmachine/media3/exoplayer/e2;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_1
    return-object p0
.end method

.method public static synthetic S(Lio/bidmachine/media3/exoplayer/u0;Lio/bidmachine/media3/exoplayer/i1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->t1(Lio/bidmachine/media3/exoplayer/i1$e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic S0(Lio/bidmachine/media3/exoplayer/u0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/u0;->W:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method private S1(Lio/bidmachine/media3/exoplayer/e2;Lzm/a0;Landroid/util/Pair;)Lio/bidmachine/media3/exoplayer/e2;
    .locals 21
    .param p3    # Landroid/util/Pair;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/e2;",
            "Lzm/a0;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/e2;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lzm/a0;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v3, v4

    .line 20
    :goto_1
    invoke-static {v3}, Lcn/a;->a(Z)V

    .line 21
    .line 22
    .line 23
    move-object/from16 v3, p1

    .line 24
    .line 25
    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 26
    .line 27
    invoke-direct/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/u0;->h1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-virtual/range {p1 .. p2}, Lio/bidmachine/media3/exoplayer/e2;->j(Lzm/a0;)Lio/bidmachine/media3/exoplayer/e2;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual/range {p2 .. p2}, Lzm/a0;->q()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lio/bidmachine/media3/exoplayer/e2;->l()Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/u0;->x0:J

    .line 46
    .line 47
    invoke-static {v2, v3}, Lcn/m0;->S0(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    sget-object v18, Lsn/x;->d:Lsn/x;

    .line 52
    .line 53
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/u0;->b:Lvn/w;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 56
    .line 57
    .line 58
    move-result-object v20

    .line 59
    const-wide/16 v16, 0x0

    .line 60
    .line 61
    move-object v9, v1

    .line 62
    move-wide v10, v14

    .line 63
    move-wide v12, v14

    .line 64
    move-object/from16 v19, v2

    .line 65
    .line 66
    invoke-virtual/range {v8 .. v20}, Lio/bidmachine/media3/exoplayer/e2;->d(Lio/bidmachine/media3/exoplayer/source/r$b;JJJJLsn/x;Lvn/w;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/e2;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/e2;->c(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/e2;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 75
    .line 76
    iput-wide v2, v1, Lio/bidmachine/media3/exoplayer/e2;->q:J

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_2
    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 80
    .line 81
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static/range {p3 .. p3}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    check-cast v9, Landroid/util/Pair;

    .line 88
    .line 89
    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-nez v9, :cond_3

    .line 96
    .line 97
    new-instance v10, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 98
    .line 99
    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-direct {v10, v11}, Lio/bidmachine/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    move-object v14, v10

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    iget-object v10, v8, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Ljava/lang/Long;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v12

    .line 117
    invoke-static {v6, v7}, Lcn/m0;->S0(J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v6

    .line 121
    invoke-virtual {v5}, Lzm/a0;->q()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 128
    .line 129
    invoke-virtual {v5, v3, v2}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lzm/a0$b;->n()J

    .line 134
    .line 135
    .line 136
    move-result-wide v2

    .line 137
    sub-long/2addr v6, v2

    .line 138
    :cond_4
    if-eqz v9, :cond_5

    .line 139
    .line 140
    cmp-long v2, v12, v6

    .line 141
    .line 142
    if-gez v2, :cond_6

    .line 143
    .line 144
    :cond_5
    move-wide v6, v12

    .line 145
    move-object v0, v14

    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_6
    if-nez v2, :cond_a

    .line 149
    .line 150
    iget-object v2, v8, Lio/bidmachine/media3/exoplayer/e2;->k:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 151
    .line 152
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lzm/a0;->b(Ljava/lang/Object;)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    const/4 v3, -0x1

    .line 159
    if-eq v2, v3, :cond_7

    .line 160
    .line 161
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 162
    .line 163
    invoke-virtual {v1, v2, v3}, Lzm/a0;->f(ILzm/a0$b;)Lzm/a0$b;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iget v2, v2, Lzm/a0$b;->c:I

    .line 168
    .line 169
    iget-object v3, v14, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 170
    .line 171
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 172
    .line 173
    invoke-virtual {v1, v3, v4}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iget v3, v3, Lzm/a0$b;->c:I

    .line 178
    .line 179
    if-eq v2, v3, :cond_9

    .line 180
    .line 181
    :cond_7
    iget-object v2, v14, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 182
    .line 183
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 184
    .line 185
    invoke-virtual {v1, v2, v3}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v14}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_8

    .line 193
    .line 194
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 195
    .line 196
    iget v2, v14, Lio/bidmachine/media3/exoplayer/source/r$b;->b:I

    .line 197
    .line 198
    iget v3, v14, Lio/bidmachine/media3/exoplayer/source/r$b;->c:I

    .line 199
    .line 200
    invoke-virtual {v1, v2, v3}, Lzm/a0$b;->b(II)J

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    goto :goto_4

    .line 205
    :cond_8
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 206
    .line 207
    iget-wide v1, v1, Lzm/a0$b;->d:J

    .line 208
    .line 209
    :goto_4
    iget-wide v10, v8, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 210
    .line 211
    iget-wide v12, v8, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 212
    .line 213
    iget-wide v3, v8, Lio/bidmachine/media3/exoplayer/e2;->d:J

    .line 214
    .line 215
    iget-wide v5, v8, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 216
    .line 217
    sub-long v16, v1, v5

    .line 218
    .line 219
    iget-object v5, v8, Lio/bidmachine/media3/exoplayer/e2;->h:Lsn/x;

    .line 220
    .line 221
    iget-object v6, v8, Lio/bidmachine/media3/exoplayer/e2;->i:Lvn/w;

    .line 222
    .line 223
    iget-object v7, v8, Lio/bidmachine/media3/exoplayer/e2;->j:Ljava/util/List;

    .line 224
    .line 225
    move-object v9, v14

    .line 226
    move-object v0, v14

    .line 227
    move-wide v14, v3

    .line 228
    move-object/from16 v18, v5

    .line 229
    .line 230
    move-object/from16 v19, v6

    .line 231
    .line 232
    move-object/from16 v20, v7

    .line 233
    .line 234
    invoke-virtual/range {v8 .. v20}, Lio/bidmachine/media3/exoplayer/e2;->d(Lio/bidmachine/media3/exoplayer/source/r$b;JJJJLsn/x;Lvn/w;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/e2;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {v3, v0}, Lio/bidmachine/media3/exoplayer/e2;->c(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/e2;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    iput-wide v1, v8, Lio/bidmachine/media3/exoplayer/e2;->q:J

    .line 243
    .line 244
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    .line 245
    .line 246
    goto/16 :goto_d

    .line 247
    .line 248
    :cond_a
    move-object v0, v14

    .line 249
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    xor-int/2addr v1, v4

    .line 254
    invoke-static {v1}, Lcn/a;->g(Z)V

    .line 255
    .line 256
    .line 257
    iget-wide v1, v8, Lio/bidmachine/media3/exoplayer/e2;->r:J

    .line 258
    .line 259
    sub-long v3, v12, v6

    .line 260
    .line 261
    sub-long/2addr v1, v3

    .line 262
    const-wide/16 v3, 0x0

    .line 263
    .line 264
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 265
    .line 266
    .line 267
    move-result-wide v16

    .line 268
    iget-wide v1, v8, Lio/bidmachine/media3/exoplayer/e2;->q:J

    .line 269
    .line 270
    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/e2;->k:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 271
    .line 272
    iget-object v4, v8, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 273
    .line 274
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_b

    .line 279
    .line 280
    add-long v1, v12, v16

    .line 281
    .line 282
    :cond_b
    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/e2;->h:Lsn/x;

    .line 283
    .line 284
    iget-object v4, v8, Lio/bidmachine/media3/exoplayer/e2;->i:Lvn/w;

    .line 285
    .line 286
    iget-object v5, v8, Lio/bidmachine/media3/exoplayer/e2;->j:Ljava/util/List;

    .line 287
    .line 288
    move-object v9, v0

    .line 289
    move-wide v10, v12

    .line 290
    move-wide v6, v12

    .line 291
    move-wide v14, v6

    .line 292
    move-object/from16 v18, v3

    .line 293
    .line 294
    move-object/from16 v19, v4

    .line 295
    .line 296
    move-object/from16 v20, v5

    .line 297
    .line 298
    invoke-virtual/range {v8 .. v20}, Lio/bidmachine/media3/exoplayer/e2;->d(Lio/bidmachine/media3/exoplayer/source/r$b;JJJJLsn/x;Lvn/w;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/e2;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    iput-wide v1, v8, Lio/bidmachine/media3/exoplayer/e2;->q:J

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :goto_6
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    xor-int/2addr v1, v4

    .line 310
    invoke-static {v1}, Lcn/a;->g(Z)V

    .line 311
    .line 312
    .line 313
    if-nez v9, :cond_c

    .line 314
    .line 315
    sget-object v1, Lsn/x;->d:Lsn/x;

    .line 316
    .line 317
    :goto_7
    move-object/from16 v18, v1

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_c
    iget-object v1, v8, Lio/bidmachine/media3/exoplayer/e2;->h:Lsn/x;

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :goto_8
    move-object v1, v0

    .line 324
    move-object/from16 v0, p0

    .line 325
    .line 326
    if-nez v9, :cond_d

    .line 327
    .line 328
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/u0;->b:Lvn/w;

    .line 329
    .line 330
    :goto_9
    move-object/from16 v19, v2

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :cond_d
    iget-object v2, v8, Lio/bidmachine/media3/exoplayer/e2;->i:Lvn/w;

    .line 334
    .line 335
    goto :goto_9

    .line 336
    :goto_a
    if-nez v9, :cond_e

    .line 337
    .line 338
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    :goto_b
    move-object/from16 v20, v2

    .line 343
    .line 344
    goto :goto_c

    .line 345
    :cond_e
    iget-object v2, v8, Lio/bidmachine/media3/exoplayer/e2;->j:Ljava/util/List;

    .line 346
    .line 347
    goto :goto_b

    .line 348
    :goto_c
    const-wide/16 v16, 0x0

    .line 349
    .line 350
    move-object v9, v1

    .line 351
    move-wide v10, v6

    .line 352
    move-wide v12, v6

    .line 353
    move-wide v14, v6

    .line 354
    invoke-virtual/range {v8 .. v20}, Lio/bidmachine/media3/exoplayer/e2;->d(Lio/bidmachine/media3/exoplayer/source/r$b;JJJJLsn/x;Lvn/w;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/e2;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/e2;->c(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/e2;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    iput-wide v6, v8, Lio/bidmachine/media3/exoplayer/e2;->q:J

    .line 363
    .line 364
    :goto_d
    return-object v8
.end method

.method public static synthetic T(Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/u0;->x1(Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic T0(Lio/bidmachine/media3/exoplayer/u0;Lgn/b;)Lgn/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->g0:Lgn/b;

    .line 2
    .line 3
    return-object p1
.end method

.method private T1(Lzm/a0;IJ)Landroid/util/Pair;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzm/a0;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lzm/a0;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iput p2, p0, Lio/bidmachine/media3/exoplayer/u0;->v0:I

    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long p1, p3, p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-wide/16 p3, 0x0

    .line 19
    .line 20
    :cond_0
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/u0;->x0:J

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lio/bidmachine/media3/exoplayer/u0;->w0:I

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :cond_1
    const/4 v0, -0x1

    .line 28
    if-eq p2, v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Lzm/a0;->p()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lt p2, v0, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    move v3, p2

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/u0;->J:Z

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lzm/a0;->a(Z)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget-object p3, p0, Lzm/e;->a:Lzm/a0$c;

    .line 46
    .line 47
    invoke-virtual {p1, p2, p3}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p3}, Lzm/a0$c;->b()J

    .line 52
    .line 53
    .line 54
    move-result-wide p3

    .line 55
    goto :goto_0

    .line 56
    :goto_2
    iget-object v1, p0, Lzm/e;->a:Lzm/a0$c;

    .line 57
    .line 58
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 59
    .line 60
    invoke-static {p3, p4}, Lcn/m0;->S0(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    move-object v0, p1

    .line 65
    invoke-virtual/range {v0 .. v5}, Lzm/a0;->j(Lzm/a0$c;Lzm/a0$b;IJ)Landroid/util/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method public static synthetic U(Lzm/s;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->J1(Lzm/s;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private U1(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->e0:Lcn/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/d0;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->e0:Lcn/d0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcn/d0;->a()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eq p2, v0, :cond_1

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcn/d0;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcn/d0;-><init>(II)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->e0:Lcn/d0;

    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 25
    .line 26
    new-instance v1, Lio/bidmachine/media3/exoplayer/d0;

    .line 27
    .line 28
    invoke-direct {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/d0;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const/16 v2, 0x18

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lcn/q;->l(ILcn/q$a;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcn/d0;

    .line 37
    .line 38
    invoke-direct {v0, p1, p2}, Lcn/d0;-><init>(II)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    const/16 p2, 0xe

    .line 43
    .line 44
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public static synthetic V(Lio/bidmachine/media3/exoplayer/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->v1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private V1(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-direct {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 23
    .line 24
    new-instance v0, Lio/bidmachine/media3/exoplayer/l0;

    .line 25
    .line 26
    invoke-direct {v0, p2}, Lio/bidmachine/media3/exoplayer/l0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/16 p2, 0x15

    .line 30
    .line 31
    invoke-virtual {p1, p2, v0}, Lcn/q;->l(ILcn/q$a;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic W(ILzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->w1(ILzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private W0(ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/r;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/d2$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lio/bidmachine/media3/exoplayer/d2$c;

    .line 14
    .line 15
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lio/bidmachine/media3/exoplayer/source/r;

    .line 20
    .line 21
    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/u0;->q:Z

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/d2$c;-><init>(Lio/bidmachine/media3/exoplayer/source/r;Z)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/u0;->p:Ljava/util/List;

    .line 30
    .line 31
    add-int v4, v1, p1

    .line 32
    .line 33
    new-instance v5, Lio/bidmachine/media3/exoplayer/u0$e;

    .line 34
    .line 35
    iget-object v6, v2, Lio/bidmachine/media3/exoplayer/d2$c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/d2$c;->a:Lio/bidmachine/media3/exoplayer/source/p;

    .line 38
    .line 39
    invoke-direct {v5, v6, v2}, Lio/bidmachine/media3/exoplayer/u0$e;-><init>(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/p;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/u0;->O:Lsn/t;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-interface {p2, p1, v1}, Lsn/t;->cloneAndInsert(II)Lsn/t;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->O:Lsn/t;

    .line 59
    .line 60
    return-object v0
.end method

.method private W1(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/u0;->q0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 10
    .line 11
    iget v1, p1, Lio/bidmachine/media3/exoplayer/e2;->n:I

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-ne v1, v2, :cond_2

    .line 15
    .line 16
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/e2;->l:Z

    .line 17
    .line 18
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/u0;->k2(ZI)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 23
    .line 24
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/e2;->l:Z

    .line 25
    .line 26
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/u0;->k2(ZI)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic X(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->H1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private X0()Lzm/s;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->getCurrentTimeline()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->t0:Lzm/s;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->x()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lzm/e;->a:Lzm/a0$c;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lzm/a0$c;->c:Lzm/q;

    .line 25
    .line 26
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->t0:Lzm/s;

    .line 27
    .line 28
    invoke-virtual {v1}, Lzm/s;->a()Lzm/s$b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v0, v0, Lzm/q;->e:Lzm/s;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lzm/s$b;->L(Lzm/s;)Lzm/s$b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lzm/s$b;->J()Lzm/s;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method private X1(Lzm/a0;Lio/bidmachine/media3/exoplayer/source/r$b;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lzm/a0$b;->n()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    add-long/2addr p3, p1

    .line 15
    return-wide p3
.end method

.method public static synthetic Y(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->M1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Y1(II)V
    .locals 2

    .line 1
    add-int/lit8 v0, p2, -0x1

    .line 2
    .line 3
    :goto_0
    if-lt v0, p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->p:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->O:Lsn/t;

    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Lsn/t;->a(II)Lsn/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->O:Lsn/t;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic Z(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->Q1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private Z1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->Z:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->A:Lio/bidmachine/media3/exoplayer/u0$d;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->e1(Lio/bidmachine/media3/exoplayer/f2$b;)Lio/bidmachine/media3/exoplayer/f2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v2, 0x2710

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/f2;->m(I)Lio/bidmachine/media3/exoplayer/f2;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/f2;->l(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/f2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/f2;->k()Lio/bidmachine/media3/exoplayer/f2;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->Z:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 26
    .line 27
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->Z:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->b0:Landroid/view/TextureView;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 43
    .line 44
    if-eq v0, v2, :cond_1

    .line 45
    .line 46
    const-string v0, "ExoPlayerImpl"

    .line 47
    .line 48
    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 49
    .line 50
    invoke-static {v0, v2}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->b0:Landroid/view/TextureView;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->b0:Landroid/view/TextureView;

    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->Y:Landroid/view/SurfaceHolder;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 66
    .line 67
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->Y:Landroid/view/SurfaceHolder;

    .line 71
    .line 72
    :cond_3
    return-void
.end method

.method public static synthetic a0(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->K1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a1(Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->G:Lio/bidmachine/media3/exoplayer/q2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/q2;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 14
    .line 15
    iget v0, v0, Lio/bidmachine/media3/exoplayer/e2;->n:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method private a2(IILjava/lang/Object;)V
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->g:[Lio/bidmachine/media3/exoplayer/h2;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, -0x1

    .line 7
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    aget-object v5, v0, v3

    .line 10
    .line 11
    if-eq p1, v4, :cond_0

    .line 12
    .line 13
    invoke-interface {v5}, Lio/bidmachine/media3/exoplayer/h2;->getTrackType()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ne v4, p1, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, v5}, Lio/bidmachine/media3/exoplayer/u0;->e1(Lio/bidmachine/media3/exoplayer/f2$b;)Lio/bidmachine/media3/exoplayer/f2;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4, p2}, Lio/bidmachine/media3/exoplayer/f2;->m(I)Lio/bidmachine/media3/exoplayer/f2;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, p3}, Lio/bidmachine/media3/exoplayer/f2;->l(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/f2;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/f2;->k()Lio/bidmachine/media3/exoplayer/f2;

    .line 32
    .line 33
    .line 34
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->h:[Lio/bidmachine/media3/exoplayer/h2;

    .line 38
    .line 39
    array-length v1, v0

    .line 40
    :goto_1
    if-ge v2, v1, :cond_5

    .line 41
    .line 42
    aget-object v3, v0, v2

    .line 43
    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    if-eq p1, v4, :cond_3

    .line 47
    .line 48
    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/h2;->getTrackType()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-ne v5, p1, :cond_4

    .line 53
    .line 54
    :cond_3
    invoke-direct {p0, v3}, Lio/bidmachine/media3/exoplayer/u0;->e1(Lio/bidmachine/media3/exoplayer/f2$b;)Lio/bidmachine/media3/exoplayer/f2;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3, p2}, Lio/bidmachine/media3/exoplayer/f2;->m(I)Lio/bidmachine/media3/exoplayer/f2;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3, p3}, Lio/bidmachine/media3/exoplayer/f2;->l(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/f2;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/f2;->k()Lio/bidmachine/media3/exoplayer/f2;

    .line 67
    .line 68
    .line 69
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    return-void
.end method

.method public static synthetic b0(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->G1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static b1(Lio/bidmachine/media3/exoplayer/o2;)Lzm/k;
    .locals 3
    .param p0    # Lio/bidmachine/media3/exoplayer/o2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lzm/k$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lzm/k$b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/o2;->j()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v1

    .line 15
    :goto_0
    invoke-virtual {v0, v2}, Lzm/k$b;->g(I)Lzm/k$b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/o2;->i()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :cond_1
    invoke-virtual {v0, v1}, Lzm/k$b;->f(I)Lzm/k$b;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lzm/k$b;->e()Lzm/k;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private b2(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic c0(FLzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->B1(FLzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c1()Lzm/a0;
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/g2;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->p:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->O:Lsn/t;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/g2;-><init>(Ljava/util/Collection;Lsn/t;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static synthetic d0(Lio/bidmachine/media3/exoplayer/u0;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->C1(Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d1(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzm/q;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/r;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->r:Lio/bidmachine/media3/exoplayer/source/r$a;

    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lzm/q;

    .line 20
    .line 21
    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/source/r$a;->d(Lzm/q;)Lio/bidmachine/media3/exoplayer/source/r;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method private d2(Ljava/util/List;IJZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/r;",
            ">;IJZ)V"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    iget-object v1, v9, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 6
    .line 7
    invoke-direct {v9, v1}, Lio/bidmachine/media3/exoplayer/u0;->j1(Lio/bidmachine/media3/exoplayer/e2;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/u0;->getCurrentPosition()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget v4, v9, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    add-int/2addr v4, v5

    .line 19
    iput v4, v9, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 20
    .line 21
    iget-object v4, v9, Lio/bidmachine/media3/exoplayer/u0;->p:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v6, 0x0

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    iget-object v4, v9, Lio/bidmachine/media3/exoplayer/u0;->p:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v9, v6, v4}, Lio/bidmachine/media3/exoplayer/u0;->Y1(II)V

    .line 37
    .line 38
    .line 39
    :cond_0
    move-object/from16 v4, p1

    .line 40
    .line 41
    invoke-direct {v9, v6, v4}, Lio/bidmachine/media3/exoplayer/u0;->W0(ILjava/util/List;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/u0;->c1()Lzm/a0;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Lzm/a0;->q()Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_1

    .line 54
    .line 55
    invoke-virtual {v4}, Lzm/a0;->p()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ge v0, v7, :cond_2

    .line 60
    .line 61
    :cond_1
    move-wide/from16 v7, p3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v1, Lio/bidmachine/media3/common/IllegalSeekPositionException;

    .line 65
    .line 66
    move-wide/from16 v7, p3

    .line 67
    .line 68
    invoke-direct {v1, v4, v0, v7, v8}, Lio/bidmachine/media3/common/IllegalSeekPositionException;-><init>(Lzm/a0;IJ)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :goto_0
    const/4 v10, -0x1

    .line 73
    if-eqz p5, :cond_3

    .line 74
    .line 75
    iget-boolean v0, v9, Lio/bidmachine/media3/exoplayer/u0;->J:Z

    .line 76
    .line 77
    invoke-virtual {v4, v0}, Lzm/a0;->a(Z)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    move v12, v0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    if-ne v0, v10, :cond_4

    .line 89
    .line 90
    move v12, v1

    .line 91
    move-wide v1, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move v12, v0

    .line 94
    move-wide v1, v7

    .line 95
    :goto_1
    iget-object v0, v9, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 96
    .line 97
    invoke-direct {v9, v4, v12, v1, v2}, Lio/bidmachine/media3/exoplayer/u0;->T1(Lzm/a0;IJ)Landroid/util/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v9, v0, v4, v3}, Lio/bidmachine/media3/exoplayer/u0;->S1(Lio/bidmachine/media3/exoplayer/e2;Lzm/a0;Landroid/util/Pair;)Lio/bidmachine/media3/exoplayer/e2;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget v3, v0, Lio/bidmachine/media3/exoplayer/e2;->e:I

    .line 106
    .line 107
    if-eq v12, v10, :cond_7

    .line 108
    .line 109
    if-eq v3, v5, :cond_7

    .line 110
    .line 111
    invoke-virtual {v4}, Lzm/a0;->q()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_6

    .line 116
    .line 117
    invoke-virtual {v4}, Lzm/a0;->p()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-lt v12, v3, :cond_5

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    const/4 v3, 0x2

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    :goto_2
    const/4 v3, 0x4

    .line 127
    :cond_7
    :goto_3
    invoke-static {v0, v3}, Lio/bidmachine/media3/exoplayer/u0;->R1(Lio/bidmachine/media3/exoplayer/e2;I)Lio/bidmachine/media3/exoplayer/e2;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v10, v9, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 132
    .line 133
    invoke-static {v1, v2}, Lcn/m0;->S0(J)J

    .line 134
    .line 135
    .line 136
    move-result-wide v13

    .line 137
    iget-object v15, v9, Lio/bidmachine/media3/exoplayer/u0;->O:Lsn/t;

    .line 138
    .line 139
    invoke-virtual/range {v10 .. v15}, Lio/bidmachine/media3/exoplayer/i1;->h1(Ljava/util/List;IJLsn/t;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, v9, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 143
    .line 144
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 145
    .line 146
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 147
    .line 148
    iget-object v1, v3, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 149
    .line 150
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_8

    .line 157
    .line 158
    iget-object v0, v9, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 159
    .line 160
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 161
    .line 162
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_8

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_8
    move v5, v6

    .line 170
    :goto_4
    invoke-direct {v9, v3}, Lio/bidmachine/media3/exoplayer/u0;->i1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v6

    .line 174
    const/4 v8, -0x1

    .line 175
    const/4 v10, 0x0

    .line 176
    const/4 v2, 0x0

    .line 177
    const/4 v4, 0x4

    .line 178
    move-object/from16 v0, p0

    .line 179
    .line 180
    move-object v1, v3

    .line 181
    move v3, v5

    .line 182
    move-wide v5, v6

    .line 183
    move v7, v8

    .line 184
    move v8, v10

    .line 185
    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/u0;->l2(Lio/bidmachine/media3/exoplayer/e2;IZIJIZ)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public static synthetic e0(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->O1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e1(Lio/bidmachine/media3/exoplayer/f2$b;)Lio/bidmachine/media3/exoplayer/f2;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->j1(Lio/bidmachine/media3/exoplayer/e2;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v8, Lio/bidmachine/media3/exoplayer/f2;

    .line 8
    .line 9
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 12
    .line 13
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_0
    move v5, v0

    .line 20
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/u0;->y:Lcn/h;

    .line 21
    .line 22
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/i1;->K()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    move-object v1, v8

    .line 27
    move-object v3, p1

    .line 28
    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/f2;-><init>(Lio/bidmachine/media3/exoplayer/f2$a;Lio/bidmachine/media3/exoplayer/f2$b;Lzm/a0;ILcn/h;Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    return-object v8
.end method

.method private e2(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/u0;->a0:Z

    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->Y:Landroid/view/SurfaceHolder;

    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->Y:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->Y:Landroid/view/SurfaceHolder;

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/u0;->U1(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0, v0, v0}, Lio/bidmachine/media3/exoplayer/u0;->U1(II)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public static synthetic f0(Lio/bidmachine/media3/exoplayer/u0;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/u0;->V1(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f1(Lio/bidmachine/media3/exoplayer/e2;Lio/bidmachine/media3/exoplayer/e2;ZIZZ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/e2;",
            "Lio/bidmachine/media3/exoplayer/e2;",
            "ZIZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 2
    .line 3
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 4
    .line 5
    invoke-virtual {v1}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance p1, Landroid/util/Pair;

    .line 23
    .line 24
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {v1}, Lzm/a0;->q()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x3

    .line 39
    if-eq v2, v4, :cond_1

    .line 40
    .line 41
    new-instance p1, Landroid/util/Pair;

    .line 42
    .line 43
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_1
    iget-object v2, p2, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 54
    .line 55
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 58
    .line 59
    invoke-virtual {v0, v2, v4}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget v2, v2, Lzm/a0$b;->c:I

    .line 64
    .line 65
    iget-object v4, p0, Lzm/e;->a:Lzm/a0$c;

    .line 66
    .line 67
    invoke-virtual {v0, v2, v4}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lzm/a0$c;->a:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 74
    .line 75
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 78
    .line 79
    invoke-virtual {v1, v2, v4}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v2, v2, Lzm/a0$b;->c:I

    .line 84
    .line 85
    iget-object v4, p0, Lzm/e;->a:Lzm/a0$c;

    .line 86
    .line 87
    invoke-virtual {v1, v2, v4}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Lzm/a0$c;->a:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v1, 0x2

    .line 98
    const/4 v2, 0x1

    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    if-eqz p3, :cond_2

    .line 102
    .line 103
    if-nez p4, :cond_2

    .line 104
    .line 105
    move v5, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    if-eqz p3, :cond_3

    .line 108
    .line 109
    if-ne p4, v2, :cond_3

    .line 110
    .line 111
    move v5, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    if-eqz p5, :cond_4

    .line 114
    .line 115
    :goto_0
    new-instance p1, Landroid/util/Pair;

    .line 116
    .line 117
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-object p1

    .line 127
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_5
    if-eqz p3, :cond_6

    .line 134
    .line 135
    if-nez p4, :cond_6

    .line 136
    .line 137
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 138
    .line 139
    iget-wide v4, p2, Lio/bidmachine/media3/exoplayer/source/r$b;->d:J

    .line 140
    .line 141
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 142
    .line 143
    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/source/r$b;->d:J

    .line 144
    .line 145
    cmp-long p1, v4, p1

    .line 146
    .line 147
    if-gez p1, :cond_6

    .line 148
    .line 149
    new-instance p1, Landroid/util/Pair;

    .line 150
    .line 151
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    .line 153
    const/4 p3, 0x0

    .line 154
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    return-object p1

    .line 162
    :cond_6
    if-eqz p3, :cond_7

    .line 163
    .line 164
    if-ne p4, v2, :cond_7

    .line 165
    .line 166
    if-eqz p6, :cond_7

    .line 167
    .line 168
    new-instance p1, Landroid/util/Pair;

    .line 169
    .line 170
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    return-object p1

    .line 180
    :cond_7
    new-instance p1, Landroid/util/Pair;

    .line 181
    .line 182
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    return-object p1
.end method

.method private f2(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->g2(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->X:Landroid/view/Surface;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic g0(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->N1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g2(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->W:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/u0;->F:J

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    :goto_1
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 21
    .line 22
    invoke-virtual {v3, p1, v1, v2}, Lio/bidmachine/media3/exoplayer/i1;->w1(Ljava/lang/Object;J)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->W:Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->X:Landroid/view/Surface;

    .line 31
    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->X:Landroid/view/Surface;

    .line 39
    .line 40
    :cond_2
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->W:Ljava/lang/Object;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    new-instance p1, Lio/bidmachine/media3/exoplayer/ExoTimeoutException;

    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    invoke-direct {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x3eb

    .line 51
    .line 52
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->f(Ljava/lang/RuntimeException;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->i2(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public static synthetic h0(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->I1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private h1(Lio/bidmachine/media3/exoplayer/e2;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 10
    .line 11
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 12
    .line 13
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 18
    .line 19
    .line 20
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/e2;->c:J

    .line 21
    .line 22
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->j1(Lio/bidmachine/media3/exoplayer/e2;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iget-object v1, p0, Lzm/e;->a:Lzm/a0$c;

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lzm/a0$c;->b()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 49
    .line 50
    invoke-virtual {v0}, Lzm/a0$b;->m()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/e2;->c:J

    .line 55
    .line 56
    invoke-static {v2, v3}, Lcn/m0;->u1(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    add-long/2addr v0, v2

    .line 61
    :goto_0
    return-wide v0

    .line 62
    :cond_1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->i1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Lcn/m0;->u1(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    return-wide v0
.end method

.method public static synthetic i0(ILzm/w$e;Lzm/w$e;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/u0;->E1(ILzm/w$e;Lzm/w$e;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i1(Lio/bidmachine/media3/exoplayer/e2;)J
    .locals 3

    .line 1
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/u0;->x0:J

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcn/m0;->S0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/e2;->p:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/e2;->m()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 26
    .line 27
    :goto_0
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 28
    .line 29
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    return-wide v0

    .line 36
    :cond_2
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 37
    .line 38
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 39
    .line 40
    invoke-direct {p0, v2, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/u0;->X1(Lzm/a0;Lio/bidmachine/media3/exoplayer/source/r$b;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    return-wide v0
.end method

.method private i2(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V
    .locals 11
    .param p1    # Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 2
    .line 3
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/e2;->c(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/e2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 10
    .line 11
    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/e2;->q:J

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/e2;->r:J

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/u0;->R1(Lio/bidmachine/media3/exoplayer/e2;I)Lio/bidmachine/media3/exoplayer/e2;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/e2;->f(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)Lio/bidmachine/media3/exoplayer/e2;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_0
    move-object v3, v0

    .line 29
    iget p1, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 30
    .line 31
    add-int/2addr p1, v1

    .line 32
    iput p1, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 33
    .line 34
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 35
    .line 36
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/i1;->G1()V

    .line 37
    .line 38
    .line 39
    const/4 v9, -0x1

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x5

    .line 44
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    move-object v2, p0

    .line 50
    invoke-direct/range {v2 .. v10}, Lio/bidmachine/media3/exoplayer/u0;->l2(Lio/bidmachine/media3/exoplayer/e2;IZIJIZ)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static synthetic j0(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->P1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j1(Lio/bidmachine/media3/exoplayer/e2;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lio/bidmachine/media3/exoplayer/u0;->v0:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 13
    .line 14
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 15
    .line 16
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget p1, p1, Lzm/a0$b;->c:I

    .line 25
    .line 26
    return p1
.end method

.method private j2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->R:Lzm/w$b;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->f:Lzm/w;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->c:Lzm/w$b;

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcn/m0;->O(Lzm/w;Lzm/w$b;)Lzm/w$b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->R:Lzm/w$b;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lzm/w$b;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 20
    .line 21
    new-instance v1, Lio/bidmachine/media3/exoplayer/j0;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/j0;-><init>(Lio/bidmachine/media3/exoplayer/u0;)V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0xd

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static synthetic k0(Lio/bidmachine/media3/exoplayer/e2;ILzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/u0;->D1(Lio/bidmachine/media3/exoplayer/e2;ILzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k2(ZI)V
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->a1(Z)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 6
    .line 7
    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/e2;->l:Z

    .line 8
    .line 9
    if-ne v2, p1, :cond_0

    .line 10
    .line 11
    iget v2, v1, Lio/bidmachine/media3/exoplayer/e2;->n:I

    .line 12
    .line 13
    if-ne v2, v0, :cond_0

    .line 14
    .line 15
    iget v2, v1, Lio/bidmachine/media3/exoplayer/e2;->m:I

    .line 16
    .line 17
    if-ne v2, p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget v2, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    iput v2, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 25
    .line 26
    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/e2;->p:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/e2;->a()Lio/bidmachine/media3/exoplayer/e2;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    invoke-virtual {v1, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/e2;->e(ZII)Lio/bidmachine/media3/exoplayer/e2;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 39
    .line 40
    invoke-virtual {v1, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/i1;->k1(ZII)V

    .line 41
    .line 42
    .line 43
    const/4 v9, -0x1

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x5

    .line 48
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    move-object v2, p0

    .line 54
    invoke-direct/range {v2 .. v10}, Lio/bidmachine/media3/exoplayer/u0;->l2(Lio/bidmachine/media3/exoplayer/e2;IZIJIZ)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static synthetic l0(Lzm/d0;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->A1(Lzm/d0;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private l2(Lio/bidmachine/media3/exoplayer/e2;IZIJIZ)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p4

    .line 6
    .line 7
    iget-object v10, v7, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 8
    .line 9
    iput-object v8, v7, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 10
    .line 11
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 12
    .line 13
    iget-object v1, v8, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lzm/a0;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v11

    .line 19
    xor-int/lit8 v5, v11, 0x1

    .line 20
    .line 21
    move-object/from16 v0, p0

    .line 22
    .line 23
    move-object/from16 v1, p1

    .line 24
    .line 25
    move-object v2, v10

    .line 26
    move/from16 v3, p3

    .line 27
    .line 28
    move/from16 v4, p4

    .line 29
    .line 30
    move/from16 v6, p8

    .line 31
    .line 32
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/u0;->f1(Lio/bidmachine/media3/exoplayer/e2;Lio/bidmachine/media3/exoplayer/e2;ZIZZ)Landroid/util/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 56
    .line 57
    invoke-virtual {v3}, Lzm/a0;->q()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_0

    .line 62
    .line 63
    iget-object v2, v8, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 64
    .line 65
    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 66
    .line 67
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 68
    .line 69
    iget-object v4, v7, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget v2, v2, Lzm/a0$b;->c:I

    .line 76
    .line 77
    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 78
    .line 79
    iget-object v4, v7, Lzm/e;->a:Lzm/a0$c;

    .line 80
    .line 81
    invoke-virtual {v3, v2, v4}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget-object v2, v2, Lzm/a0$c;->c:Lzm/q;

    .line 86
    .line 87
    :cond_0
    sget-object v3, Lzm/s;->I:Lzm/s;

    .line 88
    .line 89
    iput-object v3, v7, Lio/bidmachine/media3/exoplayer/u0;->t0:Lzm/s;

    .line 90
    .line 91
    :cond_1
    if-nez v1, :cond_2

    .line 92
    .line 93
    iget-object v3, v10, Lio/bidmachine/media3/exoplayer/e2;->j:Ljava/util/List;

    .line 94
    .line 95
    iget-object v4, v8, Lio/bidmachine/media3/exoplayer/e2;->j:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_3

    .line 102
    .line 103
    :cond_2
    iget-object v3, v7, Lio/bidmachine/media3/exoplayer/u0;->t0:Lzm/s;

    .line 104
    .line 105
    invoke-virtual {v3}, Lzm/s;->a()Lzm/s$b;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    iget-object v4, v8, Lio/bidmachine/media3/exoplayer/e2;->j:Ljava/util/List;

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Lzm/s$b;->M(Ljava/util/List;)Lzm/s$b;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lzm/s$b;->J()Lzm/s;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iput-object v3, v7, Lio/bidmachine/media3/exoplayer/u0;->t0:Lzm/s;

    .line 120
    .line 121
    :cond_3
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/u0;->X0()Lzm/s;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget-object v4, v7, Lio/bidmachine/media3/exoplayer/u0;->S:Lzm/s;

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Lzm/s;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iput-object v3, v7, Lio/bidmachine/media3/exoplayer/u0;->S:Lzm/s;

    .line 132
    .line 133
    iget-boolean v3, v10, Lio/bidmachine/media3/exoplayer/e2;->l:Z

    .line 134
    .line 135
    iget-boolean v5, v8, Lio/bidmachine/media3/exoplayer/e2;->l:Z

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    const/4 v12, 0x1

    .line 139
    if-eq v3, v5, :cond_4

    .line 140
    .line 141
    move v3, v12

    .line 142
    goto :goto_0

    .line 143
    :cond_4
    move v3, v6

    .line 144
    :goto_0
    iget v5, v10, Lio/bidmachine/media3/exoplayer/e2;->e:I

    .line 145
    .line 146
    iget v13, v8, Lio/bidmachine/media3/exoplayer/e2;->e:I

    .line 147
    .line 148
    if-eq v5, v13, :cond_5

    .line 149
    .line 150
    move v5, v12

    .line 151
    goto :goto_1

    .line 152
    :cond_5
    move v5, v6

    .line 153
    :goto_1
    if-nez v5, :cond_6

    .line 154
    .line 155
    if-eqz v3, :cond_7

    .line 156
    .line 157
    :cond_6
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/u0;->n2()V

    .line 158
    .line 159
    .line 160
    :cond_7
    iget-boolean v13, v10, Lio/bidmachine/media3/exoplayer/e2;->g:Z

    .line 161
    .line 162
    iget-boolean v14, v8, Lio/bidmachine/media3/exoplayer/e2;->g:Z

    .line 163
    .line 164
    if-eq v13, v14, :cond_8

    .line 165
    .line 166
    move v13, v12

    .line 167
    goto :goto_2

    .line 168
    :cond_8
    move v13, v6

    .line 169
    :goto_2
    if-eqz v13, :cond_9

    .line 170
    .line 171
    invoke-direct {v7, v14}, Lio/bidmachine/media3/exoplayer/u0;->m2(Z)V

    .line 172
    .line 173
    .line 174
    :cond_9
    if-nez v11, :cond_a

    .line 175
    .line 176
    iget-object v11, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 177
    .line 178
    new-instance v14, Lio/bidmachine/media3/exoplayer/n0;

    .line 179
    .line 180
    move/from16 v15, p2

    .line 181
    .line 182
    invoke-direct {v14, v8, v15}, Lio/bidmachine/media3/exoplayer/n0;-><init>(Lio/bidmachine/media3/exoplayer/e2;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11, v6, v14}, Lcn/q;->i(ILcn/q$a;)V

    .line 186
    .line 187
    .line 188
    :cond_a
    if-eqz p3, :cond_b

    .line 189
    .line 190
    move/from16 v6, p7

    .line 191
    .line 192
    invoke-direct {v7, v9, v10, v6}, Lio/bidmachine/media3/exoplayer/u0;->n1(ILio/bidmachine/media3/exoplayer/e2;I)Lzm/w$e;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    move-wide/from16 v14, p5

    .line 197
    .line 198
    invoke-direct {v7, v14, v15}, Lio/bidmachine/media3/exoplayer/u0;->m1(J)Lzm/w$e;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    iget-object v14, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 203
    .line 204
    new-instance v15, Lio/bidmachine/media3/exoplayer/s0;

    .line 205
    .line 206
    invoke-direct {v15, v9, v6, v11}, Lio/bidmachine/media3/exoplayer/s0;-><init>(ILzm/w$e;Lzm/w$e;)V

    .line 207
    .line 208
    .line 209
    const/16 v6, 0xb

    .line 210
    .line 211
    invoke-virtual {v14, v6, v15}, Lcn/q;->i(ILcn/q$a;)V

    .line 212
    .line 213
    .line 214
    :cond_b
    if-eqz v1, :cond_c

    .line 215
    .line 216
    iget-object v1, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 217
    .line 218
    new-instance v6, Lio/bidmachine/media3/exoplayer/t0;

    .line 219
    .line 220
    invoke-direct {v6, v2, v0}, Lio/bidmachine/media3/exoplayer/t0;-><init>(Lzm/q;I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v12, v6}, Lcn/q;->i(ILcn/q$a;)V

    .line 224
    .line 225
    .line 226
    :cond_c
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/e2;->f:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 227
    .line 228
    iget-object v1, v8, Lio/bidmachine/media3/exoplayer/e2;->f:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 229
    .line 230
    if-eq v0, v1, :cond_d

    .line 231
    .line 232
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 233
    .line 234
    new-instance v1, Lio/bidmachine/media3/exoplayer/t;

    .line 235
    .line 236
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/t;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 237
    .line 238
    .line 239
    const/16 v2, 0xa

    .line 240
    .line 241
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v8, Lio/bidmachine/media3/exoplayer/e2;->f:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 245
    .line 246
    if-eqz v0, :cond_d

    .line 247
    .line 248
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 249
    .line 250
    new-instance v1, Lio/bidmachine/media3/exoplayer/u;

    .line 251
    .line 252
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/u;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 256
    .line 257
    .line 258
    :cond_d
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/e2;->i:Lvn/w;

    .line 259
    .line 260
    iget-object v1, v8, Lio/bidmachine/media3/exoplayer/e2;->i:Lvn/w;

    .line 261
    .line 262
    if-eq v0, v1, :cond_e

    .line 263
    .line 264
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->i:Lvn/v;

    .line 265
    .line 266
    iget-object v1, v1, Lvn/w;->e:Ljava/lang/Object;

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Lvn/v;->i(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 272
    .line 273
    new-instance v1, Lio/bidmachine/media3/exoplayer/v;

    .line 274
    .line 275
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/v;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 276
    .line 277
    .line 278
    const/4 v2, 0x2

    .line 279
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 280
    .line 281
    .line 282
    :cond_e
    if-nez v4, :cond_f

    .line 283
    .line 284
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->S:Lzm/s;

    .line 285
    .line 286
    iget-object v1, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 287
    .line 288
    new-instance v2, Lio/bidmachine/media3/exoplayer/w;

    .line 289
    .line 290
    invoke-direct {v2, v0}, Lio/bidmachine/media3/exoplayer/w;-><init>(Lzm/s;)V

    .line 291
    .line 292
    .line 293
    const/16 v0, 0xe

    .line 294
    .line 295
    invoke-virtual {v1, v0, v2}, Lcn/q;->i(ILcn/q$a;)V

    .line 296
    .line 297
    .line 298
    :cond_f
    if-eqz v13, :cond_10

    .line 299
    .line 300
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 301
    .line 302
    new-instance v1, Lio/bidmachine/media3/exoplayer/x;

    .line 303
    .line 304
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/x;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 305
    .line 306
    .line 307
    const/4 v2, 0x3

    .line 308
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 309
    .line 310
    .line 311
    :cond_10
    if-nez v5, :cond_11

    .line 312
    .line 313
    if-eqz v3, :cond_12

    .line 314
    .line 315
    :cond_11
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 316
    .line 317
    new-instance v1, Lio/bidmachine/media3/exoplayer/y;

    .line 318
    .line 319
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/y;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 320
    .line 321
    .line 322
    const/4 v2, -0x1

    .line 323
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 324
    .line 325
    .line 326
    :cond_12
    if-eqz v5, :cond_13

    .line 327
    .line 328
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 329
    .line 330
    new-instance v1, Lio/bidmachine/media3/exoplayer/z;

    .line 331
    .line 332
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/z;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 333
    .line 334
    .line 335
    const/4 v2, 0x4

    .line 336
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 337
    .line 338
    .line 339
    :cond_13
    if-nez v3, :cond_14

    .line 340
    .line 341
    iget v0, v10, Lio/bidmachine/media3/exoplayer/e2;->m:I

    .line 342
    .line 343
    iget v1, v8, Lio/bidmachine/media3/exoplayer/e2;->m:I

    .line 344
    .line 345
    if-eq v0, v1, :cond_15

    .line 346
    .line 347
    :cond_14
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 348
    .line 349
    new-instance v1, Lio/bidmachine/media3/exoplayer/o0;

    .line 350
    .line 351
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/o0;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 352
    .line 353
    .line 354
    const/4 v2, 0x5

    .line 355
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 356
    .line 357
    .line 358
    :cond_15
    iget v0, v10, Lio/bidmachine/media3/exoplayer/e2;->n:I

    .line 359
    .line 360
    iget v1, v8, Lio/bidmachine/media3/exoplayer/e2;->n:I

    .line 361
    .line 362
    if-eq v0, v1, :cond_16

    .line 363
    .line 364
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 365
    .line 366
    new-instance v1, Lio/bidmachine/media3/exoplayer/p0;

    .line 367
    .line 368
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/p0;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 369
    .line 370
    .line 371
    const/4 v2, 0x6

    .line 372
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 373
    .line 374
    .line 375
    :cond_16
    invoke-virtual {v10}, Lio/bidmachine/media3/exoplayer/e2;->n()Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/e2;->n()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-eq v0, v1, :cond_17

    .line 384
    .line 385
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 386
    .line 387
    new-instance v1, Lio/bidmachine/media3/exoplayer/q0;

    .line 388
    .line 389
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/q0;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 390
    .line 391
    .line 392
    const/4 v2, 0x7

    .line 393
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 394
    .line 395
    .line 396
    :cond_17
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/e2;->o:Lzm/v;

    .line 397
    .line 398
    iget-object v1, v8, Lio/bidmachine/media3/exoplayer/e2;->o:Lzm/v;

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Lzm/v;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-nez v0, :cond_18

    .line 405
    .line 406
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 407
    .line 408
    new-instance v1, Lio/bidmachine/media3/exoplayer/r0;

    .line 409
    .line 410
    invoke-direct {v1, v8}, Lio/bidmachine/media3/exoplayer/r0;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 411
    .line 412
    .line 413
    const/16 v2, 0xc

    .line 414
    .line 415
    invoke-virtual {v0, v2, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 416
    .line 417
    .line 418
    :cond_18
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/u0;->j2()V

    .line 419
    .line 420
    .line 421
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 422
    .line 423
    invoke-virtual {v0}, Lcn/q;->f()V

    .line 424
    .line 425
    .line 426
    iget-boolean v0, v10, Lio/bidmachine/media3/exoplayer/e2;->p:Z

    .line 427
    .line 428
    iget-boolean v1, v8, Lio/bidmachine/media3/exoplayer/e2;->p:Z

    .line 429
    .line 430
    if-eq v0, v1, :cond_19

    .line 431
    .line 432
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/u0;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-eqz v1, :cond_19

    .line 443
    .line 444
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    check-cast v1, Lio/bidmachine/media3/exoplayer/ExoPlayer$a;

    .line 449
    .line 450
    iget-boolean v2, v8, Lio/bidmachine/media3/exoplayer/e2;->p:Z

    .line 451
    .line 452
    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayer$a;->z(Z)V

    .line 453
    .line 454
    .line 455
    goto :goto_3

    .line 456
    :cond_19
    return-void
.end method

.method public static synthetic m0(IILzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/u0;->r1(IILzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private m1(J)Lzm/w$e;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->x()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 6
    .line 7
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 16
    .line 17
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 18
    .line 19
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 22
    .line 23
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v3}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 29
    .line 30
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lzm/a0;->b(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 37
    .line 38
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 39
    .line 40
    iget-object v4, p0, Lzm/e;->a:Lzm/a0$c;

    .line 41
    .line 42
    invoke-virtual {v3, v2, v4}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v3, v3, Lzm/a0$c;->a:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v4, p0, Lzm/e;->a:Lzm/a0$c;

    .line 49
    .line 50
    iget-object v4, v4, Lzm/a0$c;->c:Lzm/q;

    .line 51
    .line 52
    move v5, v0

    .line 53
    move-object v12, v4

    .line 54
    move-object v4, v1

    .line 55
    move-object v1, v3

    .line 56
    move-object v3, v12

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    const/4 v1, -0x1

    .line 60
    move-object v3, v0

    .line 61
    move-object v4, v3

    .line 62
    move v5, v1

    .line 63
    move-object v1, v4

    .line 64
    :goto_0
    invoke-static {p1, p2}, Lcn/m0;->u1(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    new-instance p1, Lzm/w$e;

    .line 69
    .line 70
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 71
    .line 72
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 73
    .line 74
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 81
    .line 82
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/u0;->o1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    invoke-static {v8, v9}, Lcn/m0;->u1(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-wide v8, v6

    .line 92
    :goto_1
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 93
    .line 94
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 95
    .line 96
    iget v10, p2, Lio/bidmachine/media3/exoplayer/source/r$b;->b:I

    .line 97
    .line 98
    iget v11, p2, Lio/bidmachine/media3/exoplayer/source/r$b;->c:I

    .line 99
    .line 100
    move-object v0, p1

    .line 101
    invoke-direct/range {v0 .. v11}, Lzm/w$e;-><init>(Ljava/lang/Object;ILzm/q;Ljava/lang/Object;IJJII)V

    .line 102
    .line 103
    .line 104
    return-object p1
.end method

.method private m2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->o0:Lio/bidmachine/media3/common/PriorityTaskManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/u0;->p0:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lio/bidmachine/media3/exoplayer/u0;->n0:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/PriorityTaskManager;->a(I)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/u0;->p0:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/u0;->p0:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget p1, p0, Lio/bidmachine/media3/exoplayer/u0;->n0:I

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/PriorityTaskManager;->b(I)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/u0;->p0:Z

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic n0(ZLzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->z1(ZLzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n1(ILio/bidmachine/media3/exoplayer/e2;I)Lzm/w$e;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lzm/a0$b;

    .line 6
    .line 7
    invoke-direct {v2}, Lzm/a0$b;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 11
    .line 12
    invoke-virtual {v3}, Lzm/a0;->q()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, -0x1

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 20
    .line 21
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 24
    .line 25
    invoke-virtual {v5, v3, v2}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 26
    .line 27
    .line 28
    iget v5, v2, Lzm/a0$b;->c:I

    .line 29
    .line 30
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 31
    .line 32
    invoke-virtual {v6, v3}, Lzm/a0;->b(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 37
    .line 38
    iget-object v8, v0, Lzm/e;->a:Lzm/a0$c;

    .line 39
    .line 40
    invoke-virtual {v7, v5, v8}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iget-object v7, v7, Lzm/a0$c;->a:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v8, v0, Lzm/e;->a:Lzm/a0$c;

    .line 47
    .line 48
    iget-object v8, v8, Lzm/a0$c;->c:Lzm/q;

    .line 49
    .line 50
    move-object v9, v3

    .line 51
    move v10, v6

    .line 52
    move-object v6, v7

    .line 53
    move v7, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 56
    move/from16 v7, p3

    .line 57
    .line 58
    move-object v6, v3

    .line 59
    move-object v8, v6

    .line 60
    move-object v9, v8

    .line 61
    move v10, v4

    .line 62
    :goto_0
    if-nez p1, :cond_3

    .line 63
    .line 64
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 65
    .line 66
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 73
    .line 74
    iget v4, v3, Lio/bidmachine/media3/exoplayer/source/r$b;->b:I

    .line 75
    .line 76
    iget v3, v3, Lio/bidmachine/media3/exoplayer/source/r$b;->c:I

    .line 77
    .line 78
    invoke-virtual {v2, v4, v3}, Lzm/a0$b;->b(II)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-static/range {p2 .. p2}, Lio/bidmachine/media3/exoplayer/u0;->o1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 88
    .line 89
    iget v3, v3, Lio/bidmachine/media3/exoplayer/source/r$b;->e:I

    .line 90
    .line 91
    if-eq v3, v4, :cond_2

    .line 92
    .line 93
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 94
    .line 95
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/u0;->o1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    :goto_1
    move-wide v4, v2

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-wide v3, v2, Lzm/a0$b;->e:J

    .line 102
    .line 103
    iget-wide v11, v2, Lzm/a0$b;->d:J

    .line 104
    .line 105
    add-long v2, v3, v11

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 109
    .line 110
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 117
    .line 118
    invoke-static/range {p2 .. p2}, Lio/bidmachine/media3/exoplayer/u0;->o1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    iget-wide v2, v2, Lzm/a0$b;->e:J

    .line 124
    .line 125
    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 126
    .line 127
    add-long/2addr v2, v4

    .line 128
    goto :goto_1

    .line 129
    :goto_2
    new-instance v17, Lzm/w$e;

    .line 130
    .line 131
    invoke-static {v2, v3}, Lcn/m0;->u1(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v11

    .line 135
    invoke-static {v4, v5}, Lcn/m0;->u1(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v13

    .line 139
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 140
    .line 141
    iget v15, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->b:I

    .line 142
    .line 143
    iget v1, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->c:I

    .line 144
    .line 145
    move-object/from16 v5, v17

    .line 146
    .line 147
    move/from16 v16, v1

    .line 148
    .line 149
    invoke-direct/range {v5 .. v16}, Lzm/w$e;-><init>(Ljava/lang/Object;ILzm/q;Ljava/lang/Object;IJJII)V

    .line 150
    .line 151
    .line 152
    return-object v17
.end method

.method private n2()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->getPlaybackState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->q1()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/u0;->D:Lio/bidmachine/media3/exoplayer/t2;

    .line 30
    .line 31
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->getPlayWhenReady()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v1, v2

    .line 41
    :goto_0
    invoke-virtual {v3, v1}, Lio/bidmachine/media3/exoplayer/t2;->f(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->E:Lio/bidmachine/media3/exoplayer/w2;

    .line 45
    .line 46
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->getPlayWhenReady()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/w2;->f(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->D:Lio/bidmachine/media3/exoplayer/t2;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/t2;->f(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->E:Lio/bidmachine/media3/exoplayer/w2;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/w2;->f(Z)V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
.end method

.method public static synthetic o0(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->L1(Lio/bidmachine/media3/exoplayer/e2;Lzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static o1(Lio/bidmachine/media3/exoplayer/e2;)J
    .locals 6

    .line 1
    new-instance v0, Lzm/a0$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm/a0$c;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lzm/a0$b;

    .line 7
    .line 8
    invoke-direct {v1}, Lzm/a0$b;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 12
    .line 13
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 14
    .line 15
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v1}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/e2;->c:J

    .line 21
    .line 22
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v2, v2, v4

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 32
    .line 33
    iget v1, v1, Lzm/a0$b;->c:I

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lzm/a0$c;->c()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lzm/a0$b;->n()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/e2;->c:J

    .line 49
    .line 50
    add-long/2addr v0, v2

    .line 51
    :goto_0
    return-wide v0
.end method

.method private o2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->d:Lcn/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/k;->b()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->s()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->s()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/u0;->l0:Z

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/u0;->m0:Z

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 63
    .line 64
    .line 65
    :goto_0
    const-string v2, "ExoPlayerImpl"

    .line 66
    .line 67
    invoke-static {v2, v0, v1}, Lcn/r;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m0:Z

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic p0(Lio/bidmachine/media3/exoplayer/u0;Lio/bidmachine/media3/exoplayer/i1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->u1(Lio/bidmachine/media3/exoplayer/i1$e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private p1(Lio/bidmachine/media3/exoplayer/i1$e;)V
    .locals 11

    .line 1
    iget v1, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 2
    .line 3
    iget v2, p1, Lio/bidmachine/media3/exoplayer/i1$e;->c:I

    .line 4
    .line 5
    sub-int/2addr v1, v2

    .line 6
    iput v1, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 7
    .line 8
    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/i1$e;->d:Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget v2, p1, Lio/bidmachine/media3/exoplayer/i1$e;->e:I

    .line 14
    .line 15
    iput v2, p0, Lio/bidmachine/media3/exoplayer/u0;->L:I

    .line 16
    .line 17
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/u0;->M:Z

    .line 18
    .line 19
    :cond_0
    if-nez v1, :cond_a

    .line 20
    .line 21
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/i1$e;->b:Lio/bidmachine/media3/exoplayer/e2;

    .line 22
    .line 23
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 24
    .line 25
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 26
    .line 27
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 28
    .line 29
    invoke-virtual {v2}, Lzm/a0;->q()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v4, 0x0

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lzm/a0;->q()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const/4 v2, -0x1

    .line 43
    iput v2, p0, Lio/bidmachine/media3/exoplayer/u0;->v0:I

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    iput-wide v5, p0, Lio/bidmachine/media3/exoplayer/u0;->x0:J

    .line 48
    .line 49
    iput v4, p0, Lio/bidmachine/media3/exoplayer/u0;->w0:I

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v1}, Lzm/a0;->q()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    move-object v2, v1

    .line 58
    check-cast v2, Lio/bidmachine/media3/exoplayer/g2;

    .line 59
    .line 60
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/g2;->F()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/u0;->p:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-ne v5, v6, :cond_2

    .line 75
    .line 76
    move v5, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move v5, v4

    .line 79
    :goto_0
    invoke-static {v5}, Lcn/a;->g(Z)V

    .line 80
    .line 81
    .line 82
    move v5, v4

    .line 83
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-ge v5, v6, :cond_3

    .line 88
    .line 89
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/u0;->p:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Lio/bidmachine/media3/exoplayer/u0$e;

    .line 96
    .line 97
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Lzm/a0;

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Lio/bidmachine/media3/exoplayer/u0$e;->b(Lzm/a0;)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/u0;->M:Z

    .line 110
    .line 111
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    if-eqz v2, :cond_8

    .line 117
    .line 118
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/i1$e;->b:Lio/bidmachine/media3/exoplayer/e2;

    .line 119
    .line 120
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 121
    .line 122
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 123
    .line 124
    iget-object v7, v7, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 125
    .line 126
    invoke-virtual {v2, v7}, Lio/bidmachine/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/i1$e;->b:Lio/bidmachine/media3/exoplayer/e2;

    .line 133
    .line 134
    iget-wide v7, v2, Lio/bidmachine/media3/exoplayer/e2;->d:J

    .line 135
    .line 136
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 137
    .line 138
    iget-wide v9, v2, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 139
    .line 140
    cmp-long v2, v7, v9

    .line 141
    .line 142
    if-eqz v2, :cond_4

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    move v3, v4

    .line 146
    :cond_5
    :goto_2
    if-eqz v3, :cond_9

    .line 147
    .line 148
    invoke-virtual {v1}, Lzm/a0;->q()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_7

    .line 153
    .line 154
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/i1$e;->b:Lio/bidmachine/media3/exoplayer/e2;

    .line 155
    .line 156
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 157
    .line 158
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_6

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/i1$e;->b:Lio/bidmachine/media3/exoplayer/e2;

    .line 166
    .line 167
    iget-object v5, v2, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 168
    .line 169
    iget-wide v6, v2, Lio/bidmachine/media3/exoplayer/e2;->d:J

    .line 170
    .line 171
    invoke-direct {p0, v1, v5, v6, v7}, Lio/bidmachine/media3/exoplayer/u0;->X1(Lzm/a0;Lio/bidmachine/media3/exoplayer/source/r$b;J)J

    .line 172
    .line 173
    .line 174
    move-result-wide v1

    .line 175
    goto :goto_4

    .line 176
    :cond_7
    :goto_3
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/i1$e;->b:Lio/bidmachine/media3/exoplayer/e2;

    .line 177
    .line 178
    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/e2;->d:J

    .line 179
    .line 180
    :goto_4
    move-wide v5, v1

    .line 181
    goto :goto_5

    .line 182
    :cond_8
    move v3, v4

    .line 183
    :cond_9
    :goto_5
    iput-boolean v4, p0, Lio/bidmachine/media3/exoplayer/u0;->M:Z

    .line 184
    .line 185
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/i1$e;->b:Lio/bidmachine/media3/exoplayer/e2;

    .line 186
    .line 187
    iget v4, p0, Lio/bidmachine/media3/exoplayer/u0;->L:I

    .line 188
    .line 189
    const/4 v7, -0x1

    .line 190
    const/4 v8, 0x0

    .line 191
    const/4 v2, 0x1

    .line 192
    move-object v0, p0

    .line 193
    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/u0;->l2(Lio/bidmachine/media3/exoplayer/e2;IZIJIZ)V

    .line 194
    .line 195
    .line 196
    :cond_a
    return-void
.end method

.method public static synthetic q0(Lio/bidmachine/media3/exoplayer/u0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->W1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(ILzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->y1(ILzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic r1(IILzm/w$d;)V
    .locals 0

    .line 1
    invoke-interface {p2, p0, p1}, Lzm/w$d;->D(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s0(Lzm/q;ILzm/w$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/u0;->F1(Lzm/q;ILzm/w$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic s1(Lzm/w$d;Lzm/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->f:Lzm/w;

    .line 2
    .line 3
    new-instance v1, Lzm/w$c;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lzm/w$c;-><init>(Lzm/n;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lzm/w$d;->R(Lzm/w;Lzm/w$c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic t0(Lio/bidmachine/media3/exoplayer/u0;Lzm/w$d;Lzm/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/u0;->s1(Lzm/w$d;Lzm/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic t1(Lio/bidmachine/media3/exoplayer/i1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->p1(Lio/bidmachine/media3/exoplayer/i1$e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u0(Lio/bidmachine/media3/exoplayer/u0;Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->V:Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    return-object p1
.end method

.method private synthetic u1(Lio/bidmachine/media3/exoplayer/i1$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->j:Lcn/n;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/media3/exoplayer/i0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/i0;-><init>(Lio/bidmachine/media3/exoplayer/u0;Lio/bidmachine/media3/exoplayer/i1$e;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static synthetic v0(Lio/bidmachine/media3/exoplayer/u0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/u0;->j0:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic v1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->H:Lcn/f;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcn/m0;->J(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcn/f;->i(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic w0(Lio/bidmachine/media3/exoplayer/u0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/u0;->j0:Z

    .line 2
    .line 3
    return p1
.end method

.method private static synthetic w1(ILzm/w$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lzm/w$d;->I(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x0(Lio/bidmachine/media3/exoplayer/u0;Lbn/b;)Lbn/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->k0:Lbn/b;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic x1(Lzm/w$d;)V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoTimeoutException;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x3eb

    .line 8
    .line 9
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->f(Ljava/lang/RuntimeException;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lzm/w$d;->U(Lio/bidmachine/media3/common/PlaybackException;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic y0(Lio/bidmachine/media3/exoplayer/u0;)Lzm/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/u0;->t0:Lzm/s;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic y1(ILzm/w$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lzm/w$d;->onRepeatModeChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z0(Lio/bidmachine/media3/exoplayer/u0;Lzm/s;)Lzm/s;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->t0:Lzm/s;

    .line 2
    .line 3
    return-object p1
.end method

.method private static synthetic z1(ZLzm/w$d;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lzm/w$d;->onShuffleModeEnabledChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/u0;->v:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public B(Lzm/w$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 5
    .line 6
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lzm/w$d;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcn/q;->k(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public C(Lzm/w$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 2
    .line 3
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lzm/w$d;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcn/q;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public E(Lzm/d0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->i:Lvn/v;

    .line 5
    .line 6
    invoke-virtual {v0}, Lvn/v;->h()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->i:Lvn/v;

    .line 13
    .line 14
    invoke-virtual {v0}, Lvn/v;->c()Lzm/d0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lzm/d0;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->i:Lvn/v;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lvn/v;->m(Lzm/d0;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 31
    .line 32
    new-instance v1, Lio/bidmachine/media3/exoplayer/h0;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/h0;-><init>(Lzm/d0;)V

    .line 35
    .line 36
    .line 37
    const/16 p1, 0x13

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lcn/q;->l(ILcn/q$a;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method protected L(IJIZ)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    const/4 p4, -0x1

    .line 5
    if-ne p1, p4, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p4, 0x1

    .line 9
    if-ltz p1, :cond_1

    .line 10
    .line 11
    move v0, p4

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Lcn/a;->a(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 18
    .line 19
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 20
    .line 21
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lzm/a0;->p()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lt p1, v1, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 35
    .line 36
    invoke-interface {v1}, Lhn/a;->B()V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 40
    .line 41
    add-int/2addr v1, p4

    .line 42
    iput v1, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 43
    .line 44
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->isPlayingAd()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    const-string p1, "ExoPlayerImpl"

    .line 51
    .line 52
    const-string p2, "seekTo ignored because an ad is playing"

    .line 53
    .line 54
    invoke-static {p1, p2}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lio/bidmachine/media3/exoplayer/i1$e;

    .line 58
    .line 59
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 60
    .line 61
    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/i1$e;-><init>(Lio/bidmachine/media3/exoplayer/e2;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p4}, Lio/bidmachine/media3/exoplayer/i1$e;->b(I)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/u0;->k:Lio/bidmachine/media3/exoplayer/i1$f;

    .line 68
    .line 69
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/i1$f;->a(Lio/bidmachine/media3/exoplayer/i1$e;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 74
    .line 75
    iget v1, p4, Lio/bidmachine/media3/exoplayer/e2;->e:I

    .line 76
    .line 77
    const/4 v2, 0x3

    .line 78
    if-eq v1, v2, :cond_4

    .line 79
    .line 80
    const/4 v2, 0x4

    .line 81
    if-ne v1, v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    :cond_4
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 90
    .line 91
    const/4 v1, 0x2

    .line 92
    invoke-static {p4, v1}, Lio/bidmachine/media3/exoplayer/u0;->R1(Lio/bidmachine/media3/exoplayer/e2;I)Lio/bidmachine/media3/exoplayer/e2;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->x()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-direct {p0, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/u0;->T1(Lzm/a0;IJ)Landroid/util/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-direct {p0, p4, v0, v1}, Lio/bidmachine/media3/exoplayer/u0;->S1(Lio/bidmachine/media3/exoplayer/e2;Lzm/a0;Landroid/util/Pair;)Lio/bidmachine/media3/exoplayer/e2;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 109
    .line 110
    invoke-static {p2, p3}, Lcn/m0;->S0(J)J

    .line 111
    .line 112
    .line 113
    move-result-wide p2

    .line 114
    invoke-virtual {p4, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/i1;->T0(Lzm/a0;IJ)V

    .line 115
    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    invoke-direct {p0, v2}, Lio/bidmachine/media3/exoplayer/u0;->i1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    const/4 v3, 0x0

    .line 123
    const/4 v4, 0x1

    .line 124
    move-object v1, p0

    .line 125
    move v9, p5

    .line 126
    invoke-direct/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/u0;->l2(Lio/bidmachine/media3/exoplayer/e2;IZIJIZ)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public U0(Lhn/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lhn/b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lhn/a;->c0(Lhn/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public V0(Lio/bidmachine/media3/exoplayer/ExoPlayer$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->n:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Y0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->Z1()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->g2(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, v0}, Lio/bidmachine/media3/exoplayer/u0;->U1(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public Z0(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->Y:Landroid/view/SurfaceHolder;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->Y0()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public a()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/e2;->r:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcn/m0;->u1(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public b(Lzm/v;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lzm/v;->d:Lzm/v;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 9
    .line 10
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->o:Lzm/v;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lzm/v;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/e2;->g(Lzm/v;)Lio/bidmachine/media3/exoplayer/e2;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v0, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 30
    .line 31
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/i1;->m1(Lzm/v;)V

    .line 34
    .line 35
    .line 36
    const/4 v8, -0x1

    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x5

    .line 41
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    move-object v1, p0

    .line 47
    invoke-direct/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/u0;->l2(Lio/bidmachine/media3/exoplayer/e2;IZIJIZ)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public c(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzm/q;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->d1(Ljava/util/List;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/u0;->c2(Ljava/util/List;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c2(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/r;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/u0;->d2(Ljava/util/List;IJZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->Z0(Landroid/view/SurfaceHolder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->b0:Landroid/view/TextureView;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->Y0()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public bridge synthetic d()Lio/bidmachine/media3/common/PlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->l1()Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lzm/e0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->i:Lvn/w;

    .line 7
    .line 8
    iget-object v0, v0, Lvn/w;->d:Lzm/e0;

    .line 9
    .line 10
    return-object v0
.end method

.method public g1()Lcn/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->y:Lcn/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->h1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->isPlayingAd()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 11
    .line 12
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 13
    .line 14
    iget v0, v0, Lio/bidmachine/media3/exoplayer/source/r$b;->b:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->isPlayingAd()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 11
    .line 12
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 13
    .line 14
    iget v0, v0, Lio/bidmachine/media3/exoplayer/source/r$b;->c:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lio/bidmachine/media3/exoplayer/u0;->w0:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 18
    .line 19
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 20
    .line 21
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 22
    .line 23
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lzm/a0;->b(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->i1(Lio/bidmachine/media3/exoplayer/e2;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcn/m0;->u1(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getCurrentTimeline()Lzm/a0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 7
    .line 8
    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->isPlayingAd()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 11
    .line 12
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 13
    .line 14
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 15
    .line 16
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 24
    .line 25
    iget v2, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->b:I

    .line 26
    .line 27
    iget v1, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->c:I

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lzm/a0$b;->b(II)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Lcn/m0;->u1(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    return-wide v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lzm/e;->D()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/e2;->l:Z

    .line 7
    .line 8
    return v0
.end method

.method public getPlaybackParameters()Lzm/v;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->o:Lzm/v;

    .line 7
    .line 8
    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget v0, v0, Lio/bidmachine/media3/exoplayer/e2;->e:I

    .line 7
    .line 8
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lio/bidmachine/media3/exoplayer/u0;->I:I

    .line 5
    .line 6
    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/u0;->J:Z

    .line 5
    .line 6
    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lio/bidmachine/media3/exoplayer/u0;->i0:F

    .line 5
    .line 6
    return v0
.end method

.method public h()Lzm/d0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->i:Lvn/v;

    .line 5
    .line 6
    invoke-virtual {v0}, Lvn/v;->c()Lzm/d0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public h2(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->Y0()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->Z1()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/u0;->a0:Z

    .line 15
    .line 16
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->Y:Landroid/view/SurfaceHolder;

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->g2(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/u0;->U1(II)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->g2(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, p1, p1}, Lio/bidmachine/media3/exoplayer/u0;->U1(II)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public i()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/u0;->x:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public j()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/u0;->w:J

    .line 5
    .line 6
    return-wide v0
.end method

.method public k1()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/i1;->K()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/u0;->x0:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 18
    .line 19
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/e2;->k:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 20
    .line 21
    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->d:J

    .line 22
    .line 23
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 24
    .line 25
    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/source/r$b;->d:J

    .line 26
    .line 27
    cmp-long v1, v1, v3

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 32
    .line 33
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->x()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v2, p0, Lzm/e;->a:Lzm/a0$c;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lzm/a0$c;->d()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    :cond_1
    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/e2;->q:J

    .line 49
    .line 50
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 51
    .line 52
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/e2;->k:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 53
    .line 54
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/r$b;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 61
    .line 62
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 63
    .line 64
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->k:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 65
    .line 66
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    .line 67
    .line 68
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->o:Lzm/a0$b;

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lzm/a0;->h(Ljava/lang/Object;Lzm/a0$b;)Lzm/a0$b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 75
    .line 76
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/e2;->k:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 77
    .line 78
    iget v1, v1, Lio/bidmachine/media3/exoplayer/source/r$b;->b:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lzm/a0$b;->f(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    const-wide/high16 v3, -0x8000000000000000L

    .line 85
    .line 86
    cmp-long v3, v1, v3

    .line 87
    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    iget-wide v0, v0, Lzm/a0$b;->d:J

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-wide v0, v1

    .line 94
    :cond_3
    :goto_0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 95
    .line 96
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 97
    .line 98
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/e2;->k:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 99
    .line 100
    invoke-direct {p0, v3, v2, v0, v1}, Lio/bidmachine/media3/exoplayer/u0;->X1(Lzm/a0;Lio/bidmachine/media3/exoplayer/source/r$b;J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    invoke-static {v0, v1}, Lcn/m0;->u1(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    return-wide v0
.end method

.method public l1()Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/e2;->f:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 7
    .line 8
    return-object v0
.end method

.method public p()Lbn/b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->k0:Lbn/b;

    .line 5
    .line 6
    return-object v0
.end method

.method public prepare()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget v1, v0, Lio/bidmachine/media3/exoplayer/e2;->e:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/e2;->f(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)Lio/bidmachine/media3/exoplayer/e2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/e2;->a:Lzm/a0;

    .line 18
    .line 19
    invoke-virtual {v1}, Lzm/a0;->q()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x2

    .line 28
    :goto_0
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/u0;->R1(Lio/bidmachine/media3/exoplayer/e2;I)Lio/bidmachine/media3/exoplayer/e2;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v0, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 33
    .line 34
    add-int/2addr v0, v2

    .line 35
    iput v0, p0, Lio/bidmachine/media3/exoplayer/u0;->K:I

    .line 36
    .line 37
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/i1;->B0()V

    .line 40
    .line 41
    .line 42
    const/4 v10, -0x1

    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v5, 0x1

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x5

    .line 47
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    move-object v3, p0

    .line 53
    invoke-direct/range {v3 .. v11}, Lio/bidmachine/media3/exoplayer/u0;->l2(Lio/bidmachine/media3/exoplayer/e2;IZIJIZ)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public q1()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/e2;->p:Z

    .line 7
    .line 8
    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    iget v0, v0, Lio/bidmachine/media3/exoplayer/e2;->n:I

    .line 7
    .line 8
    return v0
.end method

.method public release()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Release "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " ["

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "AndroidXMedia3/1.7.1"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "] ["

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object v2, Lcn/m0;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lzm/r;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "]"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "ExoPlayerImpl"

    .line 62
    .line 63
    invoke-static {v1, v0}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->B:Lio/bidmachine/media3/exoplayer/d;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/d;->f(Z)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->C:Lio/bidmachine/media3/exoplayer/o2;

    .line 76
    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/o2;->o()V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->D:Lio/bidmachine/media3/exoplayer/t2;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/t2;->f(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->E:Lio/bidmachine/media3/exoplayer/w2;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/w2;->f(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->G:Lio/bidmachine/media3/exoplayer/q2;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/q2;->disable()V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 100
    .line 101
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/i1;->D0()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 108
    .line 109
    new-instance v2, Lio/bidmachine/media3/exoplayer/k0;

    .line 110
    .line 111
    invoke-direct {v2}, Lio/bidmachine/media3/exoplayer/k0;-><init>()V

    .line 112
    .line 113
    .line 114
    const/16 v3, 0xa

    .line 115
    .line 116
    invoke-virtual {v0, v3, v2}, Lcn/q;->l(ILcn/q$a;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcn/q;->j()V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->j:Lcn/n;

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    invoke-interface {v0, v2}, Lcn/n;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u:Lwn/d;

    .line 131
    .line 132
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 133
    .line 134
    invoke-interface {v0, v3}, Lwn/d;->d(Lwn/d$a;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 138
    .line 139
    iget-boolean v3, v0, Lio/bidmachine/media3/exoplayer/e2;->p:Z

    .line 140
    .line 141
    if-eqz v3, :cond_3

    .line 142
    .line 143
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/e2;->a()Lio/bidmachine/media3/exoplayer/e2;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 148
    .line 149
    :cond_3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 150
    .line 151
    const/4 v3, 0x1

    .line 152
    invoke-static {v0, v3}, Lio/bidmachine/media3/exoplayer/u0;->R1(Lio/bidmachine/media3/exoplayer/e2;I)Lio/bidmachine/media3/exoplayer/e2;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 157
    .line 158
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/e2;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 159
    .line 160
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/exoplayer/e2;->c(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/e2;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 165
    .line 166
    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 167
    .line 168
    iput-wide v4, v0, Lio/bidmachine/media3/exoplayer/e2;->q:J

    .line 169
    .line 170
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 171
    .line 172
    const-wide/16 v4, 0x0

    .line 173
    .line 174
    iput-wide v4, v0, Lio/bidmachine/media3/exoplayer/e2;->r:J

    .line 175
    .line 176
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->s:Lhn/a;

    .line 177
    .line 178
    invoke-interface {v0}, Lhn/a;->release()V

    .line 179
    .line 180
    .line 181
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->Z1()V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->X:Landroid/view/Surface;

    .line 185
    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 189
    .line 190
    .line 191
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->X:Landroid/view/Surface;

    .line 192
    .line 193
    :cond_4
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/u0;->p0:Z

    .line 194
    .line 195
    if-eqz v0, :cond_5

    .line 196
    .line 197
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->o0:Lio/bidmachine/media3/common/PriorityTaskManager;

    .line 198
    .line 199
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lio/bidmachine/media3/common/PriorityTaskManager;

    .line 204
    .line 205
    iget v2, p0, Lio/bidmachine/media3/exoplayer/u0;->n0:I

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/PriorityTaskManager;->b(I)V

    .line 208
    .line 209
    .line 210
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/u0;->p0:Z

    .line 211
    .line 212
    :cond_5
    sget-object v0, Lbn/b;->c:Lbn/b;

    .line 213
    .line 214
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->k0:Lbn/b;

    .line 215
    .line 216
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/u0;->q0:Z

    .line 217
    .line 218
    return-void
.end method

.method public s()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->t:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method

.method public setImageOutput(Lio/bidmachine/media3/exoplayer/image/ImageOutput;)V
    .locals 2
    .param p1    # Lio/bidmachine/media3/exoplayer/image/ImageOutput;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    const/16 v1, 0xf

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/u0;->a2(IILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/u0;->k2(ZI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lio/bidmachine/media3/exoplayer/u0;->I:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lio/bidmachine/media3/exoplayer/u0;->I:I

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/i1;->p1(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 16
    .line 17
    new-instance v1, Lio/bidmachine/media3/exoplayer/s;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/s;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->j2()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcn/q;->f()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/u0;->J:Z

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/u0;->J:Z

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/i1;->s1(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 16
    .line 17
    new-instance v1, Lio/bidmachine/media3/exoplayer/a0;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/a0;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    const/16 p1, 0x9

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lcn/q;->i(ILcn/q$a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->j2()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcn/q;->f()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lyn/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->Z1()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->g2(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->e2(Landroid/view/SurfaceHolder;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->Z1()V

    .line 27
    .line 28
    .line 29
    move-object v0, p1

    .line 30
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 31
    .line 32
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->Z:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 33
    .line 34
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->A:Lio/bidmachine/media3/exoplayer/u0$d;

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->e1(Lio/bidmachine/media3/exoplayer/f2$b;)Lio/bidmachine/media3/exoplayer/f2;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v1, 0x2710

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/f2;->m(I)Lio/bidmachine/media3/exoplayer/f2;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->Z:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/f2;->l(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/f2;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/f2;->k()Lio/bidmachine/media3/exoplayer/f2;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->Z:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 56
    .line 57
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->d(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->Z:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 63
    .line 64
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->g2(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->e2(Landroid/view/SurfaceHolder;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    if-nez p1, :cond_2

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/u0;->h2(Landroid/view/SurfaceHolder;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/u0;->Y0()V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->Z1()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0;->b0:Landroid/view/TextureView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v0, "ExoPlayerImpl"

    .line 22
    .line 23
    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->z:Lio/bidmachine/media3/exoplayer/u0$c;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v0, v1

    .line 46
    :goto_0
    if-nez v0, :cond_3

    .line 47
    .line 48
    invoke-direct {p0, v1}, Lio/bidmachine/media3/exoplayer/u0;->g2(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-direct {p0, p1, p1}, Lio/bidmachine/media3/exoplayer/u0;->U1(II)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->f2(Landroid/graphics/SurfaceTexture;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/u0;->U1(II)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcn/m0;->o(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lio/bidmachine/media3/exoplayer/u0;->i0:F

    .line 12
    .line 13
    cmpl-float v0, v0, p1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput p1, p0, Lio/bidmachine/media3/exoplayer/u0;->i0:F

    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->l:Lio/bidmachine/media3/exoplayer/i1;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/i1;->y1(F)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->m:Lcn/q;

    .line 26
    .line 27
    new-instance v1, Lio/bidmachine/media3/exoplayer/m0;

    .line 28
    .line 29
    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/m0;-><init>(F)V

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x16

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Lcn/q;->l(ILcn/q$a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->i2(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lbn/b;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 15
    .line 16
    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/e2;->s:J

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3}, Lbn/b;-><init>(Ljava/util/List;J)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->k0:Lbn/b;

    .line 22
    .line 23
    return-void
.end method

.method public u()Lzm/w$b;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->R:Lzm/w$b;

    .line 5
    .line 6
    return-object v0
.end method

.method public v()Lzm/i0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->s0:Lzm/i0;

    .line 5
    .line 6
    return-object v0
.end method

.method public x()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->u0:Lio/bidmachine/media3/exoplayer/e2;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/u0;->j1(Lio/bidmachine/media3/exoplayer/e2;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    return v0
.end method

.method public z()Lzm/s;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0;->o2()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0;->S:Lzm/s;

    .line 5
    .line 6
    return-object v0
.end method
