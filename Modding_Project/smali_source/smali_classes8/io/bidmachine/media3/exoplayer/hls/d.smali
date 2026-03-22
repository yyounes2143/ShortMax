.class final Lio/bidmachine/media3/exoplayer/hls/d;
.super Ltn/m;
.source "HlsMediaChunk.java"


# static fields
.field private static final N:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final A:Z

.field private final B:Z

.field private final C:Lhn/b2;

.field private final D:J

.field private E:Lmn/f;

.field private F:Lio/bidmachine/media3/exoplayer/hls/k;

.field private G:I

.field private H:Z

.field private volatile I:Z

.field private J:Z

.field private K:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private L:Z

.field private M:Z

.field public final k:I

.field public final l:I

.field public final m:Landroid/net/Uri;

.field public final n:Z

.field public final o:I

.field private final p:Len/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final q:Len/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r:Lmn/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final s:Z

.field private final t:Z

.field private final u:Lcn/h0;

.field private final v:Lmn/e;

.field private final w:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/a;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lio/bidmachine/media3/common/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final y:Lpo/h;

.field private final z:Lcn/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/d;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lmn/e;Len/d;Len/g;Lio/bidmachine/media3/common/a;ZLen/d;Len/g;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLcn/h0;JLio/bidmachine/media3/common/DrmInitData;Lmn/f;Lpo/h;Lcn/b0;ZLhn/b2;)V
    .locals 14
    .param p6    # Len/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Len/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p27    # Lio/bidmachine/media3/common/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p28    # Lmn/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmn/e;",
            "Len/d;",
            "Len/g;",
            "Lio/bidmachine/media3/common/a;",
            "Z",
            "Len/d;",
            "Len/g;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/a;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZIZZ",
            "Lcn/h0;",
            "J",
            "Lio/bidmachine/media3/common/DrmInitData;",
            "Lmn/f;",
            "Lpo/h;",
            "Lcn/b0;",
            "Z",
            "Lhn/b2;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    .line 1
    invoke-direct/range {v0 .. v11}, Ltn/m;-><init>(Len/d;Len/g;Lio/bidmachine/media3/common/a;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 2
    iput-boolean v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->A:Z

    move/from16 v0, p19

    .line 3
    iput v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->o:I

    move/from16 v0, p20

    .line 4
    iput-boolean v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->M:Z

    move/from16 v0, p21

    .line 5
    iput v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->l:I

    .line 6
    iput-object v13, v12, Lio/bidmachine/media3/exoplayer/hls/d;->q:Len/g;

    move-object/from16 v0, p6

    .line 7
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->p:Len/d;

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-boolean v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->H:Z

    move/from16 v0, p8

    .line 9
    iput-boolean v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->B:Z

    move-object/from16 v0, p9

    .line 10
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->m:Landroid/net/Uri;

    move/from16 v0, p23

    .line 11
    iput-boolean v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->s:Z

    move-object/from16 v0, p24

    .line 12
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->u:Lcn/h0;

    move-wide/from16 v0, p25

    .line 13
    iput-wide v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->D:J

    move/from16 v0, p22

    .line 14
    iput-boolean v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->t:Z

    move-object v0, p1

    .line 15
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->v:Lmn/e;

    move-object/from16 v0, p10

    .line 16
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->w:Ljava/util/List;

    move-object/from16 v0, p27

    .line 17
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->x:Lio/bidmachine/media3/common/DrmInitData;

    move-object/from16 v0, p28

    .line 18
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->r:Lmn/f;

    move-object/from16 v0, p29

    .line 19
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->y:Lpo/h;

    move-object/from16 v0, p30

    .line 20
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    move/from16 v0, p31

    .line 21
    iput-boolean v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->n:Z

    move-object/from16 v0, p32

    .line 22
    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->C:Lhn/b2;

    .line 23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->K:Lcom/google/common/collect/ImmutableList;

    .line 24
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/d;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lio/bidmachine/media3/exoplayer/hls/d;->k:I

    return-void
.end method

.method private static g(Len/d;[B[B)Len/d;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/a;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/a;-><init>(Len/d;[B[B)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    return-object p0
.end method

.method public static h(Lmn/e;Len/d;Lio/bidmachine/media3/common/a;JLio/bidmachine/media3/exoplayer/hls/playlist/c;Lio/bidmachine/media3/exoplayer/hls/b$e;Landroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLmn/i;JLio/bidmachine/media3/exoplayer/hls/d;[B[BZLhn/b2;Lwn/f$a;)Lio/bidmachine/media3/exoplayer/hls/d;
    .locals 43
    .param p8    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lio/bidmachine/media3/exoplayer/hls/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lwn/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmn/e;",
            "Len/d;",
            "Lio/bidmachine/media3/common/a;",
            "J",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/c;",
            "Lio/bidmachine/media3/exoplayer/hls/b$e;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/a;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Lmn/i;",
            "J",
            "Lio/bidmachine/media3/exoplayer/hls/d;",
            "[B[BZ",
            "Lhn/b2;",
            "Lwn/f$a;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/d;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    .line 1
    iget-object v6, v2, Lio/bidmachine/media3/exoplayer/hls/b$e;->a:Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;

    .line 2
    new-instance v7, Len/g$b;

    invoke-direct {v7}, Len/g$b;-><init>()V

    iget-object v8, v1, Lnn/d;->a:Ljava/lang/String;

    iget-object v9, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->a:Ljava/lang/String;

    .line 3
    invoke-static {v8, v9}, Lcn/j0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Len/g$b;->i(Landroid/net/Uri;)Len/g$b;

    move-result-object v7

    iget-wide v8, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->i:J

    .line 4
    invoke-virtual {v7, v8, v9}, Len/g$b;->h(J)Len/g$b;

    move-result-object v7

    iget-wide v8, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->j:J

    .line 5
    invoke-virtual {v7, v8, v9}, Len/g$b;->g(J)Len/g$b;

    move-result-object v7

    .line 6
    iget-boolean v8, v2, Lio/bidmachine/media3/exoplayer/hls/b$e;->d:Z

    if-eqz v8, :cond_0

    const/16 v8, 0x8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v7, v8}, Len/g$b;->b(I)Len/g$b;

    move-result-object v7

    .line 7
    invoke-virtual {v7}, Len/g$b;->a()Len/g;

    move-result-object v13

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    move v15, v7

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_2

    .line 8
    iget-object v10, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->h:Ljava/lang/String;

    invoke-static {v10}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lio/bidmachine/media3/exoplayer/hls/d;->j(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 9
    :goto_2
    invoke-static {v0, v4, v10}, Lio/bidmachine/media3/exoplayer/hls/d;->g(Len/d;[B[B)Len/d;

    move-result-object v12

    .line 10
    iget-object v4, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->b:Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    if-eqz v4, :cond_5

    if-eqz v5, :cond_3

    move v10, v7

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 11
    iget-object v11, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->h:Ljava/lang/String;

    invoke-static {v11}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lio/bidmachine/media3/exoplayer/hls/d;->j(Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    .line 12
    :goto_4
    iget-object v14, v1, Lnn/d;->a:Ljava/lang/String;

    iget-object v8, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->a:Ljava/lang/String;

    invoke-static {v14, v8}, Lcn/j0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 13
    new-instance v14, Len/g$b;

    invoke-direct {v14}, Len/g$b;-><init>()V

    .line 14
    invoke-virtual {v14, v8}, Len/g$b;->i(Landroid/net/Uri;)Len/g$b;

    move-result-object v8

    move/from16 p16, v10

    iget-wide v9, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->i:J

    .line 15
    invoke-virtual {v8, v9, v10}, Len/g$b;->h(J)Len/g$b;

    move-result-object v8

    iget-wide v9, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->j:J

    .line 16
    invoke-virtual {v8, v9, v10}, Len/g$b;->g(J)Len/g$b;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Len/g$b;->a()Len/g;

    move-result-object v4

    .line 18
    invoke-static {v0, v5, v11}, Lio/bidmachine/media3/exoplayer/hls/d;->g(Len/d;[B[B)Len/d;

    move-result-object v0

    move/from16 v18, p16

    move-object/from16 v16, v0

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 19
    :goto_5
    iget-wide v8, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->e:J

    add-long v23, p3, v8

    .line 20
    iget-wide v8, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->c:J

    add-long v25, v23, v8

    .line 21
    iget v0, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->j:I

    iget v1, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->d:I

    add-int/2addr v0, v1

    if-eqz v3, :cond_a

    .line 22
    iget-object v1, v3, Lio/bidmachine/media3/exoplayer/hls/d;->q:Len/g;

    if-eq v4, v1, :cond_7

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    iget-object v5, v4, Len/g;->a:Landroid/net/Uri;

    iget-object v1, v1, Len/g;->a:Landroid/net/Uri;

    .line 23
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v8, v4, Len/g;->g:J

    iget-object v1, v3, Lio/bidmachine/media3/exoplayer/hls/d;->q:Len/g;

    iget-wide v10, v1, Len/g;->g:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    move v1, v7

    .line 24
    :goto_7
    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/hls/d;->m:Landroid/net/Uri;

    move-object/from16 v8, p7

    .line 25
    invoke-virtual {v8, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, v3, Lio/bidmachine/media3/exoplayer/hls/d;->J:Z

    if-eqz v5, :cond_8

    move v9, v7

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    .line 26
    :goto_8
    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/hls/d;->y:Lpo/h;

    .line 27
    iget-object v10, v3, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    if-eqz v1, :cond_9

    if-eqz v9, :cond_9

    .line 28
    iget-boolean v1, v3, Lio/bidmachine/media3/exoplayer/hls/d;->L:Z

    if-nez v1, :cond_9

    iget v1, v3, Lio/bidmachine/media3/exoplayer/hls/d;->l:I

    if-ne v1, v0, :cond_9

    .line 29
    iget-object v1, v3, Lio/bidmachine/media3/exoplayer/hls/d;->E:Lmn/f;

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    move-object/from16 v38, v1

    move-object/from16 v39, v5

    move-object/from16 v40, v10

    goto :goto_a

    :cond_a
    move-object/from16 v8, p7

    .line 30
    new-instance v1, Lpo/h;

    invoke-direct {v1}, Lpo/h;-><init>()V

    .line 31
    new-instance v3, Lcn/b0;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Lcn/b0;-><init>(I)V

    move-object/from16 v39, v1

    move-object/from16 v40, v3

    const/16 v38, 0x0

    .line 32
    :goto_a
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/d;

    iget-wide v9, v2, Lio/bidmachine/media3/exoplayer/hls/b$e;->b:J

    iget v3, v2, Lio/bidmachine/media3/exoplayer/hls/b$e;->c:I

    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/hls/b$e;->d:Z

    xor-int/lit8 v30, v2, 0x1

    iget-boolean v2, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->k:Z

    move/from16 v32, v2

    move-object/from16 v2, p12

    .line 33
    invoke-virtual {v2, v0}, Lmn/i;->a(I)Lcn/h0;

    move-result-object v34

    iget-object v2, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->f:Lio/bidmachine/media3/common/DrmInitData;

    move-object/from16 v37, v2

    move-wide v5, v9

    move-object v10, v1

    move-object/from16 v11, p0

    move-object/from16 v14, p2

    move-object/from16 v17, v4

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    move-wide/from16 v27, v5

    move/from16 v29, v3

    move/from16 v31, v0

    move/from16 v33, p11

    move-wide/from16 v35, p13

    move/from16 v41, p18

    move-object/from16 v42, p19

    invoke-direct/range {v10 .. v42}, Lio/bidmachine/media3/exoplayer/hls/d;-><init>(Lmn/e;Len/d;Len/g;Lio/bidmachine/media3/common/a;ZLen/d;Len/g;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLcn/h0;JLio/bidmachine/media3/common/DrmInitData;Lmn/f;Lpo/h;Lcn/b0;ZLhn/b2;)V

    return-object v1
.end method

.method private i(Len/d;Len/g;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    iget p3, p0, Lio/bidmachine/media3/exoplayer/hls/d;->G:I

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    move-object p3, p2

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget p3, p0, Lio/bidmachine/media3/exoplayer/hls/d;->G:I

    .line 12
    .line 13
    int-to-long v1, p3

    .line 14
    invoke-virtual {p2, v1, v2}, Len/g;->e(J)Len/g;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p3, p4}, Lio/bidmachine/media3/exoplayer/hls/d;->s(Len/d;Len/g;Z)Lao/i;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget p4, p0, Lio/bidmachine/media3/exoplayer/hls/d;->G:I

    .line 25
    .line 26
    invoke-interface {p3, p4}, Lao/q;->skipFully(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p2

    .line 31
    goto :goto_6

    .line 32
    :cond_2
    :goto_1
    :try_start_1
    iget-boolean p4, p0, Lio/bidmachine/media3/exoplayer/hls/d;->I:Z

    .line 33
    .line 34
    if-nez p4, :cond_3

    .line 35
    .line 36
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/d;->E:Lmn/f;

    .line 37
    .line 38
    invoke-interface {p4, p3}, Lmn/f;->a(Lao/q;)Z

    .line 39
    .line 40
    .line 41
    move-result p4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    if-eqz p4, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_1
    move-exception p4

    .line 46
    goto :goto_5

    .line 47
    :catch_0
    move-exception p4

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    :try_start_2
    invoke-interface {p3}, Lao/q;->getPosition()J

    .line 50
    .line 51
    .line 52
    move-result-wide p3

    .line 53
    iget-wide v0, p2, Len/g;->g:J

    .line 54
    .line 55
    :goto_2
    sub-long/2addr p3, v0

    .line 56
    long-to-int p2, p3

    .line 57
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->G:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :goto_3
    :try_start_3
    iget-object v0, p0, Ltn/e;->d:Lio/bidmachine/media3/common/a;

    .line 61
    .line 62
    iget v0, v0, Lio/bidmachine/media3/common/a;->f:I

    .line 63
    .line 64
    and-int/lit16 v0, v0, 0x4000

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/d;->E:Lmn/f;

    .line 69
    .line 70
    invoke-interface {p4}, Lmn/f;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    .line 72
    .line 73
    :try_start_4
    invoke-interface {p3}, Lao/q;->getPosition()J

    .line 74
    .line 75
    .line 76
    move-result-wide p3

    .line 77
    iget-wide v0, p2, Len/g;->g:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_4
    invoke-static {p1}, Len/f;->a(Len/d;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    :try_start_5
    throw p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 85
    :goto_5
    :try_start_6
    invoke-interface {p3}, Lao/q;->getPosition()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iget-wide p2, p2, Len/g;->g:J

    .line 90
    .line 91
    sub-long/2addr v0, p2

    .line 92
    long-to-int p2, v0

    .line 93
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->G:I

    .line 94
    .line 95
    throw p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 96
    :goto_6
    invoke-static {p1}, Len/f;->a(Len/d;)V

    .line 97
    .line 98
    .line 99
    throw p2
.end method

.method private static j(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lh7/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "0x"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    .line 19
    .line 20
    const/16 v1, 0x10

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-array v0, v1, [B

    .line 30
    .line 31
    array-length v2, p0

    .line 32
    if-le v2, v1, :cond_1

    .line 33
    .line 34
    array-length v2, p0

    .line 35
    sub-int/2addr v2, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    :goto_0
    array-length v3, p0

    .line 39
    sub-int/2addr v1, v3

    .line 40
    add-int/2addr v1, v2

    .line 41
    array-length v3, p0

    .line 42
    sub-int/2addr v3, v2

    .line 43
    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method private static n(Lio/bidmachine/media3/exoplayer/hls/b$e;Lio/bidmachine/media3/exoplayer/hls/playlist/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/b$e;->a:Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;

    .line 2
    .line 3
    instance-of v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;

    .line 8
    .line 9
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;->l:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget p0, p0, Lio/bidmachine/media3/exoplayer/hls/b$e;->c:I

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    iget-boolean p0, p1, Lnn/d;->c:Z

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0

    .line 26
    :cond_2
    iget-boolean p0, p1, Lnn/d;->c:Z

    .line 27
    .line 28
    return p0
.end method

.method private p()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltn/e;->i:Len/n;

    .line 2
    .line 3
    iget-object v1, p0, Ltn/e;->b:Len/g;

    .line 4
    .line 5
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->A:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {p0, v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/d;->i(Len/d;Len/g;ZZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private q()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->H:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->p:Len/d;

    .line 7
    .line 8
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->q:Len/g;

    .line 12
    .line 13
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->p:Len/d;

    .line 17
    .line 18
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->q:Len/g;

    .line 19
    .line 20
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->B:Z

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0, v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/d;->i(Len/d;Len/g;ZZ)V

    .line 24
    .line 25
    .line 26
    iput v3, p0, Lio/bidmachine/media3/exoplayer/hls/d;->G:I

    .line 27
    .line 28
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/hls/d;->H:Z

    .line 29
    .line 30
    return-void
.end method

.method private r(Lao/q;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lao/q;->resetPeekPosition()V

    .line 2
    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 10
    .line 11
    const/16 v3, 0xa

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lcn/b0;->S(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcn/b0;->e()[B

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-interface {p1, v2, v4, v3}, Lao/q;->peekFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcn/b0;->K()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const v5, 0x494433

    .line 33
    .line 34
    .line 35
    if-eq v2, v5, :cond_0

    .line 36
    .line 37
    return-wide v0

    .line 38
    :cond_0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    invoke-virtual {v2, v5}, Lcn/b0;->X(I)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcn/b0;->G()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/lit8 v5, v2, 0xa

    .line 51
    .line 52
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 53
    .line 54
    invoke-virtual {v6}, Lcn/b0;->b()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-le v5, v6, :cond_1

    .line 59
    .line 60
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 61
    .line 62
    invoke-virtual {v6}, Lcn/b0;->e()[B

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 67
    .line 68
    invoke-virtual {v7, v5}, Lcn/b0;->S(I)V

    .line 69
    .line 70
    .line 71
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 72
    .line 73
    invoke-virtual {v5}, Lcn/b0;->e()[B

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v6, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 81
    .line 82
    invoke-virtual {v5}, Lcn/b0;->e()[B

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-interface {p1, v5, v3, v2}, Lao/q;->peekFully([BII)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->y:Lpo/h;

    .line 90
    .line 91
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcn/b0;->e()[B

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {p1, v3, v2}, Lpo/h;->e([BI)Lzm/t;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    return-wide v0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lzm/t;->e()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    move v3, v4

    .line 109
    :goto_0
    if-ge v3, v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1, v3}, Lzm/t;->d(I)Lzm/t$a;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    instance-of v6, v5, Lpo/m;

    .line 116
    .line 117
    if-eqz v6, :cond_3

    .line 118
    .line 119
    check-cast v5, Lpo/m;

    .line 120
    .line 121
    iget-object v6, v5, Lpo/m;->b:Ljava/lang/String;

    .line 122
    .line 123
    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    .line 124
    .line 125
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_3

    .line 130
    .line 131
    iget-object p1, v5, Lpo/m;->c:[B

    .line 132
    .line 133
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcn/b0;->e()[B

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const/16 v1, 0x8

    .line 140
    .line 141
    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 145
    .line 146
    invoke-virtual {p1, v4}, Lcn/b0;->W(I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Lcn/b0;->V(I)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->z:Lcn/b0;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcn/b0;->A()J

    .line 157
    .line 158
    .line 159
    move-result-wide v0

    .line 160
    const-wide v2, 0x1ffffffffL

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    and-long/2addr v0, v2

    .line 166
    return-wide v0

    .line 167
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :catch_0
    :cond_4
    return-wide v0
.end method

.method private s(Len/d;Len/g;Z)Lao/i;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Len/d;->b(Len/g;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/d;->u:Lcn/h0;

    .line 8
    .line 9
    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/hls/d;->s:Z

    .line 10
    .line 11
    iget-wide v8, p0, Ltn/e;->g:J

    .line 12
    .line 13
    iget-wide v10, p0, Lio/bidmachine/media3/exoplayer/hls/d;->D:J

    .line 14
    .line 15
    invoke-virtual/range {v6 .. v11}, Lcn/h0;->j(ZJJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/io/IOException;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw p2

    .line 26
    :catch_1
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_0
    new-instance p3, Lao/i;

    .line 33
    .line 34
    iget-wide v2, p2, Len/g;->g:J

    .line 35
    .line 36
    move-object v0, p3

    .line 37
    move-object v1, p1

    .line 38
    invoke-direct/range {v0 .. v5}, Lao/i;-><init>(Lzm/h;JJ)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->E:Lmn/f;

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    invoke-direct {p0, p3}, Lio/bidmachine/media3/exoplayer/hls/d;->r(Lao/q;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    invoke-virtual {p3}, Lao/i;->resetPeekPosition()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->r:Lmn/f;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Lmn/f;->f()Lmn/f;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->v:Lmn/e;

    .line 62
    .line 63
    iget-object v1, p2, Len/g;->a:Landroid/net/Uri;

    .line 64
    .line 65
    iget-object v2, p0, Ltn/e;->d:Lio/bidmachine/media3/common/a;

    .line 66
    .line 67
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/d;->w:Ljava/util/List;

    .line 68
    .line 69
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/d;->u:Lcn/h0;

    .line 70
    .line 71
    invoke-interface {p1}, Len/d;->getResponseHeaders()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/hls/d;->C:Lhn/b2;

    .line 76
    .line 77
    move-object v6, p3

    .line 78
    invoke-interface/range {v0 .. v7}, Lmn/e;->e(Landroid/net/Uri;Lio/bidmachine/media3/common/a;Ljava/util/List;Lcn/h0;Ljava/util/Map;Lao/q;Lhn/b2;)Lmn/f;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->E:Lmn/f;

    .line 83
    .line 84
    invoke-interface {p1}, Lmn/f;->e()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->F:Lio/bidmachine/media3/exoplayer/hls/k;

    .line 91
    .line 92
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    cmp-long p2, v8, v0

    .line 98
    .line 99
    if-eqz p2, :cond_2

    .line 100
    .line 101
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->u:Lcn/h0;

    .line 102
    .line 103
    invoke-virtual {p2, v8, v9}, Lcn/h0;->b(J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    iget-wide v0, p0, Ltn/e;->g:J

    .line 109
    .line 110
    :goto_2
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/k;->f0(J)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->F:Lio/bidmachine/media3/exoplayer/hls/k;

    .line 115
    .line 116
    const-wide/16 v0, 0x0

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/k;->f0(J)V

    .line 119
    .line 120
    .line 121
    :goto_3
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->F:Lio/bidmachine/media3/exoplayer/hls/k;

    .line 122
    .line 123
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/k;->R()V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->E:Lmn/f;

    .line 127
    .line 128
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->F:Lio/bidmachine/media3/exoplayer/hls/k;

    .line 129
    .line 130
    invoke-interface {p1, p2}, Lmn/f;->b(Lao/r;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->F:Lio/bidmachine/media3/exoplayer/hls/k;

    .line 134
    .line 135
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->x:Lio/bidmachine/media3/common/DrmInitData;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/hls/k;->c0(Lio/bidmachine/media3/common/DrmInitData;)V

    .line 138
    .line 139
    .line 140
    return-object p3
.end method

.method public static u(Lio/bidmachine/media3/exoplayer/hls/d;Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/hls/playlist/c;Lio/bidmachine/media3/exoplayer/hls/b$e;J)Z
    .locals 3
    .param p0    # Lio/bidmachine/media3/exoplayer/hls/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->m:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->J:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    iget-object p1, p3, Lio/bidmachine/media3/exoplayer/hls/b$e;->a:Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;

    .line 19
    .line 20
    iget-wide v1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 21
    .line 22
    add-long/2addr p4, v1

    .line 23
    invoke-static {p3, p2}, Lio/bidmachine/media3/exoplayer/hls/d;->n(Lio/bidmachine/media3/exoplayer/hls/b$e;Lio/bidmachine/media3/exoplayer/hls/playlist/c;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-wide p0, p0, Ltn/e;->h:J

    .line 30
    .line 31
    cmp-long p0, p4, p0

    .line 32
    .line 33
    if-gez p0, :cond_3

    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x1

    .line 36
    :cond_3
    return v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->I:Z

    .line 3
    .line 4
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->J:Z

    .line 2
    .line 3
    return v0
.end method

.method public k(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->n:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->K:Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->K:Lcom/google/common/collect/ImmutableList;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public l(Lio/bidmachine/media3/exoplayer/hls/k;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/k;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/d;->F:Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/d;->K:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    return-void
.end method

.method public load()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->F:Lio/bidmachine/media3/exoplayer/hls/k;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->E:Lmn/f;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->r:Lmn/f;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lmn/f;->d()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->r:Lmn/f;

    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->E:Lmn/f;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->H:Z

    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/d;->q()V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->I:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->t:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/d;->p()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->I:Z

    .line 42
    .line 43
    xor-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->J:Z

    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->L:Z

    .line 3
    .line 4
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->M:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/d;->M:Z

    .line 3
    .line 4
    return-void
.end method
