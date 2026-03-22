.class public final Lcom/inmobi/media/M5;
.super Lcom/inmobi/media/We;
.source "SourceFile"


# instance fields
.field public final e:Lcom/inmobi/media/T7;

.field public final f:Lcom/inmobi/media/bf;

.field public final g:Lcom/inmobi/media/z5;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/ref/WeakReference;

.field public final j:Lcom/inmobi/media/Z7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/T7;Lcom/inmobi/media/bf;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mAdContainer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mViewableAd"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2}, Lcom/inmobi/media/We;-><init>(Lcom/inmobi/media/x;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/inmobi/media/M5;->e:Lcom/inmobi/media/T7;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    .line 24
    .line 25
    const-class p2, Lcom/inmobi/media/M5;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/inmobi/media/M5;->i:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    new-instance p1, Lcom/inmobi/media/Z7;

    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-direct {p1, p2, p4}, Lcom/inmobi/media/Z7;-><init>(BLcom/inmobi/media/z5;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/inmobi/media/M5;->j:Lcom/inmobi/media/Z7;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inflate view - deferred - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {v0}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/M5;->e:Lcom/inmobi/media/T7;

    .line 4
    iget-object v1, v1, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/inmobi/media/M5;->j:Lcom/inmobi/media/Z7;

    iget-object v3, p0, Lcom/inmobi/media/M5;->e:Lcom/inmobi/media/T7;

    invoke-virtual {v2, v1, v0, v3}, Lcom/inmobi/media/Z7;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/media/T7;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/bf;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "destroy"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/M5;->e:Lcom/inmobi/media/T7;

    .line 87
    iget-object v0, v0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 88
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 89
    iget-object v1, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 90
    iget-object v2, p0, Lcom/inmobi/media/M5;->j:Lcom/inmobi/media/Z7;

    iget-object v3, p0, Lcom/inmobi/media/M5;->e:Lcom/inmobi/media/T7;

    invoke-virtual {v2, v0, v1, v3}, Lcom/inmobi/media/Z7;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/media/T7;)V

    .line 91
    :cond_1
    invoke-super {p0}, Lcom/inmobi/media/Xe;->a()V

    .line 92
    iget-object v0, p0, Lcom/inmobi/media/M5;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 93
    iget-object v0, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {v0}, Lcom/inmobi/media/bf;->a()V

    return-void
.end method

