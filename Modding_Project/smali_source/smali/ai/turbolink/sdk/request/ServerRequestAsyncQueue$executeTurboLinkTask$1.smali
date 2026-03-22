.class final Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ServerRequestAsyncQueue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->executeTurboLinkTask(Lai/turbolink/sdk/request/ServerRequest;I)V
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
    c = "ai.turbolink.sdk.request.ServerRequestAsyncQueue$executeTurboLinkTask$1"
    f = "ServerRequestAsyncQueue.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $req:Lai/turbolink/sdk/request/ServerRequest;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;


# direct methods
.method constructor <init>(Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerRequestAsyncQueue;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lai/turbolink/sdk/request/ServerRequest;",
            "Lai/turbolink/sdk/request/ServerRequestAsyncQueue;",
            "Lrs/c<",
            "-",
            "Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->$req:Lai/turbolink/sdk/request/ServerRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->this$0:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

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

.method public static synthetic i(Lgt/g0;Lai/turbolink/sdk/request/ServerRequestAsyncQueue;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->invokeSuspend$lambda-1(Lgt/g0;Lai/turbolink/sdk/request/ServerRequestAsyncQueue;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda-1(Lgt/g0;Lai/turbolink/sdk/request/ServerRequestAsyncQueue;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->processNextQueueTask()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;

    .line 2
    .line 3
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->$req:Lai/turbolink/sdk/request/ServerRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->this$0:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;-><init>(Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerRequestAsyncQueue;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lgt/g0;

    .line 14
    .line 15
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 16
    .line 17
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getNetworkInterface()Lai/turbolink/sdk/network/NetworkInterface;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->$req:Lai/turbolink/sdk/request/ServerRequest;

    .line 30
    .line 31
    invoke-virtual {v1}, Lai/turbolink/sdk/request/ServerRequest;->getLongUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->$req:Lai/turbolink/sdk/request/ServerRequest;

    .line 36
    .line 37
    invoke-virtual {v2}, Lai/turbolink/sdk/request/ServerRequest;->getRequestData()Lai/turbolink/sdk/request/event/EventRequestData;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lai/turbolink/sdk/network/NetworkInterface;->doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;)Lai/turbolink/sdk/request/ServerResponse;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->$req:Lai/turbolink/sdk/request/ServerRequest;

    .line 50
    .line 51
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_INVALID_REQUEST:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 52
    .line 53
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const-string v1, "Response is null."

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Lai/turbolink/sdk/request/ServerRequest;->handleFailure(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_1
    invoke-virtual {v0}, Lai/turbolink/sdk/request/ServerResponse;->getResponseStatus()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/16 v2, 0xc8

    .line 70
    .line 71
    if-ne v1, v2, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->this$0:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 74
    .line 75
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->$req:Lai/turbolink/sdk/request/ServerRequest;

    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->access$onExecuteSuccess(Lai/turbolink/sdk/request/ServerRequestAsyncQueue;Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerResponse;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->this$0:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 82
    .line 83
    iget-object v3, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->$req:Lai/turbolink/sdk/request/ServerRequest;

    .line 84
    .line 85
    invoke-static {v2, v3, v0, v1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->access$onExecuteFailed(Lai/turbolink/sdk/request/ServerRequestAsyncQueue;Lai/turbolink/sdk/request/ServerRequest;Lai/turbolink/sdk/request/ServerResponse;I)V

    .line 86
    .line 87
    .line 88
    :goto_1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->this$0:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->set_currentRequestNetworkCount(I)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Landroid/os/Handler;

    .line 95
    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$executeTurboLinkTask$1;->this$0:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 104
    .line 105
    new-instance v2, Lai/turbolink/sdk/request/a;

    .line 106
    .line 107
    invoke-direct {v2, p1, v1}, Lai/turbolink/sdk/request/a;-><init>(Lgt/g0;Lai/turbolink/sdk/request/ServerRequestAsyncQueue;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 119
    .line 120
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method
