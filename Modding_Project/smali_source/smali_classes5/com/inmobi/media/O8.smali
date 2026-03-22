.class public final Lcom/inmobi/media/O8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Lcom/inmobi/media/p8;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Lcom/inmobi/media/p8;)V
    .locals 1

    .line 1
    const-string v0, "referencedAssetId"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nativeDataModel"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-wide p1, p0, Lcom/inmobi/media/O8;->a:J

    .line 15
    .line 16
    iput-wide p3, p0, Lcom/inmobi/media/O8;->b:J

    .line 17
    .line 18
    iput-object p5, p0, Lcom/inmobi/media/O8;->c:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/inmobi/media/O8;->d:Lcom/inmobi/media/p8;

    .line 21
    .line 22
    const-class p1, Lcom/inmobi/media/P8;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "getSimpleName(...)"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/inmobi/media/O8;->a:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/inmobi/media/O8;->d:Lcom/inmobi/media/p8;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/inmobi/media/O8;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v2, v3}, Lcom/inmobi/media/p8;->m(Ljava/lang/String;)Lcom/inmobi/media/d8;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    :try_start_0
    instance-of v5, v2, Lcom/inmobi/media/c9;

    .line 14
    .line 15
    if-eqz v5, :cond_2

    .line 16
    .line 17
    check-cast v2, Lcom/inmobi/media/c9;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v2, Lcom/inmobi/media/Ue;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/inmobi/media/Ue;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-eqz v2, :cond_2

    .line 34
    .line 35
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    .line 36
    .line 37
    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 v2, 0x9

    .line 44
    .line 45
    invoke-virtual {v5, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-wide v6, v3

    .line 57
    :goto_1
    iget-wide v8, p0, Lcom/inmobi/media/O8;->b:J

    .line 58
    .line 59
    long-to-double v8, v8

    .line 60
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 61
    .line 62
    div-double/2addr v8, v10

    .line 63
    const/16 v2, 0x3e8

    .line 64
    .line 65
    int-to-long v10, v2

    .line 66
    div-long/2addr v6, v10

    .line 67
    long-to-double v6, v6

    .line 68
    mul-double/2addr v8, v6

    .line 69
    double-to-long v6, v8

    .line 70
    add-long/2addr v0, v6

    .line 71
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :catch_0
    :cond_2
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    return-wide v0
.end method