.method public final a(B)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    .line 38
    const-string v2, "TAG"

    const-string v3, "onAdEvent - "

    invoke-static {v1, v2, v3, p1}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 39
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Landroid/content/Context;B)V
    .locals 9

    const-string v0, "Exception in onActivityStateChanged with message : "

    const-string v1, "UnHandled sate ( "

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    const-string v4, "TAG"

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    .line 42
    const-string v6, "onActivityStateChanged - "

    invoke-static {v5, v4, v6, p2}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 43
    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v5, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    if-nez p2, :cond_3

    .line 44
    :try_start_0
    iget-object p2, p0, Lcom/inmobi/media/M5;->j:Lcom/inmobi/media/Z7;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p2, p2, Lcom/inmobi/media/Z7;->d:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inmobi/media/g5;

    if-eqz p2, :cond_8

    .line 47
    iget-object v1, p2, Lcom/inmobi/media/g5;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v1, p2, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/e5;

    .line 49
    iget-object v7, p2, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    .line 50
    iget-object v8, v5, Lcom/inmobi/media/e5;->a:Ljava/lang/Object;

    .line 51
    iget v5, v5, Lcom/inmobi/media/e5;->b:I

    .line 52
    invoke-virtual {v7, v6, v8, v5}, Lcom/inmobi/media/lf;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :catch_0
    move-exception p2

    goto/16 :goto_3

    .line 53
    :cond_1
    iget-object v1, p2, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 54
    :cond_2
    iget-object v1, p2, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    iget-object v3, p2, Lcom/inmobi/media/g5;->f:Lcom/inmobi/media/f5;

    iget-wide v5, p2, Lcom/inmobi/media/g5;->g:J

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    :goto_1
    iget-object p2, p2, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {p2}, Lcom/inmobi/media/lf;->f()V

    goto/16 :goto_2

    :cond_3
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    .line 56
    iget-object p2, p0, Lcom/inmobi/media/M5;->j:Lcom/inmobi/media/Z7;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p2, p2, Lcom/inmobi/media/Z7;->d:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inmobi/media/g5;

    if-eqz p2, :cond_8

    .line 59
    iget-object v1, p2, Lcom/inmobi/media/g5;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v1, p2, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v1}, Lcom/inmobi/media/lf;->a()V

    .line 61
    iget-object v1, p2, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 62
    iget-object p2, p2, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->clear()V

    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    if-ne p2, v5, :cond_7

    .line 63
    iget-object p2, p0, Lcom/inmobi/media/M5;->j:Lcom/inmobi/media/Z7;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v1, p2, Lcom/inmobi/media/Z7;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_5

    iget-object v5, p2, Lcom/inmobi/media/Z7;->c:Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "Activity destroyed, removing impression tracker"

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v5, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_5
    iget-object v1, p2, Lcom/inmobi/media/Z7;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/g5;

    if-eqz v1, :cond_6

    .line 67
    iget-object v5, v1, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    .line 68
    iget-object v5, v1, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    .line 69
    iget-object v5, v1, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v5}, Lcom/inmobi/media/lf;->a()V

    .line 70
    iget-object v5, v1, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iget-object v1, v1, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v1}, Lcom/inmobi/media/lf;->b()V

    .line 72
    :cond_6
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    iget-object p2, p2, Lcom/inmobi/media/Z7;->d:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->isEmpty()Z

    goto :goto_2

    .line 73
    :cond_7
    iget-object v3, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_8

    iget-object v5, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ) received in onActivityStateChanged()"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v5, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    goto :goto_4

    .line 75
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v3, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_9
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, p2}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 77
    const-string p2, "event"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object p2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p2, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    iget-object p2, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    .line 80
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 82
    :goto_5
    iget-object v0, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    throw p2
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
    .locals 3

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "obstructionCode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 9

    .line 12
    const-string v0, "Exception in startTrackingForImpression with message : "

    iget-object v1, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    const-string v2, "TAG"

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    .line 13
    const-string v4, "start tracking impression with "

    invoke-static {v3, v2, v4}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " friendlyViews"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v3, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/inmobi/media/M5;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    .line 16
    iget-object p1, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {p1}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 17
    iget-object p1, p0, Lcom/inmobi/media/M5;->e:Lcom/inmobi/media/T7;

    .line 18
    iget-boolean p1, p1, Lcom/inmobi/media/T7;->t:Z

    if-nez p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "start tracking"

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    .line 20
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/M5;->j:Lcom/inmobi/media/Z7;

    .line 21
    iget-object v1, p0, Lcom/inmobi/media/M5;->e:Lcom/inmobi/media/T7;

    .line 22
    iget-object v3, p0, Lcom/inmobi/media/Xe;->d:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 23
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v3

    .line 24
    invoke-virtual {p1, v4, v5, v1, v3}, Lcom/inmobi/media/Z7;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/media/T7;Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;)V

    .line 25
    iget-object v3, p0, Lcom/inmobi/media/M5;->j:Lcom/inmobi/media/Z7;

    .line 26
    iget-object v6, p0, Lcom/inmobi/media/M5;->e:Lcom/inmobi/media/T7;

    .line 27
    invoke-virtual {v6}, Lcom/inmobi/media/T7;->i()Lcom/inmobi/media/ef;

    move-result-object v7

    .line 28
    iget-object p1, p0, Lcom/inmobi/media/Xe;->d:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 29
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    move-result-object v8

    .line 30
    invoke-virtual/range {v3 .. v8}, Lcom/inmobi/media/Z7;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/media/T7;Lcom/inmobi/media/ef;Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    .line 32
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v3, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_4
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, p1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 34
    const-string p1, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    iget-object p1, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    return-void

    :goto_4
    iget-object v0, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p1
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

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
    iget-object v0, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/Xe;->b:Lcom/inmobi/media/x8;

    .line 4
    .line 5
    return-object v0
.end method

.method public final e()V
    .locals 6

    .line 1
    const-string v0, "Exception in stopTrackingForImpression with message : "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    const-string v2, "TAG"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v1, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v4, "stopTrackingForImpression"

    .line 17
    .line 18
    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/M5;->i:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/content/Context;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v5, "stop tracking"

    .line 41
    .line 42
    check-cast v3, Lcom/inmobi/media/A5;

    .line 43
    .line 44
    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_3

    .line 50
    :catch_0
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/inmobi/media/M5;->j:Lcom/inmobi/media/Z7;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/inmobi/media/M5;->e:Lcom/inmobi/media/T7;

    .line 55
    .line 56
    invoke-virtual {v3, v1, v4}, Lcom/inmobi/media/Z7;->a(Landroid/content/Context;Lcom/inmobi/media/T7;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/media/M5;->g:Lcom/inmobi/media/z5;

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    iget-object v4, p0, Lcom/inmobi/media/M5;->h:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v3, Lcom/inmobi/media/A5;

    .line 91
    .line 92
    invoke-virtual {v3, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 96
    .line 97
    new-instance v0, Lcom/inmobi/media/f2;

    .line 98
    .line 99
    invoke-direct {v0, v1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "event"

    .line 103
    .line 104
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void

    .line 118
    :goto_3
    iget-object v1, p0, Lcom/inmobi/media/M5;->f:Lcom/inmobi/media/bf;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    throw v0
.end method
