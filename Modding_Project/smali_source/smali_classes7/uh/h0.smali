.class public final Luh/h0;
.super Ljava/lang/Object;
.source "DownloadScope.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadScope.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadScopeKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,41:1\n47#2,4:42\n47#2,4:46\n*S KotlinDebug\n*F\n+ 1 DownloadScope.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadScopeKt\n*L\n13#1:42,4\n29#1:46,4\n*E\n"
    }
.end annotation


# static fields
.field private static final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Luh/f0;

    .line 2
    .line 3
    invoke-direct {v0}, Luh/f0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Luh/h0;->a:Lms/i;

    .line 11
    .line 12
    new-instance v0, Luh/g0;

    .line 13
    .line 14
    invoke-direct {v0}, Luh/g0;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Luh/h0;->b:Lms/i;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a()Lgt/g0;
    .locals 1

    .line 1
    invoke-static {}, Luh/h0;->d()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lgt/g0;
    .locals 1

    .line 1
    invoke-static {}, Luh/h0;->c()Lgt/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final c()Lgt/g0;
    .locals 3

    .line 1
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2, v1}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lgt/d0;->D8:Lgt/d0$b;

    .line 16
    .line 17
    new-instance v2, Luh/h0$a;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Luh/h0$a;-><init>(Lgt/d0$b;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method private static final d()Lgt/g0;
    .locals 3

    .line 1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2, v1}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lgt/d0;->D8:Lgt/d0$b;

    .line 16
    .line 17
    new-instance v2, Luh/h0$b;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Luh/h0$b;-><init>(Lgt/d0$b;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static final e()Lgt/g0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Luh/h0;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgt/g0;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final f()Lgt/g0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Luh/h0;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgt/g0;

    .line 8
    .line 9
    return-object v0
.end method
