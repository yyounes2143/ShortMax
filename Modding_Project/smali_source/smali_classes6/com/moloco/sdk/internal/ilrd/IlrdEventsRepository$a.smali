.class public final Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;-><init>(Lgt/g0;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;JIJJLcom/moloco/sdk/internal/services/j;Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/services/p;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/services/h0;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;Lcom/moloco/sdk/internal/ilrd/d;)V
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
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$1"
    f = "IlrdEventsRepository.kt"
    l = {
        0x1b4,
        0x71,
        0x73
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIlrdEventsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,430:1\n116#2,11:431\n*S KotlinDebug\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$1\n*L\n112#1:431,11\n*E\n"
    }
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

.field public final synthetic l:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Landroidx/lifecycle/Lifecycle;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->l:Landroidx/lifecycle/Lifecycle;

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
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->l:Landroidx/lifecycle/Lifecycle;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Landroidx/lifecycle/Lifecycle;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->j:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->h:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lqt/a;

    .line 34
    .line 35
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_3

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->i:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->h:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lqt/a;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object p1, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->h(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;)Lqt/a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->h:Ljava/lang/Object;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->i:Ljava/lang/Object;

    .line 68
    .line 69
    iput v4, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->j:I

    .line 70
    .line 71
    invoke-interface {p1, v5, p0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-ne v4, v0, :cond_4

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->h:Ljava/lang/Object;

    .line 79
    .line 80
    iput-object v5, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->i:Ljava/lang/Object;

    .line 81
    .line 82
    iput v3, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->j:I

    .line 83
    .line 84
    invoke-static {v1, p0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->d(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    if-ne v1, v0, :cond_5

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_5
    move-object v1, p1

    .line 92
    :goto_1
    :try_start_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    invoke-interface {v1, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a$a;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->l:Landroidx/lifecycle/Lifecycle;

    .line 108
    .line 109
    iget-object v4, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 110
    .line 111
    invoke-direct {v1, v3, v4, v5}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a$a;-><init>(Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)V

    .line 112
    .line 113
    .line 114
    iput-object v5, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->h:Ljava/lang/Object;

    .line 115
    .line 116
    iput v2, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$a;->j:I

    .line 117
    .line 118
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v0, :cond_6

    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p1

    .line 128
    :goto_3
    move-object v0, p1

    .line 129
    move-object p1, v1

    .line 130
    goto :goto_4

    .line 131
    :catchall_1
    move-exception v0

    .line 132
    :goto_4
    invoke-interface {p1, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    throw v0
.end method
