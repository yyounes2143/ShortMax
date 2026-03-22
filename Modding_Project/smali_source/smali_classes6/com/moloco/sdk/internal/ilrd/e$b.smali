.class public final Lcom/moloco/sdk/internal/ilrd/e$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/ilrd/e;->h()V
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
    c = "com.moloco.sdk.internal.ilrd.IlrdService$subscribe$1"
    f = "IlrdService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIlrdService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdService.kt\ncom/moloco/sdk/internal/ilrd/IlrdService$subscribe$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,126:1\n1863#2,2:127\n*S KotlinDebug\n*F\n+ 1 IlrdService.kt\ncom/moloco/sdk/internal/ilrd/IlrdService$subscribe$1\n*L\n62#1:127,2\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/ilrd/e;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ilrd/e;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/ilrd/e;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/ilrd/e$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/e$b;->i:Lcom/moloco/sdk/internal/ilrd/e;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/e$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/ilrd/e$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/ilrd/e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/moloco/sdk/internal/ilrd/e$b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/e$b;->i:Lcom/moloco/sdk/internal/ilrd/e;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/moloco/sdk/internal/ilrd/e$b;-><init>(Lcom/moloco/sdk/internal/ilrd/e;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/e$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/internal/ilrd/e$b;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/moloco/sdk/internal/ilrd/e$b;->i:Lcom/moloco/sdk/internal/ilrd/e;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/moloco/sdk/internal/ilrd/e;->g(Lcom/moloco/sdk/internal/ilrd/e;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/e$b;->i:Lcom/moloco/sdk/internal/ilrd/e;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/moloco/sdk/internal/ilrd/h;

    .line 34
    .line 35
    invoke-interface {v1}, Lcom/moloco/sdk/internal/ilrd/h;->getState()Lkt/i;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/moloco/sdk/internal/ilrd/k;

    .line 44
    .line 45
    instance-of v3, v2, Lcom/moloco/sdk/internal/ilrd/k$a;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "Failed to subscribe to "

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Lcom/moloco/sdk/internal/ilrd/h;->a()Lcom/moloco/sdk/internal/ilrd/model/a;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " ILRD: "

    .line 69
    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    check-cast v2, Lcom/moloco/sdk/internal/ilrd/k$a;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/ilrd/k$a;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    const/16 v9, 0xc

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const-string v5, "IlrdService"

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    instance-of v3, v2, Lcom/moloco/sdk/internal/ilrd/k$c;

    .line 98
    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    invoke-static {v0, v1}, Lcom/moloco/sdk/internal/ilrd/e;->e(Lcom/moloco/sdk/internal/ilrd/e;Lcom/moloco/sdk/internal/ilrd/h;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    instance-of v1, v2, Lcom/moloco/sdk/internal/ilrd/k$b;

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 111
    .line 112
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 122
    .line 123
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method
