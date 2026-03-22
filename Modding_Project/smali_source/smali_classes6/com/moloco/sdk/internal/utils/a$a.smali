.class public final Lcom/moloco/sdk/internal/utils/a$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/utils/a;->a(Lqt/a;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.utils.CoroutineUtilsKt$withReentrantLock$2"
    f = "CoroutineUtils.kt"
    l = {
        0x36,
        0x25
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineUtils.kt\ncom/moloco/sdk/internal/utils/CoroutineUtilsKt$withReentrantLock$2\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,48:1\n116#2,11:49\n*S KotlinDebug\n*F\n+ 1 CoroutineUtils.kt\ncom/moloco/sdk/internal/utils/CoroutineUtilsKt$withReentrantLock$2\n*L\n37#1:49,11\n*E\n"
    }
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lqt/a;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lrs/c<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqt/a;Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqt/a;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/utils/a$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/utils/a$a;->k:Lqt/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/utils/a$a;->l:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/utils/a$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/utils/a$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/utils/a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/moloco/sdk/internal/utils/a$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/utils/a$a;->k:Lqt/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/utils/a$a;->l:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/internal/utils/a$a;-><init>(Lqt/a;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/utils/a$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/utils/a$a;->j:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/moloco/sdk/internal/utils/a$a;->h:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lqt/a;

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/moloco/sdk/internal/utils/a$a;->i:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/moloco/sdk/internal/utils/a$a;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v3, Lqt/a;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object p1, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/moloco/sdk/internal/utils/a$a;->k:Lqt/a;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/moloco/sdk/internal/utils/a$a;->l:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/moloco/sdk/internal/utils/a$a;->h:Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/moloco/sdk/internal/utils/a$a;->i:Ljava/lang/Object;

    .line 57
    .line 58
    iput v3, p0, Lcom/moloco/sdk/internal/utils/a$a;->j:I

    .line 59
    .line 60
    invoke-interface {p1, v4, p0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-ne v3, v0, :cond_3

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_3
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/moloco/sdk/internal/utils/a$a;->h:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object v4, p0, Lcom/moloco/sdk/internal/utils/a$a;->i:Ljava/lang/Object;

    .line 70
    .line 71
    iput v2, p0, Lcom/moloco/sdk/internal/utils/a$a;->j:I

    .line 72
    .line 73
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    if-ne v1, v0, :cond_4

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_4
    move-object v0, p1

    .line 81
    move-object p1, v1

    .line 82
    :goto_1
    invoke-interface {v0, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object v5, v0

    .line 88
    move-object v0, p1

    .line 89
    move-object p1, v5

    .line 90
    :goto_2
    invoke-interface {v0, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method
