.class public final Lcom/inmobi/media/O2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashMap;

.field public static final b:Lms/i;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final f:Lms/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    sget-object v0, Lcom/inmobi/media/L2;->a:Lcom/inmobi/media/L2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/inmobi/media/O2;->b:Lms/i;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/inmobi/media/O2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/inmobi/media/O2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/inmobi/media/O2;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    sget-object v0, Lcom/inmobi/media/K2;->a:Lcom/inmobi/media/K2;

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/inmobi/media/O2;->f:Lms/i;

    .line 46
    .line 47
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x2

    .line 52
    filled-new-array {v2, v1}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sget-object v2, Lcom/inmobi/media/H2;->a:Lcom/inmobi/media/H2;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/H7;->a([ILkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lub/h1;

    .line 62
    .line 63
    invoke-direct {v0}, Lub/h1;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
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

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/media/N2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object p0

    return-object p0
.end method

.method public static final a()V
    .locals 0

    .line 2
    invoke-static {}, Lcom/inmobi/media/M2;->a()V

    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ConfigBootstrapHandler"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/O2;->f:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/O2;->b:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "O2"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final g()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/inmobi/media/M2;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final h()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/media/O2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "access$getTAG$cp(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/inmobi/media/O2;->d()Lms/i;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/inmobi/media/I2;

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
