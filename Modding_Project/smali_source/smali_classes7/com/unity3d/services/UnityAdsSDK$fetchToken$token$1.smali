.class final Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnityAdsSDK.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/UnityAdsSDK;->fetchToken(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.services.UnityAdsSDK$fetchToken$token$1"
    f = "UnityAdsSDK.kt"
    l = {
        0xab
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $getHeaderBiddingToken$delegate:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tokenNumberProvider$delegate:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/unity3d/ads/core/domain/TokenNumberProvider;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lms/i;Lms/i;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lms/i<",
            "+",
            "Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;",
            ">;",
            "Lms/i<",
            "+",
            "Lcom/unity3d/ads/core/domain/TokenNumberProvider;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->$getHeaderBiddingToken$delegate:Lms/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->$tokenNumberProvider$delegate:Lms/i;

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
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->$getHeaderBiddingToken$delegate:Lms/i;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->$tokenNumberProvider$delegate:Lms/i;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;-><init>(Lms/i;Lms/i;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    iget v1, p0, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->$getHeaderBiddingToken$delegate:Lms/i;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/unity3d/services/UnityAdsSDK;->access$fetchToken$lambda$10(Lms/i;)Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->$tokenNumberProvider$delegate:Lms/i;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/unity3d/services/UnityAdsSDK;->access$fetchToken$lambda$9(Lms/i;)Lcom/unity3d/ads/core/domain/TokenNumberProvider;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Lcom/unity3d/ads/core/domain/TokenNumberProvider;->invoke()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iput v2, p0, Lcom/unity3d/services/UnityAdsSDK$fetchToken$token$1;->label:I

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v7, 0x2

    .line 47
    const/4 v8, 0x0

    .line 48
    move-object v6, p0

    .line 49
    invoke-static/range {v3 .. v8}, Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;ILcom/unity3d/ads/TokenConfiguration;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    :goto_0
    return-object p1
.end method
