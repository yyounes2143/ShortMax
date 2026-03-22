.class public final Lcom/inmobi/media/ka;
.super Lcom/inmobi/media/We;
.source "SourceFile"


# static fields
.field public static final synthetic h:I


# instance fields
.field public final e:Lcom/inmobi/media/Xe;

.field public f:Lcom/inmobi/media/ga;

.field public final g:Lcom/inmobi/media/z5;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/x;Lcom/inmobi/media/Xe;Lcom/inmobi/media/ga;Lcom/inmobi/media/z5;)V
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
    iput-object p2, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/inmobi/media/ka;->f:Lcom/inmobi/media/ga;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    const-string v2, "ka"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "destroy"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-super {p0}, Lcom/inmobi/media/Xe;->a()V

    const/4 v0, 0x0

    .line 39
    :try_start_0
    iput-object v0, p0, Lcom/inmobi/media/ka;->f:Lcom/inmobi/media/ga;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 41
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Exception in destroy with message"

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v2, v1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->a()V

    :goto_0
    return-void

    :goto_1
    iget-object v1, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->a()V

    throw v0
.end method

.method public final a(B)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(B)V

    return-void
.end method

.method public final a(Landroid/content/Context;B)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/Xe;->a(Landroid/content/Context;B)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 5

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/inmobi/media/ka;->f:Lcom/inmobi/media/ga;

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-byte v0, v1, Lcom/inmobi/media/ga;->e:B

    if-lez v0, :cond_0

    .line 8
    iget-object v0, v1, Lcom/inmobi/media/ga;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->removeFriendlyObstruction(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 10
    new-instance v1, Lcom/inmobi/media/f2;

    .line 11
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Omid AdSession State Error currentState :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expectedState :: 1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-direct {v1, v2}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 13
    const-string v0, "event"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
    .locals 4

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obstructionCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "ka"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "addFriendlyView with obstruction code: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/ka;->f:Lcom/inmobi/media/ga;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/ga;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 7

    .line 16
    const-string v0, "Exception in startTrackingForImpression with message : "

    iget-object v1, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    const-string v2, "TAG"

    const-string v3, "ka"

    if-eqz v1, :cond_0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v4, "startTrackingForImpression"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/Xe;->d:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 18
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getOmidConfig()Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->isOmidEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    sget-object v1, Lcom/inmobi/media/na;->a:Lcom/inmobi/media/oa;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/iab/omid/library/inmobi/Omid;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Lcom/inmobi/media/Xe;->a:Lcom/inmobi/media/x;

    .line 24
    instance-of v4, v1, Lcom/inmobi/media/T7;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 25
    check-cast v1, Lcom/inmobi/media/T7;

    .line 26
    iget-object v4, v1, Lcom/inmobi/media/T7;->H:Lcom/inmobi/media/ec;

    if-nez v4, :cond_3

    .line 27
    iget-object v4, v1, Lcom/inmobi/media/T7;->I:Lcom/inmobi/media/ec;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object v1

    .line 29
    instance-of v4, v1, Landroid/webkit/WebView;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Landroid/webkit/WebView;

    goto :goto_0

    :cond_2
    move-object v4, v5

    :cond_3
    :goto_0
    if-eqz v4, :cond_5

    .line 30
    iget-object v1, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_4

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "creating OMSDK session"

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v3, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_4
    iget-object v1, p0, Lcom/inmobi/media/ka;->f:Lcom/inmobi/media/ga;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4, p1, v5}, Lcom/inmobi/media/ga;->a(Landroid/view/View;Ljava/util/Map;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 32
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    if-eqz v4, :cond_5

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v3, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    return-void

    .line 34
    :goto_3
    iget-object v1, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    invoke-virtual {v1, p1}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    throw v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    const-string v2, "ka"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v1, "inflateView called"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

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
    .locals 6

    .line 1
    const-string v0, "TAG"

    .line 2
    .line 3
    const-string v1, "ka"

    .line 4
    .line 5
    const-string v2, "Exception in stopTrackingForImpression with message : "

    .line 6
    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "stopTrackingForImpression"

    .line 15
    .line 16
    check-cast v3, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    invoke-virtual {v3, v1, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

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
    move-exception v3

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/inmobi/media/ka;->f:Lcom/inmobi/media/ga;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-byte v4, v3, Lcom/inmobi/media/ga;->e:B

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    invoke-static {v4, v5}, Lcom/inmobi/media/ga;->a(BB)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    iget-object v4, v3, Lcom/inmobi/media/ga;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->finish()V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 v4, 0x0

    .line 47
    iput-object v4, v3, Lcom/inmobi/media/ga;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    iput-byte v4, v3, Lcom/inmobi/media/ga;->e:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/inmobi/media/ka;->g:Lcom/inmobi/media/z5;

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v4, Lcom/inmobi/media/A5;

    .line 77
    .line 78
    invoke-virtual {v4, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->e()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :goto_3
    iget-object v1, p0, Lcom/inmobi/media/ka;->e:Lcom/inmobi/media/Xe;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->e()V

    .line 90
    .line 91
    .line 92
    throw v0
.end method
