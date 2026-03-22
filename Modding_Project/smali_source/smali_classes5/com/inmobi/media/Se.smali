.class public final Lcom/inmobi/media/Se;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/Se;

.field public static final b:Lms/i;

.field public static final c:Lms/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/Se;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/Se;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/Se;->a:Lcom/inmobi/media/Se;

    .line 7
    .line 8
    sget-object v0, Lcom/inmobi/media/Re;->a:Lcom/inmobi/media/Re;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/inmobi/media/Se;->b:Lms/i;

    .line 15
    .line 16
    sget-object v0, Lcom/inmobi/media/Qe;->a:Lcom/inmobi/media/Qe;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/inmobi/media/Se;->c:Lms/i;

    .line 23
    .line 24
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

.method public static final a(Lcom/inmobi/media/Te;Lcom/inmobi/media/h;ZS)V
    .locals 1

    const-string v0, "$ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p0, p1, p2, p3}, Lcom/inmobi/media/Te;->a(Lcom/inmobi/media/h;ZS)V

    return-void
.end method

.method public static a(Lcom/inmobi/media/h;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/Te;Lcom/inmobi/media/z5;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/Se;->b:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v1, Lub/d2;

    invoke-direct {v1, p0, p1, p2, p3}, Lub/d2;-><init>(Lcom/inmobi/media/h;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/Te;Lcom/inmobi/media/z5;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final b(Lcom/inmobi/media/h;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/Te;Lcom/inmobi/media/z5;)V
    .locals 3

    .line 1
    const-string v0, "$ad"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$adConfig"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/inmobi/media/Se;->a:Lcom/inmobi/media/Se;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/h;->s()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2, p2}, Lcom/inmobi/media/Se;->a(Ljava/lang/String;Lcom/inmobi/media/Te;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-static {p0, p1, p3}, Lcom/inmobi/media/J;->a(Lcom/inmobi/media/h;Lcom/inmobi/commons/core/configs/AdConfig;Lcom/inmobi/media/z5;)Lcom/inmobi/media/h;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const/16 p1, 0x4b

    .line 31
    .line 32
    invoke-virtual {v0, p0, v1, p1}, Lcom/inmobi/media/Se;->a(Lcom/inmobi/media/h;ZS)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p2, 0x1

    .line 39
    invoke-virtual {v0, p1, p2, v1}, Lcom/inmobi/media/Se;->a(Lcom/inmobi/media/h;ZS)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/inmobi/ads/exceptions/VastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :goto_0
    invoke-virtual {p1}, Lcom/inmobi/ads/exceptions/VastException;->getTelemetryErrorCode()S

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v0, p0, v1, p1}, Lcom/inmobi/media/Se;->a(Lcom/inmobi/media/h;ZS)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_1
    const/16 p1, 0x3a

    .line 52
    .line 53
    invoke-virtual {v0, p0, v1, p1}, Lcom/inmobi/media/Se;->a(Lcom/inmobi/media/h;ZS)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/inmobi/media/h;ZS)V
    .locals 4

    monitor-enter p0

    .line 8
    :try_start_0
    sget-object v0, Lcom/inmobi/media/Se;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {p1}, Lcom/inmobi/media/h;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/Te;

    if-eqz v1, :cond_0

    .line 12
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lub/c2;

    invoke-direct {v3, v1, p1, p2, p3}, Lub/c2;-><init>(Lcom/inmobi/media/Te;Lcom/inmobi/media/h;ZS)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 13
    :cond_0
    const-string v1, "Se"

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    .line 15
    const-string p1, "Se"

    const-string p2, "TAG"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/inmobi/media/Te;)Z
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/inmobi/media/Se;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
