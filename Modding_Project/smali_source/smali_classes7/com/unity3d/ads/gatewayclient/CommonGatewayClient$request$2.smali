.class final Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CommonGatewayClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->request(Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;
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
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.gatewayclient.CommonGatewayClient$request$2"
    f = "CommonGatewayClient.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $operationType:Lcom/unity3d/ads/core/data/model/OperationType;

.field final synthetic $request:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

.field final synthetic $requestPolicy:Lcom/unity3d/ads/gatewayclient/RequestPolicy;

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;",
            "Lcom/unity3d/ads/gatewayclient/RequestPolicy;",
            "Lcom/unity3d/ads/core/data/model/OperationType;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->this$0:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$request:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$requestPolicy:Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$operationType:Lcom/unity3d/ads/core/data/model/OperationType;

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
    new-instance p1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->this$0:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$url:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$request:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$requestPolicy:Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$operationType:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;-><init>(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)V

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
            "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    iget v1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->label:I

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
    iget-object v1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->this$0:Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$url:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$request:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$requestPolicy:Lcom/unity3d/ads/gatewayclient/RequestPolicy;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->$operationType:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 36
    .line 37
    iput v2, p0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$request$2;->label:I

    .line 38
    .line 39
    move-object v2, p1

    .line 40
    move-object v6, p0

    .line 41
    invoke-static/range {v1 .. v6}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;->access$executeWithRetry(Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;Ljava/lang/String;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    return-object p1
.end method
