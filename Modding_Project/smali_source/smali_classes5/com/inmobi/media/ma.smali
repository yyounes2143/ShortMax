.class public final Lcom/inmobi/media/ma;
.super Lcom/inmobi/media/We;
.source "SourceFile"


# instance fields
.field public final e:Lcom/inmobi/media/We;

.field public f:Lcom/inmobi/media/ga;

.field public final g:Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;

.field public final h:Lcom/inmobi/media/z5;

.field public final i:Ljava/lang/String;

.field public final j:F

.field public final k:Ljava/lang/ref/WeakReference;

.field public l:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/We;Lcom/inmobi/media/a9;Lcom/inmobi/media/ga;Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "context"

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
    const-string v0, "adContainer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "mVastProperties"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p3}, Lcom/inmobi/media/We;-><init>(Lcom/inmobi/media/x;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/inmobi/media/ma;->f:Lcom/inmobi/media/ga;

    .line 27
    .line 28
    iput-object p5, p0, Lcom/inmobi/media/ma;->g:Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;

    .line 29
    .line 30
    iput-object p6, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    .line 31
    .line 32
    const-class p2, Lcom/inmobi/media/ma;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    .line 39
    .line 40
    const/high16 p2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    iput p2, p0, Lcom/inmobi/media/ma;->j:F

    .line 43
    .line 44
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/inmobi/media/ma;->k:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/c9;)F
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 75
    :cond_0
    iget-object v1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 76
    const-string v2, "currentMediaVolume"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 77
    :goto_0
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 78
    const-string v2, "lastMediaVolume"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    :cond_2
    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    .line 80
    iget v0, p0, Lcom/inmobi/media/ma;->j:F

    :cond_4
    :goto_1
    return v0
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 5

    .line 64
    const-string v0, "Exception in destroy with message : "

    invoke-super {p0}, Lcom/inmobi/media/Xe;->a()V

    .line 65
    iget-object v1, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    const-string v2, "TAG"

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v4, "destroy"

    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/ma;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 67
    iget-object v1, p0, Lcom/inmobi/media/ma;->l:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/inmobi/media/ma;->f:Lcom/inmobi/media/ga;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 69
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

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

    .line 70
    :cond_2
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, v1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 71
    const-string v1, "event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->a()V

    return-void

    .line 74
    :goto_3
    iget-object v1, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->a()V

    throw v0
.end method

.method public final a(B)V
    .locals 7

    .line 40
    const-string v0, "TAG"

    const-string v1, "Exception in onAdEvent with message : "

    const-string v2, "onAdView - event - "

    .line 41
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 42
    :cond_0
    :goto_0
    iget v2, p0, Lcom/inmobi/media/ma;->j:F

    const/16 v3, 0xd

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const/16 v3, 0xe

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x6

    if-ne p1, v3, :cond_5

    .line 43
    iget-object v3, p0, Lcom/inmobi/media/Xe;->a:Lcom/inmobi/media/x;

    .line 44
    instance-of v5, v3, Lcom/inmobi/media/a9;

    if-eqz v5, :cond_6

    .line 45
    check-cast v3, Lcom/inmobi/media/a9;

    invoke-virtual {v3}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/inmobi/media/m9;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    check-cast v3, Lcom/inmobi/media/m9;

    goto :goto_1

    :cond_3
    move-object v3, v6

    :goto_1
    if-eqz v3, :cond_6

    .line 46
    invoke-virtual {v3}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/l9;->getDuration()I

    move-result v4

    .line 47
    invoke-virtual {v3}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/inmobi/media/c9;

    if-eqz v3, :cond_4

    move-object v6, v2

    check-cast v6, Lcom/inmobi/media/c9;

    .line 48
    :cond_4
    invoke-virtual {p0, v6}, Lcom/inmobi/media/ma;->a(Lcom/inmobi/media/c9;)F

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v3, 0x5

    if-ne p1, v3, :cond_6

    .line 49
    iget-object v3, p0, Lcom/inmobi/media/Xe;->a:Lcom/inmobi/media/x;

    .line 50
    instance-of v5, v3, Lcom/inmobi/media/a9;

    if-eqz v5, :cond_6

    .line 51
    check-cast v3, Lcom/inmobi/media/a9;

    invoke-virtual {v3}, Lcom/inmobi/media/a9;->k()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    .line 52
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(B)V

    return-void

    .line 53
    :cond_6
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/ma;->f:Lcom/inmobi/media/ga;

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/inmobi/media/ma;->g:Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/inmobi/media/ga;->a(IIFLcom/iab/omid/library/inmobi/adsession/media/VastProperties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(B)V

    goto :goto_4

    .line 55
    :goto_3
    :try_start_2
    iget-object v3, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

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

    .line 56
    :cond_8
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, v2}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 57
    const-string v1, "event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(B)V

    :goto_4
    return-void

    :goto_5
    iget-object v1, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v1, p1}, Lcom/inmobi/media/Xe;->a(B)V

    throw v0
.end method

