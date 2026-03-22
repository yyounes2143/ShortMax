.class final Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ServerRequestSync.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/request/ServerRequestSync;->doFreedomReqDeepLink(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;)V
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
    c = "ai.turbolink.sdk.request.ServerRequestSync$doFreedomReqDeepLink$1"
    f = "ServerRequestSync.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

.field final synthetic $reqBody:Lorg/json/JSONObject;

.field final synthetic $turboLink:Lai/turbolink/sdk/TurboLink;

.field final synthetic $url:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Lai/turbolink/sdk/TurboLink;Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lai/turbolink/sdk/TurboLink;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;",
            "Lrs/c<",
            "-",
            "Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 2
    .line 3
    iput-object p2, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$reqBody:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;

    .line 2
    .line 3
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 4
    .line 5
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$url:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$reqBody:Lorg/json/JSONObject;

    .line 8
    .line 9
    iget-object v4, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;-><init>(Lai/turbolink/sdk/TurboLink;Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

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
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$url:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$reqBody:Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lai/turbolink/sdk/network/NetworkInterface;->doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;)Lai/turbolink/sdk/request/ServerResponse;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 34
    .line 35
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_INVALID_REQUEST:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 36
    .line 37
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const-string v1, "Response is null."

    .line 42
    .line 43
    invoke-interface {p1, v0, v1}, Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;->onFailure(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseStatus()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v1, 0xc8

    .line 54
    .line 55
    if-ne v0, v1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseBody()Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 64
    .line 65
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 66
    .line 67
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const-string v1, "Response body is null."

    .line 72
    .line 73
    invoke-interface {p1, v0, v1}, Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;->onFailure(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkCode;->SUCCESS:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 86
    .line 87
    invoke-virtual {v1}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eq v0, v1, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 94
    .line 95
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lai/turbolink/sdk/request/response/EventResponse;->getMsg()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {v0, v1, p1}, Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;->onFailure(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    new-instance v0, Lai/turbolink/sdk/deeplink/LinkResponse;

    .line 116
    .line 117
    invoke-direct {v0}, Lai/turbolink/sdk/deeplink/LinkResponse;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseBody()Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-nez p1, :cond_4

    .line 125
    .line 126
    new-instance p1, Lorg/json/JSONObject;

    .line 127
    .line 128
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .line 130
    .line 131
    :cond_4
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/deeplink/LinkResponse;->parserData(Lorg/json/JSONObject;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 135
    .line 136
    invoke-interface {p1, v0}, Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;->onSuccess(Lai/turbolink/sdk/deeplink/LinkResponse;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;->$callback:Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;

    .line 141
    .line 142
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 143
    .line 144
    invoke-virtual {v1}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v3, "Network request error "

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-interface {v0, v1, p1}, Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;->onFailure(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object p1

    .line 175
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 178
    .line 179
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1
.end method
