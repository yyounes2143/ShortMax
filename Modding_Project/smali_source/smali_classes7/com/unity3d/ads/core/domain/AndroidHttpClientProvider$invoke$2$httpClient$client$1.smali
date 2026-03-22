.class final Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidHttpClientProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->invoke(ZLrs/c;)Ljava/lang/Object;
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
        "Lcom/unity3d/services/core/network/core/HttpClient;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.domain.AndroidHttpClientProvider$invoke$2$httpClient$client$1"
    f = "AndroidHttpClientProvider.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $usingRefactoredGatewayClient:Z

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;


# direct methods
.method constructor <init>(ZLcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->$usingRefactoredGatewayClient:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

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
    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->$usingRefactoredGatewayClient:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;-><init>(ZLcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Lrs/c;)V

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
            "Lcom/unity3d/services/core/network/core/HttpClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->label:I

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
    iget-boolean p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->$usingRefactoredGatewayClient:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getDispatchers$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 40
    .line 41
    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0, v1}, Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;-><init>(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getContext$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->this$0:Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$getDispatchers$p(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;)Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$client$1;->label:I

    .line 61
    .line 62
    invoke-static {p1, v1, v3, p0}, Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;->access$buildNetworkClient(Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lrs/c;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    :goto_0
    check-cast p1, Lcom/unity3d/services/core/network/core/HttpClient;

    .line 70
    .line 71
    :goto_1
    return-object p1
.end method
