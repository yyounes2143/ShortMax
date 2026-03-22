.class public final Lcom/inmobi/media/L5;
.super Lcom/inmobi/media/Xe;
.source "SourceFile"


# instance fields
.field public final e:Lcom/inmobi/media/af;

.field public final f:Lcom/inmobi/media/S4;

.field public final g:Lcom/inmobi/media/z5;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;Lcom/inmobi/media/af;Lcom/inmobi/media/S4;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "container"

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
    const-string v0, "htmlAdTracker"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/inmobi/media/Xe;-><init>(Lcom/inmobi/media/x;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/inmobi/media/L5;->g:Lcom/inmobi/media/z5;

    .line 24
    .line 25
    const-class p1, Lcom/inmobi/media/L5;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    invoke-virtual {p3}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    invoke-virtual {v0, p3}, Lcom/inmobi/media/S4;->a(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    invoke-virtual {v0, p3}, Lcom/inmobi/media/S4;->b(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Lcom/inmobi/media/af;->d()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/inmobi/media/L5;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "destroy"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/S4;->a(Landroid/view/View;)V

    .line 106
    iget-object v1, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/S4;->b(Landroid/view/View;)V

    .line 107
    :cond_1
    invoke-super {p0}, Lcom/inmobi/media/Xe;->a()V

    .line 108
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->a()V

    return-void
.end method

.method public final a(B)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Landroid/content/Context;B)V
    .locals 10

    const-string v0, "Exception in onActivityStateChanged with message : "

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/inmobi/media/L5;->g:Lcom/inmobi/media/z5;

    const-string v3, "TAG"

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

    .line 54
    const-string v5, "onActivityStateChanged - state - "

    invoke-static {v4, v3, v5, p2}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 55
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const-string v4, "HtmlAdTracker"

    if-nez p2, :cond_5

    .line 56
    :try_start_0
    iget-object p2, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    .line 57
    iget-object v5, p2, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_1

    .line 58
    const-string v6, "onActivityStarted"

    check-cast v5, Lcom/inmobi/media/A5;

    invoke-virtual {v5, v4, v6}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_6

    :catch_0
    move-exception p2

    goto/16 :goto_4

    .line 59
    :cond_1
    :goto_0
    iget-object v4, p2, Lcom/inmobi/media/S4;->g:Lcom/inmobi/media/g5;

    if-eqz v4, :cond_4

    .line 60
    iget-object v5, v4, Lcom/inmobi/media/g5;->d:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v5, v4, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/inmobi/media/e5;

    .line 62
    iget-object v8, v4, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    .line 63
    iget-object v9, v6, Lcom/inmobi/media/e5;->a:Ljava/lang/Object;

    .line 64
    iget v6, v6, Lcom/inmobi/media/e5;->b:I

    .line 65
    invoke-virtual {v8, v7, v9, v6}, Lcom/inmobi/media/lf;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object v5, v4, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 67
    :cond_3
    iget-object v2, v4, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    iget-object v5, v4, Lcom/inmobi/media/g5;->f:Lcom/inmobi/media/f5;

    iget-wide v6, v4, Lcom/inmobi/media/g5;->g:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    :goto_2
    iget-object v2, v4, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v2}, Lcom/inmobi/media/lf;->f()V

    .line 69
    :cond_4
    iget-object p2, p2, Lcom/inmobi/media/S4;->h:Lcom/inmobi/media/X4;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/inmobi/media/lf;->f()V

    goto :goto_3

    :cond_5
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p2, v5, :cond_8

    .line 70
    iget-object p2, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    .line 71
    iget-object v2, p2, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_6

    .line 72
    const-string v5, "onActivityStopped"

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v4, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_6
    iget-object v2, p2, Lcom/inmobi/media/S4;->g:Lcom/inmobi/media/g5;

    if-eqz v2, :cond_7

    .line 74
    iget-object v4, v2, Lcom/inmobi/media/g5;->d:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v4, v2, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v4}, Lcom/inmobi/media/lf;->a()V

    .line 76
    iget-object v4, v2, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    iget-object v2, v2, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 78
    :cond_7
    iget-object p2, p2, Lcom/inmobi/media/S4;->h:Lcom/inmobi/media/X4;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/inmobi/media/lf;->e()V

    goto :goto_3

    :cond_8
    const/4 v5, 0x2

    if-ne p2, v5, :cond_c

    .line 79
    iget-object p2, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    .line 80
    iget-object v5, p2, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_9

    .line 81
    const-string v7, "onActivityDestroyed"

    check-cast v5, Lcom/inmobi/media/A5;

    invoke-virtual {v5, v4, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_9
    iget-object v4, p2, Lcom/inmobi/media/S4;->g:Lcom/inmobi/media/g5;

    if-eqz v4, :cond_a

    .line 83
    iget-object v5, v4, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    .line 84
    iget-object v5, v4, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    .line 85
    iget-object v5, v4, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v5}, Lcom/inmobi/media/lf;->a()V

    .line 86
    iget-object v5, v4, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object v2, v4, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v2}, Lcom/inmobi/media/lf;->b()V

    .line 88
    :cond_a
    iput-object v6, p2, Lcom/inmobi/media/S4;->g:Lcom/inmobi/media/g5;

    .line 89
    iget-object v2, p2, Lcom/inmobi/media/S4;->h:Lcom/inmobi/media/X4;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/inmobi/media/lf;->b()V

    .line 90
    :cond_b
    iput-object v6, p2, Lcom/inmobi/media/S4;->h:Lcom/inmobi/media/X4;

    goto :goto_3

    .line 91
    :cond_c
    iget-object p2, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_d
    :goto_3
    iget-object p2, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    goto :goto_5

    .line 93
    :goto_4
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/media/L5;->g:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_e

    iget-object v4, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_e
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, p2}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 95
    const-string p2, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object p2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p2, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    iget-object p2, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    .line 98
    :goto_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 100
    :goto_6
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    throw p2
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    instance-of v0, p1, Lcom/inmobi/media/lc;

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/af;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
    .locals 4

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obstructionCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lcom/inmobi/media/lc;

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    .line 44
    iget-object p1, p0, Lcom/inmobi/media/L5;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "Ignoring RenderViewSibling as friendly view"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/L5;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_2

    .line 46
    iget-object v2, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

    .line 47
    const-string v3, "Adding friendly view: "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with obstruction code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/af;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 9

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/L5;->g:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

    .line 9
    const-string v3, "startTrackingForImpression with "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " friendly views"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 12
    iget-object v0, p0, Lcom/inmobi/media/L5;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "start tracking"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/Xe;->d:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 14
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v6

    .line 15
    iget-object v0, p0, Lcom/inmobi/media/Xe;->a:Lcom/inmobi/media/x;

    .line 16
    const-string v1, "null cannot be cast to non-null type com.inmobi.ads.containers.RenderView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/ec;

    .line 17
    invoke-virtual {v0, p1}, Lcom/inmobi/media/ec;->setFriendlyViews(Ljava/util/Map;)V

    .line 18
    iget-object p1, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string v1, "view"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "token"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "viewabilityConfig"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v1, p1, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    const-string v2, "HtmlAdTracker"

    if-eqz v1, :cond_3

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v3, "startTrackingForImpression"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_3
    iget-byte v1, p1, Lcom/inmobi/media/S4;->a:B

    if-nez v1, :cond_4

    .line 22
    iget-object p1, p1, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_b

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "impression type is loaded. return"

    invoke-virtual {p1, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 23
    :cond_4
    iget-object v1, p1, Lcom/inmobi/media/S4;->b:Ljava/lang/String;

    const-string v3, "video"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 24
    iget-object v1, p1, Lcom/inmobi/media/S4;->b:Ljava/lang/String;

    const-string v3, "audio"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 25
    :cond_5
    iget-byte v1, p1, Lcom/inmobi/media/S4;->a:B

    .line 26
    iget-object v3, p1, Lcom/inmobi/media/S4;->g:Lcom/inmobi/media/g5;

    if-nez v3, :cond_8

    .line 27
    iget-object v3, p1, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "creating Visibility Tracker for "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v2, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_6
    new-instance v3, Lcom/inmobi/media/X4;

    .line 29
    iget-object v5, p1, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    .line 30
    invoke-direct {v3, v6, v1, v5}, Lcom/inmobi/media/X4;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;BLcom/inmobi/media/z5;)V

    .line 31
    iget-object v5, p1, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "creating Impression Tracker for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v5, Lcom/inmobi/media/A5;

    invoke-virtual {v5, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_7
    new-instance v1, Lcom/inmobi/media/g5;

    iget-object v5, p1, Lcom/inmobi/media/S4;->j:Lcom/inmobi/media/Q4;

    invoke-direct {v1, v6, v3, v5}, Lcom/inmobi/media/g5;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;Lcom/inmobi/media/lf;Lcom/inmobi/media/d5;)V

    .line 33
    iput-object v1, p1, Lcom/inmobi/media/S4;->g:Lcom/inmobi/media/g5;

    move-object v3, v1

    .line 34
    :cond_8
    iget-object v1, p1, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_9

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v5, "impression tracker add view"

    invoke-virtual {v1, v2, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_9
    iget v1, p1, Lcom/inmobi/media/S4;->d:I

    .line 36
    iget p1, p1, Lcom/inmobi/media/S4;->c:I

    .line 37
    invoke-virtual {v3, v4, v4, v1, p1}, Lcom/inmobi/media/g5;->a(Landroid/view/View;Ljava/lang/Object;II)V

    goto :goto_2

    .line 38
    :cond_a
    :goto_1
    iget-object p1, p1, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_b

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "creative type is video and audio. return"

    invoke-virtual {p1, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    .line 40
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getVISIBILITY_CHANGE_LISTENER()Lcom/inmobi/media/ef;

    move-result-object v5

    const/4 v7, 0x0

    move-object v3, v4

    .line 41
    invoke-virtual/range {v2 .. v7}, Lcom/inmobi/media/S4;->a(Landroid/view/View;Landroid/view/View;Lcom/inmobi/media/ef;Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;Z)V

    .line 42
    iget-object p1, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

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
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/Xe;->b:Lcom/inmobi/media/x8;

    .line 4
    .line 5
    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/af;->d()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/L5;->g:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/L5;->h:Ljava/lang/String;

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
    const-string v2, "stopTrackingForImpression"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/inmobi/media/L5;->f:Lcom/inmobi/media/S4;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/inmobi/media/S4;->a(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/inmobi/media/L5;->e:Lcom/inmobi/media/af;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
