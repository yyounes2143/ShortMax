.class public final Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
.super Lio/bidmachine/media3/common/PlaybackException;
.source "ExoPlaybackException.java"


# instance fields
.field public final j:I

.field public final k:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:I

.field public final m:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final n:I

.field public final o:Lio/bidmachine/media3/exoplayer/source/r$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final p:Z


# direct methods
.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 1
    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILio/bidmachine/media3/common/a;IZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILio/bidmachine/media3/common/a;IZ)V
    .locals 14
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    .line 2
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->g(ILjava/lang/String;Ljava/lang/String;ILio/bidmachine/media3/common/a;I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v13, p9

    .line 4
    invoke-direct/range {v1 .. v13}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILio/bidmachine/media3/common/a;ILio/bidmachine/media3/exoplayer/source/r$b;JZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILio/bidmachine/media3/common/a;ILio/bidmachine/media3/exoplayer/source/r$b;JZ)V
    .locals 10
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v7, p0

    move v8, p4

    move/from16 v9, p12

    .line 5
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v5, p10

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILandroid/os/Bundle;J)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v9, :cond_1

    if-ne v8, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 6
    :goto_1
    invoke-static {v2}, Lcn/a;->a(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v8, v2, :cond_3

    :cond_2
    move v0, v1

    .line 7
    :cond_3
    invoke-static {v0}, Lcn/a;->a(Z)V

    .line 8
    iput v8, v7, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->j:I

    move-object v0, p5

    .line 9
    iput-object v0, v7, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->k:Ljava/lang/String;

    move/from16 v0, p6

    .line 10
    iput v0, v7, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->l:I

    move-object/from16 v0, p7

    .line 11
    iput-object v0, v7, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->m:Lio/bidmachine/media3/common/a;

    move/from16 v0, p8

    .line 12
    iput v0, v7, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->n:I

    move-object/from16 v0, p9

    .line 13
    iput-object v0, v7, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->o:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 14
    iput-boolean v9, v7, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->p:Z

    return-void
.end method

.method public static d(Ljava/lang/Throwable;Ljava/lang/String;ILio/bidmachine/media3/common/a;IZI)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
    .locals 11
    .param p3    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v10, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    move v8, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v8, p4

    .line 9
    :goto_0
    const/4 v1, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v0, v10

    .line 12
    move-object v2, p0

    .line 13
    move/from16 v4, p6

    .line 14
    .line 15
    move-object v5, p1

    .line 16
    move v6, p2

    .line 17
    move-object v7, p3

    .line 18
    move/from16 v9, p5

    .line 19
    .line 20
    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILio/bidmachine/media3/common/a;IZ)V

    .line 21
    .line 22
    .line 23
    return-object v10
.end method

.method public static e(Ljava/io/IOException;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static f(Ljava/lang/RuntimeException;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static g(ILjava/lang/String;Ljava/lang/String;ILio/bidmachine/media3/common/a;I)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 p2, 0x3

    .line 7
    if-eq p0, p2, :cond_0

    .line 8
    .line 9
    const-string p0, "Unexpected runtime error"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "Remote error"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, " error, index="

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, ", format="

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, ", format_supported="

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {p5}, Lcn/m0;->d0(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string p0, "Source error"

    .line 57
    .line 58
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p0, ": "

    .line 73
    .line 74
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :cond_3
    return-object p0
.end method


# virtual methods
.method b(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
    .locals 14
    .param p1    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    new-instance v13, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v3, p0, Lio/bidmachine/media3/common/PlaybackException;->a:I

    .line 19
    .line 20
    iget v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->j:I

    .line 21
    .line 22
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->k:Ljava/lang/String;

    .line 23
    .line 24
    iget v6, p0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->l:I

    .line 25
    .line 26
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->m:Lio/bidmachine/media3/common/a;

    .line 27
    .line 28
    iget v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->n:I

    .line 29
    .line 30
    iget-wide v10, p0, Lio/bidmachine/media3/common/PlaybackException;->b:J

    .line 31
    .line 32
    iget-boolean v12, p0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->p:Z

    .line 33
    .line 34
    move-object v0, v13

    .line 35
    move-object v9, p1

    .line 36
    invoke-direct/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILio/bidmachine/media3/common/a;ILio/bidmachine/media3/exoplayer/source/r$b;JZ)V

    .line 37
    .line 38
    .line 39
    return-object v13
.end method
