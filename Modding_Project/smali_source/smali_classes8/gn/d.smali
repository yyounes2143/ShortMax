.class public Lgn/d;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lgn/h0;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/bidmachine/media3/exoplayer/mediacodec/g;

.field private c:I

.field private d:J

.field private e:Z

.field private f:Lio/bidmachine/media3/exoplayer/mediacodec/l;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgn/d;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/g;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/g;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lgn/d;->b:Lio/bidmachine/media3/exoplayer/mediacodec/g;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lgn/d;->c:I

    .line 15
    .line 16
    const-wide/16 v0, 0x1388

    .line 17
    .line 18
    iput-wide v0, p0, Lgn/d;->d:J

    .line 19
    .line 20
    sget-object p1, Lio/bidmachine/media3/exoplayer/mediacodec/l;->a:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 21
    .line 22
    iput-object p1, p0, Lgn/d;->f:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 23
    .line 24
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide v0, p0, Lgn/d;->k:J

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/exoplayer/h2;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;Lio/bidmachine/media3/exoplayer/audio/e;Lun/h;Lqn/b;)Lio/bidmachine/media3/exoplayer/h2;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/h2;->getTrackType()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v10, Lgn/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    iget v3, v10, Lgn/d;->c:I

    .line 12
    .line 13
    iget-object v4, v10, Lgn/d;->f:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 14
    .line 15
    iget-boolean v5, v10, Lgn/d;->e:Z

    .line 16
    .line 17
    iget-wide v8, v10, Lgn/d;->d:J

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v6, p2

    .line 22
    move-object v7, p3

    .line 23
    invoke-virtual/range {v0 .. v9}, Lgn/d;->i(Lio/bidmachine/media3/exoplayer/h2;Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/l;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;J)Lio/bidmachine/media3/exoplayer/h2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public b(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;Lio/bidmachine/media3/exoplayer/audio/e;Lun/h;Lqn/b;)[Lio/bidmachine/media3/exoplayer/h2;
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, v10, Lgn/d;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget v2, v10, Lgn/d;->c:I

    .line 10
    .line 11
    iget-object v3, v10, Lgn/d;->f:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 12
    .line 13
    iget-boolean v4, v10, Lgn/d;->e:Z

    .line 14
    .line 15
    iget-wide v7, v10, Lgn/d;->d:J

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    move-object v5, p1

    .line 19
    move-object v6, p2

    .line 20
    move-object v9, v11

    .line 21
    invoke-virtual/range {v0 .. v9}, Lgn/d;->k(Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/l;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;JLjava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v10, Lgn/d;->a:Landroid/content/Context;

    .line 25
    .line 26
    iget-boolean v1, v10, Lgn/d;->g:Z

    .line 27
    .line 28
    iget-boolean v2, v10, Lgn/d;->h:Z

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1, v2}, Lgn/d;->d(Landroid/content/Context;ZZ)Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    iget-object v1, v10, Lgn/d;->a:Landroid/content/Context;

    .line 37
    .line 38
    iget v2, v10, Lgn/d;->c:I

    .line 39
    .line 40
    iget-object v3, v10, Lgn/d;->f:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 41
    .line 42
    iget-boolean v4, v10, Lgn/d;->e:Z

    .line 43
    .line 44
    move-object v0, p0

    .line 45
    move-object v6, p1

    .line 46
    move-object v7, p3

    .line 47
    move-object v8, v11

    .line 48
    invoke-virtual/range {v0 .. v8}, Lgn/d;->c(Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/l;ZLio/bidmachine/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/e;Ljava/util/ArrayList;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v1, v10, Lgn/d;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget v4, v10, Lgn/d;->c:I

    .line 58
    .line 59
    move-object v0, p0

    .line 60
    move-object/from16 v2, p4

    .line 61
    .line 62
    move-object v5, v11

    .line 63
    invoke-virtual/range {v0 .. v5}, Lgn/d;->j(Landroid/content/Context;Lun/h;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v10, Lgn/d;->a:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget v4, v10, Lgn/d;->c:I

    .line 73
    .line 74
    move-object/from16 v2, p5

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v5}, Lgn/d;->g(Landroid/content/Context;Lqn/b;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v10, Lgn/d;->a:Landroid/content/Context;

    .line 80
    .line 81
    iget v1, v10, Lgn/d;->c:I

    .line 82
    .line 83
    invoke-virtual {p0, v0, v1, v11}, Lgn/d;->e(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v11}, Lgn/d;->f(Ljava/util/ArrayList;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v10, Lgn/d;->a:Landroid/content/Context;

    .line 90
    .line 91
    iget v1, v10, Lgn/d;->c:I

    .line 92
    .line 93
    move-object v2, p1

    .line 94
    invoke-virtual {p0, v0, p1, v1, v11}, Lgn/d;->h(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 95
    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    new-array v0, v0, [Lio/bidmachine/media3/exoplayer/h2;

    .line 99
    .line 100
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, [Lio/bidmachine/media3/exoplayer/h2;

    .line 105
    .line 106
    return-object v0
.end method

.method protected c(Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/l;ZLio/bidmachine/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/e;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lio/bidmachine/media3/exoplayer/mediacodec/l;",
            "Z",
            "Lio/bidmachine/media3/exoplayer/audio/AudioSink;",
            "Landroid/os/Handler;",
            "Lio/bidmachine/media3/exoplayer/audio/e;",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/h2;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v9, p2

    .line 4
    .line 5
    move-object/from16 v10, p5

    .line 6
    .line 7
    move-object/from16 v11, p6

    .line 8
    .line 9
    move-object/from16 v12, p7

    .line 10
    .line 11
    move-object/from16 v13, p8

    .line 12
    .line 13
    const-class v14, Landroid/content/Context;

    .line 14
    .line 15
    const-string v15, "DefaultRenderersFactory"

    .line 16
    .line 17
    const-class v8, Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    .line 18
    .line 19
    const-class v7, Lio/bidmachine/media3/exoplayer/audio/e;

    .line 20
    .line 21
    const-class v6, Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v5, Lio/bidmachine/media3/exoplayer/audio/m;

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lgn/d;->l()Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move-object v1, v5

    .line 30
    move-object/from16 v2, p1

    .line 31
    .line 32
    move-object/from16 v4, p3

    .line 33
    .line 34
    move-object/from16 v16, v15

    .line 35
    .line 36
    move-object v15, v5

    .line 37
    move/from16 v5, p4

    .line 38
    .line 39
    move-object v0, v6

    .line 40
    move-object/from16 v6, p6

    .line 41
    .line 42
    move-object v10, v7

    .line 43
    move-object/from16 v7, p7

    .line 44
    .line 45
    move-object v11, v8

    .line 46
    move-object/from16 v8, p5

    .line 47
    .line 48
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/media3/exoplayer/audio/m;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/h$b;Lio/bidmachine/media3/exoplayer/mediacodec/l;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/e;Lio/bidmachine/media3/exoplayer/audio/AudioSink;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    if-nez v9, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x2

    .line 62
    if-ne v9, v2, :cond_1

    .line 63
    .line 64
    add-int/lit8 v1, v1, -0x1

    .line 65
    .line 66
    :cond_1
    :try_start_0
    const-string v2, "io.bidmachine.media3.decoder.midi.MidiRenderer"

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    filled-new-array {v14, v0, v10, v11}, [Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 77
    .line 78
    .line 79
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    move-object/from16 v3, p5

    .line 81
    .line 82
    move-object/from16 v4, p6

    .line 83
    .line 84
    move-object v7, v0

    .line 85
    move-object v6, v10

    .line 86
    move-object v5, v11

    .line 87
    move-object/from16 v0, p1

    .line 88
    .line 89
    :try_start_1
    filled-new-array {v0, v4, v12, v3}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lio/bidmachine/media3/exoplayer/h2;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    add-int/lit8 v8, v1, 0x1

    .line 100
    .line 101
    :try_start_2
    invoke-virtual {v13, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const-string v1, "Loaded MidiRenderer."
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    .line 106
    move-object/from16 v2, v16

    .line 107
    .line 108
    :try_start_3
    invoke-static {v2, v1}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto :goto_1

    .line 114
    :catch_1
    :goto_0
    move v1, v8

    .line 115
    goto :goto_2

    .line 116
    :catch_2
    move-object/from16 v2, v16

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_3
    move-object/from16 v2, v16

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :catch_4
    move-object/from16 v3, p5

    .line 123
    .line 124
    move-object/from16 v4, p6

    .line 125
    .line 126
    move-object v7, v0

    .line 127
    move-object v6, v10

    .line 128
    move-object v5, v11

    .line 129
    move-object/from16 v2, v16

    .line 130
    .line 131
    move-object/from16 v0, p1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    const-string v2, "Error instantiating MIDI extension"

    .line 137
    .line 138
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v1

    .line 142
    :goto_2
    move v8, v1

    .line 143
    :goto_3
    :try_start_4
    const-string v1, "io.bidmachine.media3.decoder.opus.LibopusAudioRenderer"

    .line 144
    .line 145
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    filled-new-array {v7, v6, v5}, [Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v1, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    filled-new-array {v4, v12, v3}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    check-cast v1, Lio/bidmachine/media3/exoplayer/h2;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 166
    .line 167
    add-int/lit8 v9, v8, 0x1

    .line 168
    .line 169
    :try_start_5
    invoke-virtual {v13, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    const-string v1, "Loaded LibopusAudioRenderer."

    .line 173
    .line 174
    invoke-static {v2, v1}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :catch_5
    move-exception v0

    .line 179
    goto :goto_4

    .line 180
    :catch_6
    move v8, v9

    .line 181
    goto :goto_5

    .line 182
    :goto_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    const-string v2, "Error instantiating Opus extension"

    .line 185
    .line 186
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    throw v1

    .line 190
    :catch_7
    :goto_5
    move v9, v8

    .line 191
    :goto_6
    :try_start_6
    const-string v1, "io.bidmachine.media3.decoder.flac.LibflacAudioRenderer"

    .line 192
    .line 193
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    filled-new-array {v7, v6, v5}, [Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    filled-new-array {v4, v12, v3}, [Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Lio/bidmachine/media3/exoplayer/h2;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 214
    .line 215
    add-int/lit8 v8, v9, 0x1

    .line 216
    .line 217
    :try_start_7
    invoke-virtual {v13, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    const-string v1, "Loaded LibflacAudioRenderer."

    .line 221
    .line 222
    invoke-static {v2, v1}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 223
    .line 224
    .line 225
    goto :goto_9

    .line 226
    :catch_8
    move-exception v0

    .line 227
    goto :goto_7

    .line 228
    :catch_9
    move v9, v8

    .line 229
    goto :goto_8

    .line 230
    :goto_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 231
    .line 232
    const-string v2, "Error instantiating FLAC extension"

    .line 233
    .line 234
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    throw v1

    .line 238
    :catch_a
    :goto_8
    move v8, v9

    .line 239
    :goto_9
    :try_start_8
    const-string v1, "io.bidmachine.media3.decoder.ffmpeg.FfmpegAudioRenderer"

    .line 240
    .line 241
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    filled-new-array {v7, v6, v5}, [Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    invoke-virtual {v1, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    filled-new-array {v4, v12, v3}, [Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    check-cast v1, Lio/bidmachine/media3/exoplayer/h2;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    .line 262
    .line 263
    add-int/lit8 v9, v8, 0x1

    .line 264
    .line 265
    :try_start_9
    invoke-virtual {v13, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    const-string v1, "Loaded FfmpegAudioRenderer."

    .line 269
    .line 270
    invoke-static {v2, v1}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 271
    .line 272
    .line 273
    goto :goto_c

    .line 274
    :catch_b
    move-exception v0

    .line 275
    goto :goto_a

    .line 276
    :catch_c
    move v8, v9

    .line 277
    goto :goto_b

    .line 278
    :goto_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 279
    .line 280
    const-string v2, "Error instantiating FFmpeg extension"

    .line 281
    .line 282
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    throw v1

    .line 286
    :catch_d
    :goto_b
    move v9, v8

    .line 287
    :goto_c
    :try_start_a
    const-string v1, "io.bidmachine.media3.decoder.iamf.LibiamfAudioRenderer"

    .line 288
    .line 289
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    filled-new-array {v14, v7, v6, v5}, [Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    filled-new-array {v0, v4, v12, v3}, [Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Lio/bidmachine/media3/exoplayer/h2;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    .line 310
    .line 311
    add-int/lit8 v1, v9, 0x1

    .line 312
    .line 313
    :try_start_b
    invoke-virtual {v13, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    const-string v0, "Loaded LibiamfAudioRenderer."

    .line 317
    .line 318
    invoke-static {v2, v0}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    .line 319
    .line 320
    .line 321
    goto :goto_f

    .line 322
    :catch_e
    move-exception v0

    .line 323
    goto :goto_d

    .line 324
    :catch_f
    move v9, v1

    .line 325
    goto :goto_e

    .line 326
    :goto_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 327
    .line 328
    const-string v2, "Error instantiating IAMF extension"

    .line 329
    .line 330
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    throw v1

    .line 334
    :catch_10
    :goto_e
    move v1, v9

    .line 335
    :goto_f
    :try_start_c
    const-string v0, "io.bidmachine.media3.decoder.mpegh.MpeghAudioRenderer"

    .line 336
    .line 337
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    filled-new-array {v7, v6, v5}, [Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    filled-new-array {v4, v12, v3}, [Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Lio/bidmachine/media3/exoplayer/h2;

    .line 358
    .line 359
    invoke-virtual {v13, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    const-string v0, "Loaded MpeghAudioRenderer."

    .line 363
    .line 364
    invoke-static {v2, v0}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11

    .line 365
    .line 366
    .line 367
    goto :goto_10

    .line 368
    :catch_11
    move-exception v0

    .line 369
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 370
    .line 371
    const-string v2, "Error instantiating MPEG-H extension"

    .line 372
    .line 373
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .line 375
    .line 376
    throw v1

    .line 377
    :catch_12
    :goto_10
    return-void
.end method

.method protected d(Landroid/content/Context;ZZ)Lio/bidmachine/media3/exoplayer/audio/AudioSink;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->l(Z)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->k(Z)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->j()Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method protected e(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/h2;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lzn/b;

    .line 2
    .line 3
    invoke-direct {p1}, Lzn/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected f(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/h2;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lon/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgn/d;->m()Lon/c$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Lon/e;-><init>(Lon/c$a;Lio/bidmachine/media3/exoplayer/image/ImageOutput;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected g(Landroid/content/Context;Lqn/b;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lqn/b;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/h2;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lqn/c;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lqn/c;-><init>(Lqn/b;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    new-instance p1, Lqn/c;

    .line 10
    .line 11
    invoke-direct {p1, p2, p3}, Lqn/c;-><init>(Lqn/b;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected h(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/h2;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected i(Lio/bidmachine/media3/exoplayer/h2;Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/l;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;J)Lio/bidmachine/media3/exoplayer/h2;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean p3, p0, Lgn/d;->i:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-class p3, Lio/bidmachine/media3/exoplayer/video/h;

    .line 10
    .line 11
    if-ne p1, p3, :cond_0

    .line 12
    .line 13
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/video/h$d;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lgn/d;->l()Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/h$d;->q(Lio/bidmachine/media3/exoplayer/mediacodec/h$b;)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p4}, Lio/bidmachine/media3/exoplayer/video/h$d;->v(Lio/bidmachine/media3/exoplayer/mediacodec/l;)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, p8, p9}, Lio/bidmachine/media3/exoplayer/video/h$d;->p(J)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p5}, Lio/bidmachine/media3/exoplayer/video/h$d;->r(Z)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p6}, Lio/bidmachine/media3/exoplayer/video/h$d;->s(Landroid/os/Handler;)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p7}, Lio/bidmachine/media3/exoplayer/video/h$d;->t(Lio/bidmachine/media3/exoplayer/video/p;)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/16 p2, 0x32

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/h$d;->u(I)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-boolean p2, p0, Lgn/d;->j:Z

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/h$d;->o(Z)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-wide p2, p0, Lgn/d;->k:J

    .line 59
    .line 60
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/h$d;->n(J)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->m()Lio/bidmachine/media3/exoplayer/video/h;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_0
    const/4 p1, 0x0

    .line 70
    return-object p1
.end method

.method protected j(Landroid/content/Context;Lun/h;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lun/h;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/h2;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lun/i;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lun/i;-><init>(Lun/h;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected k(Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/l;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/p;JLjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lio/bidmachine/media3/exoplayer/mediacodec/l;",
            "Z",
            "Landroid/os/Handler;",
            "Lio/bidmachine/media3/exoplayer/video/p;",
            "J",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/h2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "DefaultRenderersFactory"

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/media3/exoplayer/video/p;

    .line 4
    .line 5
    const-class v2, Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v3, Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 8
    .line 9
    invoke-direct {v3, p1}, Lio/bidmachine/media3/exoplayer/video/h$d;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lgn/d;->l()Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v3, p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->q(Lio/bidmachine/media3/exoplayer/mediacodec/h$b;)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/exoplayer/video/h$d;->v(Lio/bidmachine/media3/exoplayer/mediacodec/l;)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p7, p8}, Lio/bidmachine/media3/exoplayer/video/h$d;->p(J)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p4}, Lio/bidmachine/media3/exoplayer/video/h$d;->r(Z)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p5}, Lio/bidmachine/media3/exoplayer/video/h$d;->s(Landroid/os/Handler;)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, p6}, Lio/bidmachine/media3/exoplayer/video/h$d;->t(Lio/bidmachine/media3/exoplayer/video/p;)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/16 p3, 0x32

    .line 41
    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/exoplayer/video/h$d;->u(I)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-boolean p3, p0, Lgn/d;->j:Z

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/exoplayer/video/h$d;->o(Z)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-wide v3, p0, Lgn/d;->k:J

    .line 57
    .line 58
    invoke-virtual {p1, v3, v4}, Lio/bidmachine/media3/exoplayer/video/h$d;->n(J)Lio/bidmachine/media3/exoplayer/video/h$d;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/h$d;->m()Lio/bidmachine/media3/exoplayer/video/h;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    if-nez p2, :cond_0

    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    invoke-virtual {p9}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 p3, 0x2

    .line 77
    if-ne p2, p3, :cond_1

    .line 78
    .line 79
    add-int/lit8 p1, p1, -0x1

    .line 80
    .line 81
    :cond_1
    :try_start_0
    const-string p2, "io.bidmachine.media3.decoder.vp9.LibvpxVideoRenderer"

    .line 82
    .line 83
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 88
    .line 89
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    filled-new-array {p3, v2, v1, v3}, [Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    filled-new-array {p3, p5, p6, p4}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Lio/bidmachine/media3/exoplayer/h2;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    add-int/lit8 p3, p1, 0x1

    .line 114
    .line 115
    :try_start_1
    invoke-virtual {p9, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    const-string p1, "Loaded LibvpxVideoRenderer."

    .line 119
    .line 120
    invoke-static {v0, p1}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catch_0
    move-exception p1

    .line 125
    goto :goto_0

    .line 126
    :catch_1
    move p1, p3

    .line 127
    goto :goto_1

    .line 128
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    const-string p3, "Error instantiating VP9 extension"

    .line 131
    .line 132
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    throw p2

    .line 136
    :catch_2
    :goto_1
    move p3, p1

    .line 137
    :goto_2
    :try_start_2
    const-string p1, "io.bidmachine.media3.decoder.av1.Libgav1VideoRenderer"

    .line 138
    .line 139
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 144
    .line 145
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 146
    .line 147
    filled-new-array {p2, v2, v1, v3}, [Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    filled-new-array {p2, p5, p6, p4}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lio/bidmachine/media3/exoplayer/h2;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 168
    .line 169
    add-int/lit8 p2, p3, 0x1

    .line 170
    .line 171
    :try_start_3
    invoke-virtual {p9, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    const-string p1, "Loaded Libgav1VideoRenderer."

    .line 175
    .line 176
    invoke-static {v0, p1}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :catch_3
    move-exception p1

    .line 181
    goto :goto_3

    .line 182
    :catch_4
    move p3, p2

    .line 183
    goto :goto_4

    .line 184
    :goto_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    const-string p3, "Error instantiating AV1 extension"

    .line 187
    .line 188
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    throw p2

    .line 192
    :catch_5
    :goto_4
    move p2, p3

    .line 193
    :goto_5
    :try_start_4
    const-string p1, "io.bidmachine.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer"

    .line 194
    .line 195
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 200
    .line 201
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 202
    .line 203
    filled-new-array {p3, v2, v1, v3}, [Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    filled-new-array {p3, p5, p6, p4}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lio/bidmachine/media3/exoplayer/h2;

    .line 224
    .line 225
    invoke-virtual {p9, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    const-string p1, "Loaded FfmpegVideoRenderer."

    .line 229
    .line 230
    invoke-static {v0, p1}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 231
    .line 232
    .line 233
    goto :goto_6

    .line 234
    :catch_6
    move-exception p1

    .line 235
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 236
    .line 237
    const-string p3, "Error instantiating FFmpeg extension"

    .line 238
    .line 239
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    .line 241
    .line 242
    throw p2

    .line 243
    :catch_7
    :goto_6
    return-void
.end method

.method protected l()Lio/bidmachine/media3/exoplayer/mediacodec/h$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lgn/d;->b:Lio/bidmachine/media3/exoplayer/mediacodec/g;

    .line 2
    .line 3
    return-object v0
.end method

.method protected m()Lon/c$a;
    .locals 1

    .line 1
    sget-object v0, Lon/c$a;->a:Lon/c$a;

    .line 2
    .line 3
    return-object v0
.end method
