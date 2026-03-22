.class final Lio/bidmachine/media3/exoplayer/video/i$g;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lzm/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final a:Lzm/g0$a;


# direct methods
.method public constructor <init>(Lzm/g0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$g;->a:Lzm/g0$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lzm/g;Lzm/j;Lzm/h0$a;Ljava/util/concurrent/Executor;Lzm/f0;Ljava/util/List;J)Lzm/x;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lzm/g;",
            "Lzm/j;",
            "Lzm/h0$a;",
            "Ljava/util/concurrent/Executor;",
            "Lzm/f0;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J)",
            "Lzm/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "io.bidmachine.media3.effect.PreviewingSingleInputVideoGraph$Factory"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lzm/g0$a;

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    move-object v1, p0

    .line 18
    :try_start_1
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/video/i$g;->a:Lzm/g0$a;

    .line 19
    .line 20
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Lzm/x$a;

    .line 30
    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move-object v5, p3

    .line 34
    move-object/from16 v6, p4

    .line 35
    .line 36
    move-object/from16 v7, p5

    .line 37
    .line 38
    move-object/from16 v8, p6

    .line 39
    .line 40
    move-object/from16 v9, p7

    .line 41
    .line 42
    move-wide/from16 v10, p8

    .line 43
    .line 44
    invoke-interface/range {v2 .. v11}, Lzm/x$a;->a(Landroid/content/Context;Lzm/g;Lzm/j;Lzm/h0$a;Ljava/util/concurrent/Executor;Lzm/f0;Ljava/util/List;J)Lzm/x;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    move-object v1, p0

    .line 53
    :goto_0
    invoke-static {v0}, Lio/bidmachine/media3/common/VideoFrameProcessingException;->b(Ljava/lang/Exception;)Lio/bidmachine/media3/common/VideoFrameProcessingException;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    throw v0
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
