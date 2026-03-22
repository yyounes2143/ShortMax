.class final Lio/bidmachine/media3/exoplayer/hls/f;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/q;
.implements Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/f$b;
    }
.end annotation


# instance fields
.field private final a:Lmn/e;

.field private final b:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final c:Lmn/d;

.field private final d:Len/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lio/bidmachine/media3/exoplayer/drm/i;

.field private final f:Lio/bidmachine/media3/exoplayer/drm/h$a;

.field private final g:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private final h:Lio/bidmachine/media3/exoplayer/source/s$a;

.field private final i:Lwn/b;

.field private final j:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lsn/s;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lmn/i;

.field private final l:Lsn/e;

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final p:Lhn/b2;

.field private final q:Lio/bidmachine/media3/exoplayer/hls/k$b;

.field private final r:J

.field private s:Lio/bidmachine/media3/exoplayer/source/q$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:I

.field private u:Lsn/x;

.field private v:[Lio/bidmachine/media3/exoplayer/hls/k;

.field private w:[Lio/bidmachine/media3/exoplayer/hls/k;

.field private x:[[I

.field private y:I

.field private z:Lio/bidmachine/media3/exoplayer/source/g0;


# direct methods
.method public constructor <init>(Lmn/e;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Lmn/d;Len/o;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/source/s$a;Lwn/b;Lsn/e;ZIZLhn/b2;J)V
    .locals 4
    .param p4    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lwn/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->a:Lmn/e;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->c:Lmn/d;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->d:Len/o;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->e:Lio/bidmachine/media3/exoplayer/drm/i;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->f:Lio/bidmachine/media3/exoplayer/drm/h$a;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->g:Lio/bidmachine/media3/exoplayer/upstream/b;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->h:Lio/bidmachine/media3/exoplayer/source/s$a;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->i:Lwn/b;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->l:Lsn/e;

    move/from16 v2, p12

    .line 12
    iput-boolean v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->m:Z

    move/from16 v2, p13

    .line 13
    iput v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->n:I

    move/from16 v2, p14

    .line 14
    iput-boolean v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->o:Z

    move-object/from16 v2, p15

    .line 15
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->p:Lhn/b2;

    move-wide/from16 v2, p16

    .line 16
    iput-wide v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->r:J

    .line 17
    new-instance v2, Lio/bidmachine/media3/exoplayer/hls/f$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/bidmachine/media3/exoplayer/hls/f$b;-><init>(Lio/bidmachine/media3/exoplayer/hls/f;Lio/bidmachine/media3/exoplayer/hls/f$a;)V

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->q:Lio/bidmachine/media3/exoplayer/hls/k$b;

    .line 18
    invoke-interface {p11}, Lsn/e;->a()Lio/bidmachine/media3/exoplayer/source/g0;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->z:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 19
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->j:Ljava/util/IdentityHashMap;

    .line 20
    new-instance v1, Lmn/i;

    invoke-direct {v1}, Lmn/i;-><init>()V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->k:Lmn/i;

    const/4 v1, 0x0

    .line 21
    new-array v2, v1, [Lio/bidmachine/media3/exoplayer/hls/k;

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 22
    new-array v2, v1, [Lio/bidmachine/media3/exoplayer/hls/k;

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->w:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 23
    new-array v1, v1, [[I

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->x:[[I

    return-void
.end method

.method public static synthetic f(Lio/bidmachine/media3/exoplayer/hls/k;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/hls/f;->t(Lio/bidmachine/media3/exoplayer/hls/k;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic g(Lio/bidmachine/media3/exoplayer/hls/f;)I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->t:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->t:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic h(Lio/bidmachine/media3/exoplayer/hls/f;)[Lio/bidmachine/media3/exoplayer/hls/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lio/bidmachine/media3/exoplayer/hls/f;Lsn/x;)Lsn/x;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/f;->u:Lsn/x;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic k(Lio/bidmachine/media3/exoplayer/hls/f;)Lio/bidmachine/media3/exoplayer/source/q$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->s:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lio/bidmachine/media3/exoplayer/hls/f;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    return-object p0
.end method

.method private m(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/k;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    move v6, v5

    .line 37
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-ge v6, v7, :cond_5

    .line 42
    .line 43
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;

    .line 48
    .line 49
    iget-object v7, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_0

    .line 56
    .line 57
    move-object/from16 v12, p0

    .line 58
    .line 59
    move-object/from16 v9, p4

    .line 60
    .line 61
    move-object/from16 v11, p5

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 72
    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    move v9, v5

    .line 76
    move v10, v8

    .line 77
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-ge v9, v11, :cond_3

    .line 82
    .line 83
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    check-cast v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;

    .line 88
    .line 89
    iget-object v11, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v7, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_2

    .line 96
    .line 97
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    check-cast v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;

    .line 102
    .line 103
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object v12, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->a:Landroid/net/Uri;

    .line 111
    .line 112
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iget-object v12, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->b:Lio/bidmachine/media3/common/a;

    .line 116
    .line 117
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    iget-object v11, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->b:Lio/bidmachine/media3/common/a;

    .line 121
    .line 122
    iget-object v11, v11, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v11, v8}, Lcn/m0;->R(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    if-ne v11, v8, :cond_1

    .line 129
    .line 130
    move v11, v8

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    move v11, v5

    .line 133
    :goto_2
    and-int/2addr v10, v11

    .line 134
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v9, "audio:"

    .line 143
    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    new-array v8, v5, [Landroid/net/Uri;

    .line 155
    .line 156
    invoke-static {v8}, Lcn/m0;->j([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    check-cast v8, [Landroid/net/Uri;

    .line 161
    .line 162
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    move-object v14, v8

    .line 167
    check-cast v14, [Landroid/net/Uri;

    .line 168
    .line 169
    new-array v8, v5, [Lio/bidmachine/media3/common/a;

    .line 170
    .line 171
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    move-object v15, v8

    .line 176
    check-cast v15, [Lio/bidmachine/media3/common/a;

    .line 177
    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v17

    .line 184
    const/4 v13, 0x1

    .line 185
    move-object/from16 v11, p0

    .line 186
    .line 187
    move-object v12, v7

    .line 188
    move-object/from16 v18, p6

    .line 189
    .line 190
    move-wide/from16 v19, p1

    .line 191
    .line 192
    invoke-direct/range {v11 .. v20}, Lio/bidmachine/media3/exoplayer/hls/f;->p(Ljava/lang/String;I[Landroid/net/Uri;[Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;Ljava/util/List;Ljava/util/Map;J)Lio/bidmachine/media3/exoplayer/hls/k;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->m(Ljava/util/Collection;)[I

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    move-object/from16 v11, p5

    .line 201
    .line 202
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-object/from16 v9, p4

    .line 206
    .line 207
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-object/from16 v12, p0

    .line 211
    .line 212
    iget-boolean v13, v12, Lio/bidmachine/media3/exoplayer/hls/f;->m:Z

    .line 213
    .line 214
    if-eqz v13, :cond_4

    .line 215
    .line 216
    if-eqz v10, :cond_4

    .line 217
    .line 218
    new-array v10, v5, [Lio/bidmachine/media3/common/a;

    .line 219
    .line 220
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    check-cast v10, [Lio/bidmachine/media3/common/a;

    .line 225
    .line 226
    new-instance v13, Lzm/b0;

    .line 227
    .line 228
    invoke-direct {v13, v7, v10}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 229
    .line 230
    .line 231
    filled-new-array {v13}, [Lzm/b0;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    new-array v10, v5, [I

    .line 236
    .line 237
    invoke-virtual {v8, v7, v5, v10}, Lio/bidmachine/media3/exoplayer/hls/k;->V([Lzm/b0;I[I)V

    .line 238
    .line 239
    .line 240
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_5
    move-object/from16 v12, p0

    .line 245
    .line 246
    return-void
.end method

.method private n(Lio/bidmachine/media3/exoplayer/hls/playlist/d;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/d;",
            "J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/k;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    iget-object v0, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-array v1, v0, [I

    .line 12
    .line 13
    const/4 v12, 0x0

    .line 14
    move v2, v12

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_0
    iget-object v5, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x2

    .line 24
    const/4 v13, 0x1

    .line 25
    if-ge v2, v5, :cond_3

    .line 26
    .line 27
    iget-object v5, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 34
    .line 35
    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->b:Lio/bidmachine/media3/common/a;

    .line 36
    .line 37
    iget v7, v5, Lio/bidmachine/media3/common/a;->w:I

    .line 38
    .line 39
    if-gtz v7, :cond_2

    .line 40
    .line 41
    iget-object v7, v5, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v7, v6}, Lcn/m0;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object v5, v5, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v5, v13}, Lcn/m0;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    aput v13, v1, v2

    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    const/4 v5, -0x1

    .line 64
    aput v5, v1, v2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    aput v6, v1, v2

    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    if-lez v3, :cond_4

    .line 75
    .line 76
    move v14, v3

    .line 77
    move v2, v12

    .line 78
    move v0, v13

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    if-ge v4, v0, :cond_5

    .line 81
    .line 82
    sub-int/2addr v0, v4

    .line 83
    move v14, v0

    .line 84
    move v0, v12

    .line 85
    move v2, v13

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    move v14, v0

    .line 88
    move v0, v12

    .line 89
    move v2, v0

    .line 90
    :goto_3
    new-array v3, v14, [Landroid/net/Uri;

    .line 91
    .line 92
    new-array v15, v14, [Lio/bidmachine/media3/common/a;

    .line 93
    .line 94
    new-array v8, v14, [I

    .line 95
    .line 96
    move v4, v12

    .line 97
    move v5, v4

    .line 98
    :goto_4
    iget-object v7, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-ge v4, v7, :cond_9

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    aget v7, v1, v4

    .line 109
    .line 110
    if-ne v7, v6, :cond_8

    .line 111
    .line 112
    :cond_6
    if-eqz v2, :cond_7

    .line 113
    .line 114
    aget v7, v1, v4

    .line 115
    .line 116
    if-eq v7, v13, :cond_8

    .line 117
    .line 118
    :cond_7
    iget-object v7, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 119
    .line 120
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;

    .line 125
    .line 126
    iget-object v9, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    .line 127
    .line 128
    aput-object v9, v3, v5

    .line 129
    .line 130
    iget-object v7, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/d$b;->b:Lio/bidmachine/media3/common/a;

    .line 131
    .line 132
    aput-object v7, v15, v5

    .line 133
    .line 134
    add-int/lit8 v7, v5, 0x1

    .line 135
    .line 136
    aput v4, v8, v5

    .line 137
    .line 138
    move v5, v7

    .line 139
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    aget-object v1, v15, v12

    .line 143
    .line 144
    iget-object v1, v1, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v1, v6}, Lcn/m0;->R(Ljava/lang/String;I)I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    invoke-static {v1, v13}, Lcn/m0;->R(Ljava/lang/String;I)I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eq v7, v13, :cond_a

    .line 155
    .line 156
    if-nez v7, :cond_b

    .line 157
    .line 158
    iget-object v1, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->g:Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_b

    .line 165
    .line 166
    :cond_a
    if-gt v9, v13, :cond_b

    .line 167
    .line 168
    add-int v1, v7, v9

    .line 169
    .line 170
    if-lez v1, :cond_b

    .line 171
    .line 172
    move/from16 v16, v13

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_b
    move/from16 v16, v12

    .line 176
    .line 177
    :goto_5
    if-nez v0, :cond_c

    .line 178
    .line 179
    if-lez v7, :cond_c

    .line 180
    .line 181
    move v2, v13

    .line 182
    goto :goto_6

    .line 183
    :cond_c
    move v2, v12

    .line 184
    :goto_6
    iget-object v5, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->j:Lio/bidmachine/media3/common/a;

    .line 185
    .line 186
    iget-object v6, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->k:Ljava/util/List;

    .line 187
    .line 188
    const-string v4, "main"

    .line 189
    .line 190
    move-object/from16 v0, p0

    .line 191
    .line 192
    move-object v1, v4

    .line 193
    move-object v13, v4

    .line 194
    move-object v4, v15

    .line 195
    move/from16 v17, v7

    .line 196
    .line 197
    move-object/from16 v7, p6

    .line 198
    .line 199
    move-object v12, v8

    .line 200
    move/from16 v18, v9

    .line 201
    .line 202
    move-wide/from16 v8, p2

    .line 203
    .line 204
    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/hls/f;->p(Ljava/lang/String;I[Landroid/net/Uri;[Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;Ljava/util/List;Ljava/util/Map;J)Lio/bidmachine/media3/exoplayer/hls/k;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    move-object/from16 v1, p4

    .line 209
    .line 210
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-object/from16 v1, p5

    .line 214
    .line 215
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    iget-boolean v1, v10, Lio/bidmachine/media3/exoplayer/hls/f;->m:Z

    .line 219
    .line 220
    if-eqz v1, :cond_13

    .line 221
    .line 222
    if-eqz v16, :cond_13

    .line 223
    .line 224
    new-instance v1, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .line 228
    .line 229
    if-lez v18, :cond_10

    .line 230
    .line 231
    new-array v2, v14, [Lio/bidmachine/media3/common/a;

    .line 232
    .line 233
    const/4 v3, 0x0

    .line 234
    :goto_7
    if-ge v3, v14, :cond_d

    .line 235
    .line 236
    aget-object v4, v15, v3

    .line 237
    .line 238
    invoke-static {v4}, Lio/bidmachine/media3/exoplayer/hls/f;->s(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    aput-object v4, v2, v3

    .line 243
    .line 244
    add-int/lit8 v3, v3, 0x1

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_d
    new-instance v3, Lzm/b0;

    .line 248
    .line 249
    invoke-direct {v3, v13, v2}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    if-lez v17, :cond_f

    .line 256
    .line 257
    iget-object v2, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->j:Lio/bidmachine/media3/common/a;

    .line 258
    .line 259
    if-nez v2, :cond_e

    .line 260
    .line 261
    iget-object v2, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->g:Ljava/util/List;

    .line 262
    .line 263
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_f

    .line 268
    .line 269
    :cond_e
    new-instance v2, Lzm/b0;

    .line 270
    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v4, ":audio"

    .line 280
    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    const/4 v4, 0x0

    .line 289
    aget-object v5, v15, v4

    .line 290
    .line 291
    iget-object v6, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->j:Lio/bidmachine/media3/common/a;

    .line 292
    .line 293
    invoke-static {v5, v6, v4}, Lio/bidmachine/media3/exoplayer/hls/f;->q(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;Z)Lio/bidmachine/media3/common/a;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    filled-new-array {v5}, [Lio/bidmachine/media3/common/a;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-direct {v2, v3, v4}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    :cond_f
    iget-object v2, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->k:Ljava/util/List;

    .line 308
    .line 309
    if-eqz v2, :cond_12

    .line 310
    .line 311
    const/4 v4, 0x0

    .line 312
    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-ge v4, v3, :cond_12

    .line 317
    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v5, ":cc:"

    .line 327
    .line 328
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    new-instance v5, Lzm/b0;

    .line 339
    .line 340
    iget-object v6, v10, Lio/bidmachine/media3/exoplayer/hls/f;->a:Lmn/e;

    .line 341
    .line 342
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    check-cast v7, Lio/bidmachine/media3/common/a;

    .line 347
    .line 348
    invoke-interface {v6, v7}, Lmn/e;->d(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    filled-new-array {v6}, [Lio/bidmachine/media3/common/a;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-direct {v5, v3, v6}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    add-int/lit8 v4, v4, 0x1

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_10
    new-array v2, v14, [Lio/bidmachine/media3/common/a;

    .line 366
    .line 367
    const/4 v4, 0x0

    .line 368
    :goto_9
    if-ge v4, v14, :cond_11

    .line 369
    .line 370
    aget-object v3, v15, v4

    .line 371
    .line 372
    iget-object v5, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->j:Lio/bidmachine/media3/common/a;

    .line 373
    .line 374
    const/4 v6, 0x1

    .line 375
    invoke-static {v3, v5, v6}, Lio/bidmachine/media3/exoplayer/hls/f;->q(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;Z)Lio/bidmachine/media3/common/a;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    aput-object v3, v2, v4

    .line 380
    .line 381
    add-int/lit8 v4, v4, 0x1

    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_11
    new-instance v3, Lzm/b0;

    .line 385
    .line 386
    invoke-direct {v3, v13, v2}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 387
    .line 388
    .line 389
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    :cond_12
    new-instance v2, Lzm/b0;

    .line 393
    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v4, ":id3"

    .line 403
    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    new-instance v4, Lio/bidmachine/media3/common/a$b;

    .line 412
    .line 413
    invoke-direct {v4}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 414
    .line 415
    .line 416
    const-string v5, "ID3"

    .line 417
    .line 418
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    const-string v5, "application/id3"

    .line 423
    .line 424
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v4}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    filled-new-array {v4}, [Lio/bidmachine/media3/common/a;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-direct {v2, v3, v4}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    const/4 v3, 0x0

    .line 443
    new-array v4, v3, [Lzm/b0;

    .line 444
    .line 445
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    check-cast v4, [Lzm/b0;

    .line 450
    .line 451
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    filled-new-array {v1}, [I

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v0, v4, v3, v1}, Lio/bidmachine/media3/exoplayer/hls/k;->V([Lzm/b0;I[I)V

    .line 460
    .line 461
    .line 462
    :cond_13
    return-void
.end method

.method private o(J)V
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 4
    .line 5
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->k()Lio/bidmachine/media3/exoplayer/hls/playlist/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d;

    .line 15
    .line 16
    iget-boolean v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->o:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->m:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/f;->r(Ljava/util/List;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    move-object v11, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->g:Ljava/util/List;

    .line 40
    .line 41
    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/d;->h:Ljava/util/List;

    .line 42
    .line 43
    const/4 v13, 0x0

    .line 44
    iput v13, v10, Lio/bidmachine/media3/exoplayer/hls/f;->t:I

    .line 45
    .line 46
    new-instance v14, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v15, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    move-object/from16 v0, p0

    .line 59
    .line 60
    move-wide/from16 v2, p1

    .line 61
    .line 62
    move-object v4, v14

    .line 63
    move-object v5, v15

    .line 64
    move-object v6, v11

    .line 65
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/hls/f;->n(Lio/bidmachine/media3/exoplayer/hls/playlist/d;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    move-object/from16 v0, p0

    .line 69
    .line 70
    move-wide/from16 v1, p1

    .line 71
    .line 72
    move-object v3, v7

    .line 73
    move-object v4, v14

    .line 74
    move-object v5, v15

    .line 75
    move-object v6, v11

    .line 76
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/hls/f;->m(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->y:I

    .line 84
    .line 85
    move v8, v13

    .line 86
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-ge v8, v0, :cond_2

    .line 91
    .line 92
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "subtitle:"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, ":"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->d:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->b:Lio/bidmachine/media3/common/a;

    .line 126
    .line 127
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d$a;->a:Landroid/net/Uri;

    .line 128
    .line 129
    filled-new-array {v0}, [Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    filled-new-array {v7}, [Lio/bidmachine/media3/common/a;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const/4 v2, 0x3

    .line 143
    move-object/from16 v0, p0

    .line 144
    .line 145
    move-object v1, v9

    .line 146
    move-object v13, v7

    .line 147
    move-object v7, v11

    .line 148
    move/from16 v16, v8

    .line 149
    .line 150
    move-object/from16 v17, v11

    .line 151
    .line 152
    move-object v11, v9

    .line 153
    move-wide/from16 v8, p1

    .line 154
    .line 155
    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/hls/f;->p(Ljava/lang/String;I[Landroid/net/Uri;[Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;Ljava/util/List;Ljava/util/Map;J)Lio/bidmachine/media3/exoplayer/hls/k;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    filled-new-array/range {v16 .. v16}, [I

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    new-instance v1, Lzm/b0;

    .line 170
    .line 171
    iget-object v2, v10, Lio/bidmachine/media3/exoplayer/hls/f;->a:Lmn/e;

    .line 172
    .line 173
    invoke-interface {v2, v13}, Lmn/e;->d(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    filled-new-array {v2}, [Lio/bidmachine/media3/common/a;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-direct {v1, v11, v2}, Lzm/b0;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/a;)V

    .line 182
    .line 183
    .line 184
    filled-new-array {v1}, [Lzm/b0;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const/4 v2, 0x0

    .line 189
    new-array v3, v2, [I

    .line 190
    .line 191
    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/k;->V([Lzm/b0;I[I)V

    .line 192
    .line 193
    .line 194
    add-int/lit8 v8, v16, 0x1

    .line 195
    .line 196
    move v13, v2

    .line 197
    move-object/from16 v11, v17

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_2
    move v2, v13

    .line 201
    new-array v0, v2, [Lio/bidmachine/media3/exoplayer/hls/k;

    .line 202
    .line 203
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, [Lio/bidmachine/media3/exoplayer/hls/k;

    .line 208
    .line 209
    iput-object v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 210
    .line 211
    new-array v0, v2, [[I

    .line 212
    .line 213
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, [[I

    .line 218
    .line 219
    iput-object v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->x:[[I

    .line 220
    .line 221
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 222
    .line 223
    array-length v0, v0

    .line 224
    iput v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->t:I

    .line 225
    .line 226
    move v0, v2

    .line 227
    :goto_3
    iget v1, v10, Lio/bidmachine/media3/exoplayer/hls/f;->y:I

    .line 228
    .line 229
    if-ge v0, v1, :cond_3

    .line 230
    .line 231
    iget-object v1, v10, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 232
    .line 233
    aget-object v1, v1, v0

    .line 234
    .line 235
    const/4 v3, 0x1

    .line 236
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/exoplayer/hls/k;->e0(Z)V

    .line 237
    .line 238
    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_3
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 243
    .line 244
    array-length v1, v0

    .line 245
    move v13, v2

    .line 246
    :goto_4
    if-ge v13, v1, :cond_4

    .line 247
    .line 248
    aget-object v2, v0, v13

    .line 249
    .line 250
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/hls/k;->r()V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v13, v13, 0x1

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_4
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 257
    .line 258
    iput-object v0, v10, Lio/bidmachine/media3/exoplayer/hls/f;->w:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 259
    .line 260
    return-void
.end method

.method private p(Ljava/lang/String;I[Landroid/net/Uri;[Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;Ljava/util/List;Ljava/util/Map;J)Lio/bidmachine/media3/exoplayer/hls/k;
    .locals 18
    .param p5    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Landroid/net/Uri;",
            "[",
            "Lio/bidmachine/media3/common/a;",
            "Lio/bidmachine/media3/common/a;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/a;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;J)",
            "Lio/bidmachine/media3/exoplayer/hls/k;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v14, Lio/bidmachine/media3/exoplayer/hls/b;

    .line 4
    .line 5
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->a:Lmn/e;

    .line 6
    .line 7
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/f;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 8
    .line 9
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/hls/f;->c:Lmn/d;

    .line 10
    .line 11
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/hls/f;->d:Len/o;

    .line 12
    .line 13
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/hls/f;->k:Lmn/i;

    .line 14
    .line 15
    iget-wide v9, v0, Lio/bidmachine/media3/exoplayer/hls/f;->r:J

    .line 16
    .line 17
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/hls/f;->p:Lhn/b2;

    .line 18
    .line 19
    const/4 v13, 0x0

    .line 20
    move-object v1, v14

    .line 21
    move-object/from16 v4, p3

    .line 22
    .line 23
    move-object/from16 v5, p4

    .line 24
    .line 25
    move-object/from16 v11, p6

    .line 26
    .line 27
    invoke-direct/range {v1 .. v13}, Lio/bidmachine/media3/exoplayer/hls/b;-><init>(Lmn/e;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lio/bidmachine/media3/common/a;Lmn/d;Len/o;Lmn/i;JLjava/util/List;Lhn/b2;Lwn/e;)V

    .line 28
    .line 29
    .line 30
    new-instance v16, Lio/bidmachine/media3/exoplayer/hls/k;

    .line 31
    .line 32
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/f;->q:Lio/bidmachine/media3/exoplayer/hls/k$b;

    .line 33
    .line 34
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/hls/f;->i:Lwn/b;

    .line 35
    .line 36
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/hls/f;->e:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 37
    .line 38
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/hls/f;->f:Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 39
    .line 40
    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/hls/f;->g:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 41
    .line 42
    iget-object v15, v0, Lio/bidmachine/media3/exoplayer/hls/f;->h:Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 43
    .line 44
    iget v10, v0, Lio/bidmachine/media3/exoplayer/hls/f;->n:I

    .line 45
    .line 46
    move-object/from16 v1, v16

    .line 47
    .line 48
    move-object/from16 v2, p1

    .line 49
    .line 50
    move/from16 v3, p2

    .line 51
    .line 52
    move-object v5, v14

    .line 53
    move-object/from16 v6, p7

    .line 54
    .line 55
    move-wide/from16 v8, p8

    .line 56
    .line 57
    move/from16 v17, v10

    .line 58
    .line 59
    move-object/from16 v10, p5

    .line 60
    .line 61
    move-object v14, v15

    .line 62
    move/from16 v15, v17

    .line 63
    .line 64
    invoke-direct/range {v1 .. v15}, Lio/bidmachine/media3/exoplayer/hls/k;-><init>(Ljava/lang/String;ILio/bidmachine/media3/exoplayer/hls/k$b;Lio/bidmachine/media3/exoplayer/hls/b;Ljava/util/Map;Lwn/b;JLio/bidmachine/media3/common/a;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/source/s$a;I)V

    .line 65
    .line 66
    .line 67
    return-object v16
.end method

.method private static q(Lio/bidmachine/media3/common/a;Lio/bidmachine/media3/common/a;Z)Lio/bidmachine/media3/common/a;
    .locals 12
    .param p1    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p1, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    .line 11
    .line 12
    iget v3, p1, Lio/bidmachine/media3/common/a;->E:I

    .line 13
    .line 14
    iget v4, p1, Lio/bidmachine/media3/common/a;->e:I

    .line 15
    .line 16
    iget v5, p1, Lio/bidmachine/media3/common/a;->f:I

    .line 17
    .line 18
    iget-object v6, p1, Lio/bidmachine/media3/common/a;->d:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v7, p1, Lio/bidmachine/media3/common/a;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lio/bidmachine/media3/common/a;->c:Ljava/util/List;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {p1, v2}, Lcn/m0;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v2, p0, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget v3, p0, Lio/bidmachine/media3/common/a;->E:I

    .line 37
    .line 38
    iget v4, p0, Lio/bidmachine/media3/common/a;->e:I

    .line 39
    .line 40
    iget v5, p0, Lio/bidmachine/media3/common/a;->f:I

    .line 41
    .line 42
    iget-object v6, p0, Lio/bidmachine/media3/common/a;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v7, p0, Lio/bidmachine/media3/common/a;->b:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, p0, Lio/bidmachine/media3/common/a;->c:Ljava/util/List;

    .line 47
    .line 48
    :goto_0
    move-object v11, v0

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v11

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v4, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    move v3, v1

    .line 55
    move v5, v4

    .line 56
    move-object v7, v6

    .line 57
    goto :goto_0

    .line 58
    :goto_1
    invoke-static {v0}, Lzm/u;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    iget v9, p0, Lio/bidmachine/media3/common/a;->h:I

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move v9, v1

    .line 68
    :goto_2
    if-eqz p2, :cond_3

    .line 69
    .line 70
    iget v1, p0, Lio/bidmachine/media3/common/a;->i:I

    .line 71
    .line 72
    :cond_3
    new-instance p2, Lio/bidmachine/media3/common/a$b;

    .line 73
    .line 74
    invoke-direct {p2}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v10, p0, Lio/bidmachine/media3/common/a;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p2, v10}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2, v7}, Lio/bidmachine/media3/common/a$b;->h0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/a$b;->i0(Ljava/util/List;)Lio/bidmachine/media3/common/a$b;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p0, p0, Lio/bidmachine/media3/common/a;->n:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/common/a$b;->U(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v8}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0, v9}, Lio/bidmachine/media3/common/a$b;->Q(I)Lio/bidmachine/media3/common/a$b;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/a$b;->p0(I)Lio/bidmachine/media3/common/a$b;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/a$b;->R(I)Lio/bidmachine/media3/common/a$b;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/a$b;->w0(I)Lio/bidmachine/media3/common/a$b;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/a$b;->s0(I)Lio/bidmachine/media3/common/a$b;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/common/a$b;->j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0
.end method

.method private static r(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_2

    .line 17
    .line 18
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lio/bidmachine/media3/common/DrmInitData;

    .line 23
    .line 24
    iget-object v4, v3, Lio/bidmachine/media3/common/DrmInitData;->c:Ljava/lang/String;

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    move v5, v2

    .line 29
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ge v5, v6, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lio/bidmachine/media3/common/DrmInitData;

    .line 40
    .line 41
    iget-object v7, v6, Lio/bidmachine/media3/common/DrmInitData;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3, v6}, Lio/bidmachine/media3/common/DrmInitData;->f(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/DrmInitData;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-object v1
.end method

.method private static s(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcn/m0;->S(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lzm/u;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lio/bidmachine/media3/common/a$b;

    .line 13
    .line 14
    invoke-direct {v2}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lio/bidmachine/media3/common/a;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lio/bidmachine/media3/common/a;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/a$b;->h0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lio/bidmachine/media3/common/a;->c:Ljava/util/List;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/a$b;->i0(Ljava/util/List;)Lio/bidmachine/media3/common/a$b;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lio/bidmachine/media3/common/a;->n:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/a$b;->U(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v1, p0, Lio/bidmachine/media3/common/a;->h:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->Q(I)Lio/bidmachine/media3/common/a$b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v1, p0, Lio/bidmachine/media3/common/a;->i:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->p0(I)Lio/bidmachine/media3/common/a$b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget v1, p0, Lio/bidmachine/media3/common/a;->v:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->B0(I)Lio/bidmachine/media3/common/a$b;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, p0, Lio/bidmachine/media3/common/a;->w:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->d0(I)Lio/bidmachine/media3/common/a$b;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget v1, p0, Lio/bidmachine/media3/common/a;->x:F

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->b0(F)Lio/bidmachine/media3/common/a$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget v1, p0, Lio/bidmachine/media3/common/a;->e:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->w0(I)Lio/bidmachine/media3/common/a$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget p0, p0, Lio/bidmachine/media3/common/a;->f:I

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/common/a$b;->s0(I)Lio/bidmachine/media3/common/a$b;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method private static synthetic t(Lio/bidmachine/media3/exoplayer/hls/k;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/k;->getTrackGroups()Lsn/x;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lsn/x;->c()Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public a(JLgn/i0;)J
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->w:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/k;->H()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/k;->a(JLgn/i0;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-wide p1
.end method

.method public b(Lio/bidmachine/media3/exoplayer/k1;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->u:Lsn/x;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    aget-object v3, p1, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/k;->r()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return v1

    .line 21
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->z:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/g0;->b(Lio/bidmachine/media3/exoplayer/k1;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/k;->T()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->s:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/source/g0$a;->f(Lio/bidmachine/media3/exoplayer/source/g0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public d(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/b$c;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/k;->S(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/b$c;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    and-int/2addr v2, v4

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/f;->s:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/g0$a;->f(Lio/bidmachine/media3/exoplayer/source/g0;)V

    .line 21
    .line 22
    .line 23
    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->w:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/k;->discardBuffer(JZ)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public e(Lio/bidmachine/media3/exoplayer/source/q$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/f;->s:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/f;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->e(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/f;->o(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->z:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/g0;->getBufferedPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->z:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/g0;->getNextLoadPositionUs()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getTrackGroups()Lsn/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->u:Lsn/x;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsn/x;

    .line 8
    .line 9
    return-object v0
.end method

.method public i([Lvn/q;[Z[Lsn/s;[ZJ)J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    array-length v3, v1

    .line 8
    new-array v3, v3, [I

    .line 9
    .line 10
    array-length v4, v1

    .line 11
    new-array v4, v4, [I

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    array-length v7, v1

    .line 15
    if-ge v6, v7, :cond_3

    .line 16
    .line 17
    aget-object v7, v2, v6

    .line 18
    .line 19
    const/4 v8, -0x1

    .line 20
    if-nez v7, :cond_0

    .line 21
    .line 22
    move v7, v8

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/hls/f;->j:Ljava/util/IdentityHashMap;

    .line 25
    .line 26
    invoke-virtual {v9, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    check-cast v7, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    :goto_1
    aput v7, v3, v6

    .line 37
    .line 38
    aput v8, v4, v6

    .line 39
    .line 40
    aget-object v7, v1, v6

    .line 41
    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    invoke-interface {v7}, Lvn/t;->getTrackGroup()Lzm/b0;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const/4 v9, 0x0

    .line 49
    :goto_2
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 50
    .line 51
    array-length v11, v10

    .line 52
    if-ge v9, v11, :cond_2

    .line 53
    .line 54
    aget-object v10, v10, v9

    .line 55
    .line 56
    invoke-virtual {v10}, Lio/bidmachine/media3/exoplayer/hls/k;->getTrackGroups()Lsn/x;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    invoke-virtual {v10, v7}, Lsn/x;->d(Lzm/b0;)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eq v10, v8, :cond_1

    .line 65
    .line 66
    aput v9, v4, v6

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/hls/f;->j:Ljava/util/IdentityHashMap;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 78
    .line 79
    .line 80
    array-length v6, v1

    .line 81
    new-array v7, v6, [Lsn/s;

    .line 82
    .line 83
    array-length v8, v1

    .line 84
    new-array v8, v8, [Lsn/s;

    .line 85
    .line 86
    array-length v9, v1

    .line 87
    new-array v14, v9, [Lvn/q;

    .line 88
    .line 89
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 90
    .line 91
    array-length v9, v9

    .line 92
    new-array v15, v9, [Lio/bidmachine/media3/exoplayer/hls/k;

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v13, 0x0

    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    :goto_4
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 99
    .line 100
    array-length v9, v9

    .line 101
    if-ge v13, v9, :cond_10

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    :goto_5
    array-length v10, v1

    .line 105
    if-ge v9, v10, :cond_6

    .line 106
    .line 107
    aget v10, v3, v9

    .line 108
    .line 109
    const/4 v11, 0x0

    .line 110
    if-ne v10, v13, :cond_4

    .line 111
    .line 112
    aget-object v10, v2, v9

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_4
    move-object v10, v11

    .line 116
    :goto_6
    aput-object v10, v8, v9

    .line 117
    .line 118
    aget v10, v4, v9

    .line 119
    .line 120
    if-ne v10, v13, :cond_5

    .line 121
    .line 122
    aget-object v11, v1, v9

    .line 123
    .line 124
    :cond_5
    aput-object v11, v14, v9

    .line 125
    .line 126
    add-int/lit8 v9, v9, 0x1

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 130
    .line 131
    aget-object v11, v9, v13

    .line 132
    .line 133
    move-object v9, v11

    .line 134
    move-object v10, v14

    .line 135
    move-object v5, v11

    .line 136
    move-object/from16 v11, p2

    .line 137
    .line 138
    move v2, v12

    .line 139
    move-object v12, v8

    .line 140
    move/from16 v18, v6

    .line 141
    .line 142
    move v6, v13

    .line 143
    move-object/from16 v13, p4

    .line 144
    .line 145
    move-object/from16 v19, v14

    .line 146
    .line 147
    move-object/from16 v20, v15

    .line 148
    .line 149
    move-wide/from16 v14, p5

    .line 150
    .line 151
    move/from16 v16, v17

    .line 152
    .line 153
    invoke-virtual/range {v9 .. v16}, Lio/bidmachine/media3/exoplayer/hls/k;->b0([Lvn/q;[Z[Lsn/s;[ZJZ)Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    :goto_7
    array-length v12, v1

    .line 160
    const/4 v13, 0x1

    .line 161
    if-ge v10, v12, :cond_a

    .line 162
    .line 163
    aget-object v12, v8, v10

    .line 164
    .line 165
    aget v14, v4, v10

    .line 166
    .line 167
    if-ne v14, v6, :cond_7

    .line 168
    .line 169
    invoke-static {v12}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    aput-object v12, v7, v10

    .line 173
    .line 174
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/hls/f;->j:Ljava/util/IdentityHashMap;

    .line 175
    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    invoke-virtual {v11, v12, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move v11, v13

    .line 184
    goto :goto_9

    .line 185
    :cond_7
    aget v14, v3, v10

    .line 186
    .line 187
    if-ne v14, v6, :cond_9

    .line 188
    .line 189
    if-nez v12, :cond_8

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_8
    const/4 v13, 0x0

    .line 193
    :goto_8
    invoke-static {v13}, Lcn/a;->g(Z)V

    .line 194
    .line 195
    .line 196
    :cond_9
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_a
    move-object/from16 v10, v20

    .line 200
    .line 201
    if-eqz v11, :cond_e

    .line 202
    .line 203
    aput-object v5, v10, v2

    .line 204
    .line 205
    add-int/lit8 v12, v2, 0x1

    .line 206
    .line 207
    if-nez v2, :cond_c

    .line 208
    .line 209
    invoke-virtual {v5, v13}, Lio/bidmachine/media3/exoplayer/hls/k;->e0(Z)V

    .line 210
    .line 211
    .line 212
    if-nez v9, :cond_b

    .line 213
    .line 214
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->w:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 215
    .line 216
    array-length v9, v2

    .line 217
    if-eqz v9, :cond_b

    .line 218
    .line 219
    const/4 v9, 0x0

    .line 220
    aget-object v2, v2, v9

    .line 221
    .line 222
    if-eq v5, v2, :cond_f

    .line 223
    .line 224
    :cond_b
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->k:Lmn/i;

    .line 225
    .line 226
    invoke-virtual {v2}, Lmn/i;->b()V

    .line 227
    .line 228
    .line 229
    move/from16 v17, v13

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_c
    iget v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->y:I

    .line 233
    .line 234
    if-ge v6, v2, :cond_d

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_d
    const/4 v13, 0x0

    .line 238
    :goto_a
    invoke-virtual {v5, v13}, Lio/bidmachine/media3/exoplayer/hls/k;->e0(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_b

    .line 242
    :cond_e
    move v12, v2

    .line 243
    :cond_f
    :goto_b
    add-int/lit8 v13, v6, 0x1

    .line 244
    .line 245
    move-object/from16 v2, p3

    .line 246
    .line 247
    move-object v15, v10

    .line 248
    move/from16 v6, v18

    .line 249
    .line 250
    move-object/from16 v14, v19

    .line 251
    .line 252
    goto/16 :goto_4

    .line 253
    .line 254
    :cond_10
    move-object v10, v15

    .line 255
    const/4 v5, 0x0

    .line 256
    invoke-static {v7, v5, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    .line 258
    .line 259
    invoke-static {v10, v12}, Lcn/m0;->Y0([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, [Lio/bidmachine/media3/exoplayer/hls/k;

    .line 264
    .line 265
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->w:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 266
    .line 267
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->v([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/f;->l:Lsn/e;

    .line 272
    .line 273
    new-instance v3, Lio/bidmachine/media3/exoplayer/hls/e;

    .line 274
    .line 275
    invoke-direct {v3}, Lio/bidmachine/media3/exoplayer/hls/e;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-static {v1, v3}, Lcom/google/common/collect/Lists;->l(Ljava/util/List;Lh7/e;)Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-interface {v2, v1, v3}, Lsn/e;->b(Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/source/g0;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/f;->z:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 287
    .line 288
    return-wide p5
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->z:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/g0;->isLoading()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/k;->maybeThrowPrepareError()V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->z:Lio/bidmachine/media3/exoplayer/source/g0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/g0;->reevaluateBuffer(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->w:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lez v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/hls/k;->a0(JZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    :goto_0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/f;->w:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    invoke-virtual {v2, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/hls/k;->a0(JZ)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->k:Lmn/i;

    .line 30
    .line 31
    invoke-virtual {v0}, Lmn/i;->b()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-wide p1
.end method

.method public u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->b(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->v:[Lio/bidmachine/media3/exoplayer/hls/k;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/k;->X()V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/f;->s:Lio/bidmachine/media3/exoplayer/source/q$a;

    .line 22
    .line 23
    return-void
.end method
