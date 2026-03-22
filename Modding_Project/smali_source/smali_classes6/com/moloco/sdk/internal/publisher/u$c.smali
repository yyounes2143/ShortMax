.class public final Lcom/moloco/sdk/internal/publisher/u$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/u;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;Lcom/moloco/sdk/internal/publisher/t0;)V
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
    c = "com.moloco.sdk.internal.publisher.FullscreenAdImpl$listenToAdDisplayState$1$1"
    f = "FullscreenAdImpl.kt"
    l = {
        0x10b,
        0x10d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;

.field public final synthetic j:Lcom/moloco/sdk/internal/publisher/t0;

.field public final synthetic k:Lcom/moloco/sdk/internal/publisher/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moloco/sdk/internal/publisher/u<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;Lcom/moloco/sdk/internal/publisher/t0;Lcom/moloco/sdk/internal/publisher/u;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;",
            "Lcom/moloco/sdk/internal/publisher/t0;",
            "Lcom/moloco/sdk/internal/publisher/u<",
            "-TT;>;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/u$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$c;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/u$c;->j:Lcom/moloco/sdk/internal/publisher/t0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/u$c;->k:Lcom/moloco/sdk/internal/publisher/u;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/u$c;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/u$c;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/u$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/u$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/u$c;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$c;->j:Lcom/moloco/sdk/internal/publisher/t0;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/u$c;->k:Lcom/moloco/sdk/internal/publisher/u;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/moloco/sdk/internal/publisher/u$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;Lcom/moloco/sdk/internal/publisher/t0;Lcom/moloco/sdk/internal/publisher/u;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/u$c;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/u$c;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$c;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;->m()Lkt/i;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Lcom/moloco/sdk/internal/publisher/u$c$a;

    .line 42
    .line 43
    invoke-direct {v1, v4}, Lcom/moloco/sdk/internal/publisher/u$c$a;-><init>(Lrs/c;)V

    .line 44
    .line 45
    .line 46
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/u$c;->h:I

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/c;->x(Lkt/b;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v0, :cond_3

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$c;->j:Lcom/moloco/sdk/internal/publisher/t0;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$c;->k:Lcom/moloco/sdk/internal/publisher/u;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->s(Lcom/moloco/sdk/internal/publisher/u;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1, v4, v3, v4}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p1, v1}, Lcom/moloco/sdk/internal/publisher/t0;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$c;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;

    .line 73
    .line 74
    invoke-interface {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;->m()Lkt/i;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v1, Lcom/moloco/sdk/internal/publisher/u$c$b;

    .line 79
    .line 80
    invoke-direct {v1, v4}, Lcom/moloco/sdk/internal/publisher/u$c$b;-><init>(Lrs/c;)V

    .line 81
    .line 82
    .line 83
    iput v3, p0, Lcom/moloco/sdk/internal/publisher/u$c;->h:I

    .line 84
    .line 85
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/c;->x(Lkt/b;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v0, :cond_5

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$c;->j:Lcom/moloco/sdk/internal/publisher/t0;

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/u$c;->k:Lcom/moloco/sdk/internal/publisher/u;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/u;->s(Lcom/moloco/sdk/internal/publisher/u;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0, v4, v3, v4}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v0}, Lcom/moloco/sdk/internal/publisher/t0;->onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p1
.end method
