.class final Lcom/unity3d/services/UnityAdsSDK$initialize$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnityAdsSDK.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/UnityAdsSDK;->initialize(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.unity3d.services.UnityAdsSDK$initialize$1"
    f = "UnityAdsSDK.kt"
    l = {
        0x57,
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $alternativeFlowReader$delegate:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initScope:Lgt/g0;

.field final synthetic $initializeBoldSDK$delegate:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initializeSDK$delegate:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/unity3d/services/core/domain/task/InitializeSDK;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $source:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lgt/g0;Lms/i;Lms/i;Lms/i;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lgt/g0;",
            "Lms/i<",
            "+",
            "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;",
            ">;",
            "Lms/i<",
            "+",
            "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;",
            ">;",
            "Lms/i<",
            "Lcom/unity3d/services/core/domain/task/InitializeSDK;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/UnityAdsSDK$initialize$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$source:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$initScope:Lgt/g0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$alternativeFlowReader$delegate:Lms/i;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$initializeBoldSDK$delegate:Lms/i;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$initializeSDK$delegate:Lms/i;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lcom/unity3d/services/UnityAdsSDK$initialize$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$source:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$initScope:Lgt/g0;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$alternativeFlowReader$delegate:Lms/i;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$initializeBoldSDK$delegate:Lms/i;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$initializeSDK$delegate:Lms/i;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/unity3d/services/UnityAdsSDK$initialize$1;-><init>(Ljava/lang/String;Lgt/g0;Lms/i;Lms/i;Lms/i;Lrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/UnityAdsSDK$initialize$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    iget v1, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Lkotlin/Result;

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$alternativeFlowReader$delegate:Lms/i;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/unity3d/services/UnityAdsSDK;->access$initialize$lambda$1(Lms/i;)Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;->invoke()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$initializeBoldSDK$delegate:Lms/i;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/unity3d/services/UnityAdsSDK;->access$initialize$lambda$3(Lms/i;)Lcom/unity3d/ads/core/domain/InitializeBoldSDK;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v1, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$source:Ljava/lang/String;

    .line 58
    .line 59
    iput v3, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->label:I

    .line 60
    .line 61
    invoke-interface {p1, v1, p0}, Lcom/unity3d/ads/core/domain/InitializeBoldSDK;->invoke(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_4

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$initializeSDK$delegate:Lms/i;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/unity3d/services/UnityAdsSDK;->access$initialize$lambda$2(Lms/i;)Lcom/unity3d/services/core/domain/task/InitializeSDK;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object v1, Lcom/unity3d/services/core/domain/task/EmptyParams;->INSTANCE:Lcom/unity3d/services/core/domain/task/EmptyParams;

    .line 75
    .line 76
    iput v2, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->label:I

    .line 77
    .line 78
    invoke-virtual {p1, v1, p0}, Lcom/unity3d/services/core/domain/task/MetricTask;->invoke-gIAlu-s(Lcom/unity3d/services/core/domain/task/BaseParams;Lrs/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_4

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$initialize$1;->$initScope:Lgt/g0;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-static {p1, v0, v3, v0}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p1
.end method