.method public final a(Landroid/content/Context;B)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    .line 61
    const-string v2, "TAG"

    const-string v3, "onActivityStateChanged - state - "

    invoke-static {v1, v2, v3, p2}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 62
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/Xe;->a(Landroid/content/Context;B)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/ma;->f:Lcom/inmobi/media/ga;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-byte v0, v1, Lcom/inmobi/media/ga;->e:B

    if-lez v0, :cond_0

    .line 6
    iget-object v0, v1, Lcom/inmobi/media/ga;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->removeFriendlyObstruction(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 8
    new-instance p1, Lcom/inmobi/media/f2;

    .line 9
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Omid AdSession State Error currentState :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expectedState :: 1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-direct {p1, v1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 11
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
    .locals 1

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obstructionCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/ma;->f:Lcom/inmobi/media/ga;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/ga;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 9

    .line 13
    const-string v0, "TAG"

    const-string v1, "Exception in startTrackingForImpression with message : "

    const-string v2, "Registered ad view with OMID Video AdSession "

    .line 14
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "startTrackingForImpression"

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 15
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/inmobi/media/Xe;->d:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 16
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getOmidConfig()Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->isOmidEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 18
    sget-object v3, Lcom/inmobi/media/na;->a:Lcom/inmobi/media/oa;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Lcom/iab/omid/library/inmobi/Omid;->isActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 21
    iget-object v3, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "OMID enabled and OM SDK initialised"

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_1
    iget-object v3, p0, Lcom/inmobi/media/Xe;->a:Lcom/inmobi/media/x;

    .line 23
    instance-of v4, v3, Lcom/inmobi/media/a9;

    if-eqz v4, :cond_7

    .line 24
    check-cast v3, Lcom/inmobi/media/a9;

    invoke-virtual {v3}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/inmobi/media/m9;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    check-cast v3, Lcom/inmobi/media/m9;

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_7

    .line 25
    invoke-virtual {v3}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lcom/inmobi/media/l9;->getMediaController()Lcom/inmobi/media/e9;

    move-result-object v4

    .line 27
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/inmobi/media/ma;->l:Ljava/lang/ref/WeakReference;

    .line 28
    iget-object v6, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "creating new OM SDK ad session"

    check-cast v6, Lcom/inmobi/media/A5;

    invoke-virtual {v6, v7, v8}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_3
    iget-object v6, p0, Lcom/inmobi/media/ma;->f:Lcom/inmobi/media/ga;

    if-eqz v6, :cond_5

    if-eqz v4, :cond_4

    .line 30
    invoke-virtual {v4}, Lcom/inmobi/media/e9;->getFriendlyViews()Ljava/util/Map;

    move-result-object v5

    .line 31
    :cond_4
    iget-object v4, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v4}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object v4

    .line 32
    invoke-virtual {v6, v3, v5, v4}, Lcom/inmobi/media/ga;->a(Landroid/view/View;Ljava/util/Map;Landroid/view/View;)V

    .line 33
    :cond_5
    iget-object v3, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/ma;->f:Lcom/inmobi/media/ga;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    goto :goto_4

    .line 35
    :goto_3
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

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

    .line 36
    :cond_8
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, v2}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 37
    const-string v1, "event"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    :goto_4
    return-void

    :goto_5
    iget-object v1, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    invoke-virtual {v1, p1}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    throw v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

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

.method public final c()Lcom/inmobi/media/x8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->c()Lcom/inmobi/media/x8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->d()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()V
    .locals 6

    .line 1
    const-string v0, "TAG"

    .line 2
    .line 3
    const-string v1, "Exception in stopTrackingForImpression with message : "

    .line 4
    .line 5
    const-string v2, "Unregistered VideoView to OMID AdSession : "

    .line 6
    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/Xe;->a:Lcom/inmobi/media/x;

    .line 8
    .line 9
    instance-of v4, v3, Lcom/inmobi/media/a9;

    .line 10
    .line 11
    if-eqz v4, :cond_3

    .line 12
    .line 13
    check-cast v3, Lcom/inmobi/media/a9;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/inmobi/media/a9;->k()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_3

    .line 20
    .line 21
    iget-object v3, p0, Lcom/inmobi/media/ma;->f:Lcom/inmobi/media/ga;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-byte v4, v3, Lcom/inmobi/media/ga;->e:B

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    invoke-static {v4, v5}, Lcom/inmobi/media/ga;->a(BB)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget-object v4, v3, Lcom/inmobi/media/ga;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/iab/omid/library/inmobi/adsession/AdSession;->finish()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_4

    .line 44
    :catch_0
    move-exception v2

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 47
    iput-object v4, v3, Lcom/inmobi/media/ga;->f:Lcom/iab/omid/library/inmobi/adsession/AdSession;

    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    iput-byte v4, v3, Lcom/inmobi/media/ga;->e:B

    .line 51
    .line 52
    :cond_1
    iget-object v3, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iget-object v4, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/inmobi/media/ma;->f:Lcom/inmobi/media/ga;

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v2, 0x0

    .line 76
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v3, Lcom/inmobi/media/A5;

    .line 84
    .line 85
    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->e()V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/ma;->h:Lcom/inmobi/media/z5;

    .line 95
    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    iget-object v4, p0, Lcom/inmobi/media/ma;->i:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v3, Lcom/inmobi/media/A5;

    .line 120
    .line 121
    invoke-virtual {v3, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 125
    .line 126
    new-instance v0, Lcom/inmobi/media/f2;

    .line 127
    .line 128
    invoke-direct {v0, v2}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "event"

    .line 132
    .line 133
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->e()V

    .line 144
    .line 145
    .line 146
    :goto_3
    return-void

    .line 147
    :goto_4
    iget-object v1, p0, Lcom/inmobi/media/ma;->e:Lcom/inmobi/media/We;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->e()V

    .line 150
    .line 151
    .line 152
    throw v0
.end method
