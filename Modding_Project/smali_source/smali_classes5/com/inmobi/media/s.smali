.class public final Lcom/inmobi/media/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/s;

.field public static b:Landroid/media/AudioManager;

.field public static c:Lcom/inmobi/media/n;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public static f:Ljava/util/concurrent/ScheduledFuture;

.field public static final g:Ljava/util/Set;

.field public static h:Lcom/inmobi/media/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/inmobi/media/s;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/s;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/s;->a:Lcom/inmobi/media/s;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/inmobi/media/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/inmobi/media/s;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/inmobi/media/s;->g:Ljava/util/Set;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(J)V
    .locals 8

    .line 3
    sget-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 4
    new-instance v2, Lub/h6;

    invoke-direct {v2}, Lub/h6;-><init>()V

    .line 5
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    move-wide v5, p0

    .line 6
    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static a(Lcom/inmobi/media/z5;Lcom/inmobi/media/Ib;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    new-instance v1, Lub/g6;

    invoke-direct {v1, p0, p1}, Lub/g6;-><init>(Lcom/inmobi/media/z5;Lcom/inmobi/media/Ib;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/Float;)V
    .locals 5

    .line 10
    sget-object v0, Lcom/inmobi/media/s;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    sget-object v0, Lcom/inmobi/media/s;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/Ib;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    .line 13
    invoke-static {v2}, Lcom/inmobi/media/B2;->a(F)F

    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 15
    :goto_1
    iget-object v1, v1, Lcom/inmobi/media/Ib;->a:Lcom/inmobi/media/ec;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "window.mraidview.broadcastEvent(\'audioVolumeChange\', "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final b(Lcom/inmobi/media/z5;Lcom/inmobi/media/Ib;)V
    .locals 6

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdAudioTracker"

    if-eqz p0, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding audio volume change listener. Existing listeners - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/inmobi/media/s;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    move-object v2, p0

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v1, Lcom/inmobi/media/s;->g:Ljava/util/Set;

    const-string v2, "listeners"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6
    sget-object v3, Lcom/inmobi/media/s;->g:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    sget-object v1, Lcom/inmobi/media/s;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    .line 8
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/inmobi/media/s;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    .line 10
    invoke-static {v1}, Lcom/inmobi/media/B2;->a(F)F

    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    .line 12
    :goto_1
    iget-object p1, p1, Lcom/inmobi/media/Ib;->a:Lcom/inmobi/media/ec;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "window.mraidview.broadcastEvent(\'audioVolumeChange\', "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    if-eqz v2, :cond_8

    if-eqz p0, :cond_4

    .line 13
    move-object p1, p0

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "Starting audio volume change listener"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_6

    if-eqz p0, :cond_5

    .line 15
    check-cast p0, Lcom/inmobi/media/A5;

    const-string p1, "Context is null. Cannot start audio volume tracking"

    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5
    invoke-static {v3}, Lcom/inmobi/media/s;->a(Ljava/lang/Float;)V

    goto :goto_2

    .line 17
    :cond_6
    sget-object v1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 18
    const-string v1, "ads"

    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    .line 19
    check-cast v1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 20
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getMraid3Config()Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->getMuteChangeInterval()J

    move-result-wide v1

    .line 21
    new-instance v4, Lcom/inmobi/media/r;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/inmobi/media/r;-><init>(Lcom/inmobi/media/z5;Landroid/content/Context;J)V

    invoke-static {v4}, Lcom/inmobi/media/C2;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_9

    if-eqz p0, :cond_7

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error starting audio volume tracking - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/inmobi/media/A5;

    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_7
    invoke-static {v3}, Lcom/inmobi/media/s;->a(Ljava/lang/Float;)V

    goto :goto_2

    :cond_8
    if-eqz p0, :cond_9

    .line 25
    check-cast p0, Lcom/inmobi/media/A5;

    const-string p1, "Resuming audio volume change listener"

    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static b()Z
    .locals 3

    .line 26
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->H()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/inmobi/media/s;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lcom/inmobi/media/s;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/inmobi/media/Uc;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c()V
    .locals 2

    .line 3
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->H()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/inmobi/media/s;->a(Ljava/lang/Float;)V

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 6
    new-instance v1, Lub/i6;

    invoke-direct {v1}, Lub/i6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/inmobi/media/z5;Lcom/inmobi/media/Ib;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    new-instance v1, Lub/j6;

    invoke-direct {v1, p0, p1}, Lub/j6;-><init>(Lcom/inmobi/media/z5;Lcom/inmobi/media/Ib;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final d()V
    .locals 1

    .line 17
    sget-object v0, Lcom/inmobi/media/s;->a:Lcom/inmobi/media/s;

    invoke-virtual {v0}, Lcom/inmobi/media/s;->a()F

    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/media/s;->a(Ljava/lang/Float;)V

    return-void
.end method

.method public static final d(Lcom/inmobi/media/z5;Lcom/inmobi/media/Ib;)V
    .locals 4

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdAudioTracker"

    if-eqz p0, :cond_0

    .line 1
    move-object v1, p0

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "Removing audio volume change listener"

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    sget-object v1, Lcom/inmobi/media/s;->g:Ljava/util/Set;

    const-string v2, "listeners"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    sget-object v3, Lcom/inmobi/media/s;->g:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Lcom/inmobi/media/s;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p0, :cond_3

    .line 7
    move-object p1, p0

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "Stopping audio volume change listener"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_5

    if-eqz p0, :cond_4

    .line 9
    check-cast p0, Lcom/inmobi/media/A5;

    const-string p1, "Context is null. Cannot stop audio volume tracking"

    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    .line 10
    invoke-static {p0}, Lcom/inmobi/media/s;->a(Ljava/lang/Float;)V

    goto :goto_1

    .line 11
    :cond_5
    sget-object v1, Lcom/inmobi/media/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p0, :cond_6

    .line 12
    move-object v1, p0

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "Stopping audio volume tracking"

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_6
    new-instance v1, Lcom/inmobi/media/p;

    invoke-direct {v1, p1}, Lcom/inmobi/media/p;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/inmobi/media/C2;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error cleaning up audio volume tracker - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/inmobi/media/A5;

    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    if-eqz p0, :cond_8

    .line 16
    check-cast p0, Lcom/inmobi/media/A5;

    const-string p1, "Audio volume tracking is already stopped"

    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public static final e()V
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/inmobi/media/s;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/inmobi/media/s;->a(Ljava/lang/Float;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()F
    .locals 5

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/s;->b()Z

    move-result v0

    .line 8
    sget-object v1, Lcom/inmobi/media/s;->b:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    move v1, v2

    .line 9
    :goto_0
    sget-object v4, Lcom/inmobi/media/s;->b:Landroid/media/AudioManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    if-le v1, v2, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    :goto_2
    monitor-exit p0

    return v0

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
