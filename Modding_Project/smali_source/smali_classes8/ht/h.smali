.class public final Lht/h;
.super Ljava/lang/Object;
.source "HandlerDispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n426#2,11:213\n426#2,11:224\n1#3:235\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerDispatcherKt\n*L\n184#1:213,11\n192#1:224,11\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lht/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile choreographer:Landroid/view/Choreographer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 3
    .line 4
    new-instance v1, Lht/f;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static {v2, v3}, Lht/h;->a(Landroid/os/Looper;Z)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v1, v2, v0, v3, v0}, Lht/f;-><init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move-object v0, v1

    .line 43
    :goto_1
    check-cast v0, Lht/g;

    .line 44
    .line 45
    sput-object v0, Lht/h;->a:Lht/g;

    .line 46
    .line 47
    return-void
.end method

.method public static final a(Landroid/os/Looper;Z)Landroid/os/Handler;
    .locals 4
    .param p0    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v0, 0x1c

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-class v2, Landroid/os/Looper;

    .line 9
    .line 10
    const-class v3, Landroid/os/Handler;

    .line 11
    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    const-string p1, "createAsync"

    .line 15
    .line 16
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v3, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "null cannot be cast to non-null type android.os.Handler"

    .line 33
    .line 34
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p0, Landroid/os/Handler;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    :try_start_0
    const-class p1, Landroid/os/Handler$Callback;

    .line 41
    .line 42
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    filled-new-array {v2, p1, v0}, [Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 49
    .line 50
    .line 51
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroid/os/Handler;

    .line 63
    .line 64
    return-object p0

    .line 65
    :catch_0
    new-instance p1, Landroid/os/Handler;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    return-object p1
.end method

.method public static final b(Landroid/os/Handler;Ljava/lang/String;)Lht/g;
    .locals 1
    .param p0    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lht/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lht/f;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
