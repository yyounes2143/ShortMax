.class final Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CleanUpWhenOpportunityExpires.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires;->invoke(Lcom/unity3d/ads/core/data/model/AdObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.domain.CleanUpWhenOpportunityExpires$invoke$job$1"
    f = "CleanUpWhenOpportunityExpires.kt"
    l = {
        0x21,
        0x22,
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adObject:Lcom/unity3d/ads/core/data/model/AdObject;

.field label:I


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

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
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_4

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getTtl()Lkt/e;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lkotlin/time/b;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    :goto_0
    invoke-virtual {p1}, Lkotlin/time/b;->M()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getTtl()Lkt/e;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->w(Lkt/b;)Lkt/b;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput v4, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->label:I

    .line 71
    .line 72
    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/c;->y(Lkt/b;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v0, :cond_5

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_5
    :goto_1
    check-cast p1, Lkotlin/time/b;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_2
    iput v3, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->label:I

    .line 83
    .line 84
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->c(JLrs/c;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-ne p1, v0, :cond_6

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdObject;->getState()Lkt/e;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p1}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdObjectState;->SHOWING:Lcom/unity3d/ads/core/data/model/AdObjectState;

    .line 102
    .line 103
    if-eq p1, v1, :cond_7

    .line 104
    .line 105
    sget-object p1, Lkotlinx/coroutines/v;->a:Lkotlinx/coroutines/v;

    .line 106
    .line 107
    new-instance v1, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1$1;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->$adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-direct {v1, v3, v4}, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1$1;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;Lrs/c;)V

    .line 113
    .line 114
    .line 115
    iput v2, p0, Lcom/unity3d/ads/core/domain/CleanUpWhenOpportunityExpires$invoke$job$1;->label:I

    .line 116
    .line 117
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-ne p1, v0, :cond_7

    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    return-object p1
.end method
