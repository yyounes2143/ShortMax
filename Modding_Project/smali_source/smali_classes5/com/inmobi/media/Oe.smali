.class public final Lcom/inmobi/media/Oe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I

.field public static final e:I

.field public static final f:Lcom/inmobi/media/Ne;

.field public static final g:Ljava/util/concurrent/LinkedBlockingQueue;

.field public static h:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public final b:Lcom/inmobi/media/N9;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v1, v0, -0x1

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sput v1, Lcom/inmobi/media/Oe;->d:I

    .line 22
    .line 23
    mul-int/2addr v0, v2

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    sput v0, Lcom/inmobi/media/Oe;->e:I

    .line 27
    .line 28
    new-instance v0, Lcom/inmobi/media/Ne;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/inmobi/media/Ne;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/inmobi/media/Oe;->f:Lcom/inmobi/media/Ne;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 36
    .line 37
    const/16 v1, 0x80

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/inmobi/media/Oe;->g:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/media/Me;ILjava/util/concurrent/CountDownLatch;)V
    .locals 9

    .line 1
    const-string v0, "vastMediaFile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/inmobi/media/N9;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/inmobi/media/Me;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Lcom/inmobi/media/z5;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/inmobi/media/Oe;->b:Lcom/inmobi/media/N9;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lcom/inmobi/media/N9;->t:Z

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/inmobi/media/N9;->u:Z

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/inmobi/media/N9;->x:Z

    .line 25
    .line 26
    iput p2, v0, Lcom/inmobi/media/N9;->p:I

    .line 27
    .line 28
    const/4 p2, 0x1

    .line 29
    iput-boolean p2, v0, Lcom/inmobi/media/N9;->s:Z

    .line 30
    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/inmobi/media/Oe;->c:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/inmobi/media/Oe;->a:Ljava/util/concurrent/CountDownLatch;

    .line 39
    .line 40
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    .line 42
    sget v2, Lcom/inmobi/media/Oe;->d:I

    .line 43
    .line 44
    sget v3, Lcom/inmobi/media/Oe;->e:I

    .line 45
    .line 46
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    .line 48
    sget-object v7, Lcom/inmobi/media/Oe;->g:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    .line 50
    sget-object v8, Lcom/inmobi/media/Oe;->f:Lcom/inmobi/media/Ne;

    .line 51
    .line 52
    const-wide/16 v4, 0x1e

    .line 53
    .line 54
    move-object v1, p1

    .line 55
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 59
    .line 60
    .line 61
    sput-object p1, Lcom/inmobi/media/Oe;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 62
    .line 63
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Oe;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/Oe;->b:Lcom/inmobi/media/N9;

    invoke-virtual {v0}, Lcom/inmobi/media/N9;->b()Lcom/inmobi/media/P9;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/P9;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/Oe;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Oe;->a(Lcom/inmobi/media/P9;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    const-string v0, "Oe"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/inmobi/media/o4;->e:Lcom/inmobi/media/o4;

    .line 8
    const-string v1, "errorCode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p0, p0, Lcom/inmobi/media/Oe;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/media/Oe;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    new-instance v1, Lub/m1;

    invoke-direct {v1, p0}, Lub/m1;-><init>(Lcom/inmobi/media/Oe;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/P9;)V
    .locals 5

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/Oe;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/Me;

    if-eqz v0, :cond_0

    .line 12
    iget p1, p1, Lcom/inmobi/media/P9;->e:I

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    const/high16 p1, 0x100000

    int-to-double v3, p1

    div-double/2addr v1, v3

    .line 13
    iput-wide v1, v0, Lcom/inmobi/media/Me;->c:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/Oe;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1

    goto :goto_2

    .line 15
    :goto_1
    :try_start_1
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, p1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 16
    const-string p1, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    iget-object p1, p0, Lcom/inmobi/media/Oe;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1

    .line 19
    :goto_2
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void

    .line 20
    :goto_3
    iget-object v0, p0, Lcom/inmobi/media/Oe;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 21
    :cond_2
    throw p1
.end method
