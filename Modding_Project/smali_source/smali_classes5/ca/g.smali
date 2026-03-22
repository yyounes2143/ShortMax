.class public final Lca/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCCPAManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CCPAManager.kt\ncom/hades/aar/admanager/core/CCPAManager\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,61:1\n47#2,4:62\n47#2,4:66\n*S KotlinDebug\n*F\n+ 1 CCPAManager.kt\ncom/hades/aar/admanager/core/CCPAManager\n*L\n15#1:62,4\n41#1:66,4\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lca/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lgt/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/p<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lca/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lca/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lca/g;->a:Lca/g;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1, v0}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lca/g;->b:Lgt/p;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Lgt/p;
    .locals 1

    .line 1
    sget-object v0, Lca/g;->b:Lgt/p;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lda/a;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lda/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "configure"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lca/g;->b:Lgt/p;

    .line 12
    .line 13
    invoke-interface {p1}, Lkotlinx/coroutines/r;->isCompleted()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-static {p2, p1, p2}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v0, Lgt/d0;->D8:Lgt/d0$b;

    .line 35
    .line 36
    new-instance v1, Lc/k;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lc/k;-><init>(Lgt/d0$b;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v3, Lad-manager/b/o;

    .line 50
    .line 51
    invoke-direct {v3, p2}, Lad-manager/b/o;-><init>(Lrs/c;)V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x3

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final c(JLkotlin/jvm/functions/Function0;)V
    .locals 12
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "runAfterCCPA"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lga/a;->a:Lga/a;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "runAfterCCPAConfigured start -> timeOut="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v4, "ms"

    .line 19
    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v4, "CCPAManager"

    .line 28
    .line 29
    invoke-virtual {v0, v4, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-static {v0, v1, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lgt/d0;->D8:Lgt/d0$b;

    .line 51
    .line 52
    new-instance v7, Lc/l;

    .line 53
    .line 54
    invoke-direct {v7, v1}, Lc/l;-><init>(Lgt/d0$b;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v7}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v9, Lad-manager/b/s;

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    move-object v1, v9

    .line 69
    move-wide v2, p1

    .line 70
    move-object v6, p3

    .line 71
    invoke-direct/range {v1 .. v7}, Lad-manager/b/s;-><init>(JJLkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 72
    .line 73
    .line 74
    const/4 v10, 0x3

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    move-object v6, v0

    .line 78
    invoke-static/range {v6 .. v11}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 79
    .line 80
    .line 81
    return-void
.end method
