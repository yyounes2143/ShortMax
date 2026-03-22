.class final Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ServerRequestSync.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/request/ServerRequestSync;->doReq(Lai/turbolink/sdk/request/ServerRequestURL;)V
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
    c = "ai.turbolink.sdk.request.ServerRequestSync$doReq$1"
    f = "ServerRequestSync.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $req:Lai/turbolink/sdk/request/ServerRequestURL;

.field final synthetic $turboLink:Lai/turbolink/sdk/TurboLink;

.field label:I


# direct methods
.method constructor <init>(Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/request/ServerRequestURL;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lai/turbolink/sdk/TurboLink;",
            "Lai/turbolink/sdk/request/ServerRequestURL;",
            "Lrs/c<",
            "-",
            "Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 2
    .line 3
    iput-object p2, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$req:Lai/turbolink/sdk/request/ServerRequestURL;

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
    new-instance p1, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;

    .line 2
    .line 3
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 4
    .line 5
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$req:Lai/turbolink/sdk/request/ServerRequestURL;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;-><init>(Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/request/ServerRequestURL;Lrs/c;)V

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getNetworkInterface()Lai/turbolink/sdk/network/NetworkInterface;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$req:Lai/turbolink/sdk/request/ServerRequestURL;

    .line 22
    .line 23
    invoke-virtual {v0}, Lai/turbolink/sdk/request/ServerRequest;->getLongUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$req:Lai/turbolink/sdk/request/ServerRequestURL;

    .line 28
    .line 29
    invoke-virtual {v1}, Lai/turbolink/sdk/request/ServerRequestURL;->getRequestData()Lai/turbolink/sdk/request/event/EventRequestData;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v0, v1}, Lai/turbolink/sdk/network/NetworkInterface;->doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;)Lai/turbolink/sdk/request/ServerResponse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$req:Lai/turbolink/sdk/request/ServerRequestURL;

    .line 42
    .line 43
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_INVALID_REQUEST:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 44
    .line 45
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-string v1, "Response is null."

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lai/turbolink/sdk/request/ServerRequestURL;->handleFailure(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_1
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseStatus()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/16 v1, 0xc8

    .line 62
    .line 63
    if-ne v0, v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseBody()Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$req:Lai/turbolink/sdk/request/ServerRequestURL;

    .line 72
    .line 73
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 74
    .line 75
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const-string v1, "Response body is null."

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Lai/turbolink/sdk/request/ServerRequestURL;->handleFailure(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkCode;->SUCCESS:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 94
    .line 95
    invoke-virtual {v1}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eq v0, v1, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$req:Lai/turbolink/sdk/request/ServerRequestURL;

    .line 102
    .line 103
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lai/turbolink/sdk/request/response/EventResponse;->getMsg()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v0, v1, p1}, Lai/turbolink/sdk/request/ServerRequestURL;->handleFailure(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$req:Lai/turbolink/sdk/request/ServerRequestURL;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/request/ServerRequestURL;->handleSuccess(Lai/turbolink/sdk/request/ServerResponse;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;->$req:Lai/turbolink/sdk/request/ServerRequestURL;

    .line 130
    .line 131
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 132
    .line 133
    invoke-virtual {v1}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v3, "Network request error "

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v0, v1, p1}, Lai/turbolink/sdk/request/ServerRequestURL;->handleFailure(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p1

    .line 164
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 167
    .line 168
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1
.end method
