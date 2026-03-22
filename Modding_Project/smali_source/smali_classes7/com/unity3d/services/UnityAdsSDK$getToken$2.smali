.class final Lcom/unity3d/services/UnityAdsSDK$getToken$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnityAdsSDK.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/UnityAdsSDK;->getToken(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;)Lkotlinx/coroutines/r;
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
    c = "com.unity3d.services.UnityAdsSDK$getToken$2"
    f = "UnityAdsSDK.kt"
    l = {
        0x93
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $getAsyncHeaderBiddingToken$delegate:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/unity3d/ads/core/domain/GetAsyncHeaderBiddingToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $getTokenScope:Lgt/g0;

.field final synthetic $listener:Lcom/unity3d/ads/IUnityAdsTokenListener;

.field final synthetic $tokenConfiguration:Lcom/unity3d/ads/TokenConfiguration;

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
.method constructor <init>(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;Lgt/g0;Lms/i;Lms/i;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/TokenConfiguration;",
            "Lcom/unity3d/ads/IUnityAdsTokenListener;",
            "Lgt/g0;",
            "Lms/i<",
            "+",
            "Lcom/unity3d/ads/core/domain/GetAsyncHeaderBiddingToken;",
            ">;",
            "Lms/i<",
            "+",
            "Lcom/unity3d/ads/core/domain/TokenNumberProvider;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/services/UnityAdsSDK$getToken$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$tokenConfiguration:Lcom/unity3d/ads/TokenConfiguration;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$listener:Lcom/unity3d/ads/IUnityAdsTokenListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$getTokenScope:Lgt/g0;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$getAsyncHeaderBiddingToken$delegate:Lms/i;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$tokenNumberProvider$delegate:Lms/i;

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
    new-instance p1, Lcom/unity3d/services/UnityAdsSDK$getToken$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$tokenConfiguration:Lcom/unity3d/ads/TokenConfiguration;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$listener:Lcom/unity3d/ads/IUnityAdsTokenListener;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$getTokenScope:Lgt/g0;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$getAsyncHeaderBiddingToken$delegate:Lms/i;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$tokenNumberProvider$delegate:Lms/i;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/unity3d/services/UnityAdsSDK$getToken$2;-><init>(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;Lgt/g0;Lms/i;Lms/i;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/UnityAdsSDK$getToken$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    iget v1, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->label:I

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
    iget-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$getAsyncHeaderBiddingToken$delegate:Lms/i;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/unity3d/services/UnityAdsSDK;->access$getToken$lambda$8(Lms/i;)Lcom/unity3d/ads/core/domain/GetAsyncHeaderBiddingToken;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$tokenNumberProvider$delegate:Lms/i;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/unity3d/services/UnityAdsSDK;->access$getToken$lambda$7(Lms/i;)Lcom/unity3d/ads/core/domain/TokenNumberProvider;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Lcom/unity3d/ads/core/domain/TokenNumberProvider;->invoke()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v3, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$tokenConfiguration:Lcom/unity3d/ads/TokenConfiguration;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$listener:Lcom/unity3d/ads/IUnityAdsTokenListener;

    .line 46
    .line 47
    iput v2, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->label:I

    .line 48
    .line 49
    invoke-interface {p1, v1, v3, v4, p0}, Lcom/unity3d/ads/core/domain/GetAsyncHeaderBiddingToken;->invoke(ILcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;Lrs/c;)Ljava/lang/Object;

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
    iget-object p1, p0, Lcom/unity3d/services/UnityAdsSDK$getToken$2;->$getTokenScope:Lgt/g0;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {p1, v0, v2, v0}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p1
.end method
