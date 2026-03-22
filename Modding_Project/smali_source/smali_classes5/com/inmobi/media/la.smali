.class public final Lcom/inmobi/media/la;
.super Lcom/inmobi/media/We;
.source "SourceFile"


# instance fields
.field public final e:Lcom/inmobi/media/We;

.field public f:Lcom/inmobi/media/ga;

.field public final g:Lcom/inmobi/media/z5;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/T7;Lcom/inmobi/media/We;Lcom/inmobi/media/ga;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "adContainer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mViewableAd"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/inmobi/media/We;-><init>(Lcom/inmobi/media/x;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/inmobi/media/la;->f:Lcom/inmobi/media/ga;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    .line 19
    .line 20
    const-class p1, Lcom/inmobi/media/la;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 5

    .line 29
    const-string v0, "Exception in destroy with message : "

    invoke-super {p0}, Lcom/inmobi/media/Xe;->a()V

    .line 30
    iget-object v1, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    const-string v2, "TAG"

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v4, "destroy"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 31
    :try_start_0
    iput-object v1, p0, Lcom/inmobi/media/la;->f:Lcom/inmobi/media/ga;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 33
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->a()V

    :goto_0
    return-void

    :goto_1
    iget-object v1, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->a()V

    throw v0
.end method

.method public final a(B)V
    .locals 6

    .line 17
    const-string v0, "TAG"

    const-string v1, "Exception in onAdEvent with message : "

    const-string v2, "onAdEvent - event - "

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/inmobi/media/la;->f:Lcom/inmobi/media/ga;

    if-eqz v2, :cond_2

    .line 20
    iget-byte v3, v2, Lcom/inmobi/media/ga;->e:B

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/inmobi/media/ga;->a(BB)Z

    move-result v3

    if-eqz v3, :cond_2

    int-to-byte v3, p1

    if-nez v3, :cond_1

    .line 21
    iget-object v2, v2, Lcom/inmobi/media/ga;->g:Lcom/inmobi/media/y;

    if-eqz v2, :cond_2

    .line 22
    iget-object v2, v2, Lcom/inmobi/media/y;->a:Lcom/iab/omid/library/inmobi/adsession/AdEvents;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/iab/omid/library/inmobi/adsession/AdEvents;->impressionOccurred()V

    goto :goto_2

    :cond_1
    const/16 v4, 0x13

    if-ne v3, v4, :cond_2

    .line 23
    iget-object v2, v2, Lcom/inmobi/media/ga;->g:Lcom/inmobi/media/y;

    if-eqz v2, :cond_2

    .line 24
    iget-object v2, v2, Lcom/inmobi/media/y;->a:Lcom/iab/omid/library/inmobi/adsession/AdEvents;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/iab/omid/library/inmobi/adsession/AdEvents;->loaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 25
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(B)V

    return-void

    .line 27
    :goto_3
    iget-object v1, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v1, p1}, Lcom/inmobi/media/Xe;->a(B)V

    throw v0
.end method

.method public final a(Landroid/content/Context;B)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/Xe;->a(Landroid/content/Context;B)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
    .locals 1

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obstructionCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 5

    .line 4
    const-string v0, "Exception in startTrackingForImpression with message : "

    iget-object v1, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    const-string v2, "TAG"

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v4, "startTrackingForImpression"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/Xe;->d:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 6
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getOmidConfig()Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->isOmidEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lcom/inmobi/media/na;->a:Lcom/inmobi/media/oa;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/iab/omid/library/inmobi/Omid;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "OMID enabled and initialised"

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/la;->b(Ljava/util/Map;)V

    const/16 v1, 0x13

    .line 13
    invoke-virtual {p0, v1}, Lcom/inmobi/media/la;->a(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 14
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    return-void

    .line 16
    :goto_3
    iget-object v1, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v1, p1}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    throw v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/Map;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "registerView"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Xe;->a:Lcom/inmobi/media/x;

    .line 4
    instance-of v2, v0, Lcom/inmobi/media/T7;

    if-eqz v2, :cond_2

    .line 5
    check-cast v0, Lcom/inmobi/media/T7;

    invoke-virtual {v0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v1, "creating AD session"

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/la;->f:Lcom/inmobi/media/ga;

    if-eqz v1, :cond_2

    .line 8
    iget-object v2, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    invoke-virtual {v2}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v0, p1, v2}, Lcom/inmobi/media/ga;->a(Landroid/view/View;Ljava/util/Map;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v2, "inflateView"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->d()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final e()V
    .locals 5

    .line 1
    const-string v0, "TAG"

    .line 2
    .line 3
    const-string v1, "Exception in stopTrackingForImpression with message : "

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "stopTrackingForImpression"

    .line 15
    .line 16
    check-cast v2, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_3

    .line 24
    :catch_0
    move-exception v2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/inmobi/media/la;->f:Lcom/inmobi/media/ga;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-byte v3, v2, Lcom/inmobi/media/ga;->e:B

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    invoke-static {v3, v4}, Lcom/inmobi/media/ga;->a(BB)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iget-object v3, v2, Lcom/inmobi/media/ga;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->finish()V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 v3, 0x0

    .line 47
    iput-object v3, v2, Lcom/inmobi/media/ga;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    iput-byte v3, v2, Lcom/inmobi/media/ga;->e:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/la;->g:Lcom/inmobi/media/z5;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-object v4, p0, Lcom/inmobi/media/la;->h:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v3, Lcom/inmobi/media/A5;

    .line 79
    .line 80
    invoke-virtual {v3, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->e()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_3
    iget-object v1, p0, Lcom/inmobi/media/la;->e:Lcom/inmobi/media/We;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->e()V

    .line 92
    .line 93
    .line 94
    throw v0
.end method
