.class public final Lcom/inmobi/media/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/u1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/B0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/B0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/B0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/k;)V
    .locals 8

    const-string v0, "assetBatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/B0;

    .line 6
    iget-object v1, v0, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    const-string v2, "access$getTAG$p(...)"

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v0, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    .line 8
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onAssetsFetchSuccess of batch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v0, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/k;->h:Ljava/util/Set;

    .line 10
    iget-object p1, p1, Lcom/inmobi/media/k;->g:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/j;

    .line 12
    iget-boolean v3, v1, Lcom/inmobi/media/j;->i:Z

    if-nez v3, :cond_1

    .line 13
    iget-object v3, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/B0;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/xb;

    .line 16
    iget-object v6, v4, Lcom/inmobi/media/xb;->b:Ljava/lang/String;

    .line 17
    iget-object v7, v1, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 18
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 19
    iget-byte v3, v4, Lcom/inmobi/media/xb;->a:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 20
    const-string v5, "image"

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 21
    const-string v5, "gif"

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    .line 22
    const-string v5, "video"

    .line 23
    :cond_5
    :goto_1
    iget-wide v3, v1, Lcom/inmobi/media/j;->k:J

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "latency"

    invoke-static {v4, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 25
    iget-object v1, v1, Lcom/inmobi/media/j;->c:Ljava/lang/String;

    const-wide/16 v6, 0x0

    .line 26
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 27
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 30
    :catch_0
    const-string v1, "F4"

    const-string v4, "TAG"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_2
    long-to-float v1, v6

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    const/16 v4, 0x400

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 31
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v4, "size"

    invoke-static {v4, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 32
    const-string v4, "assetType"

    invoke-static {v4, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 33
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object v5

    const-string v6, "networkType"

    invoke-static {v6, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    filled-new-array {v3, v1, v4, v5}, [Lkotlin/Pair;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 35
    iget-object v3, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/B0;

    .line 36
    iget-object v3, v3, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    .line 37
    invoke-virtual {v3}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "adType"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_7
    iget-object v3, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/B0;

    .line 39
    iget-object v3, v3, Lcom/inmobi/media/B0;->b:Lcom/inmobi/media/S0;

    .line 40
    const-string v4, "AssetDownloaded"

    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/S0;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 41
    :cond_8
    iget-object p1, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/B0;

    .line 42
    iget-object v0, p1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_9

    .line 43
    iget-object p1, p1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    .line 44
    const-string v1, "Notifying ad unit with placement ID ("

    invoke-static {p1, v2, v1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/B0;

    .line 46
    iget-object v2, v2, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final a(Lcom/inmobi/media/k;B)V
    .locals 3

    const-string p2, "assetBatch"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/inmobi/media/z0;->a:Lcom/inmobi/media/B0;

    .line 2
    iget-object v0, p2, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p2, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    .line 4
    const-string v1, "access$getTAG$p(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAssetsFetchFailure of batch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, p2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
