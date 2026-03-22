.class final Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ServerRequestSync.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/request/ServerRequestSync;->doFreedomReq(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;)V
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
    c = "ai.turbolink.sdk.request.ServerRequestSync$doFreedomReq$1"
    f = "ServerRequestSync.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

.field final synthetic $reqBody:Lorg/json/JSONObject;

.field final synthetic $turboLink:Lai/turbolink/sdk/TurboLink;

.field final synthetic $url:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Lai/turbolink/sdk/TurboLink;Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lai/turbolink/sdk/TurboLink;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;",
            "Lrs/c<",
            "-",
            "Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 2
    .line 3
    iput-object p2, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$reqBody:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

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
    new-instance p1, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;

    .line 2
    .line 3
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 4
    .line 5
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$url:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$reqBody:Lorg/json/JSONObject;

    .line 8
    .line 9
    iget-object v4, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;-><init>(Lai/turbolink/sdk/TurboLink;Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

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
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$url:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$reqBody:Lorg/json/JSONObject;

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
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_INVALID_REQUEST:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 38
    .line 39
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const-string v1, "Response is null."

    .line 44
    .line 45
    invoke-interface {p1, v0, v1}, Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;->onFailure(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseStatus()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v1, 0xc8

    .line 56
    .line 57
    if-ne v0, v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseBody()Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

    .line 66
    .line 67
    if-eqz p1, :cond_7

    .line 68
    .line 69
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 70
    .line 71
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const-string v1, "Response body is null."

    .line 76
    .line 77
    invoke-interface {p1, v0, v1}, Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;->onFailure(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkCode;->SUCCESS:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 90
    .line 91
    invoke-virtual {v1}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eq v0, v1, :cond_4

    .line 96
    .line 97
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

    .line 98
    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lai/turbolink/sdk/request/response/EventResponse;->getMsg()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {v0, v1, p1}, Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;->onFailure(ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    new-instance v0, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;

    .line 122
    .line 123
    invoke-direct {v0}, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseBody()Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-nez p1, :cond_5

    .line 131
    .line 132
    new-instance p1, Lorg/json/JSONObject;

    .line 133
    .line 134
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .line 136
    .line 137
    :cond_5
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;->responseDataToProperties(Lorg/json/JSONObject;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    invoke-interface {p1, v0}, Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;->onSuccess(Lai/turbolink/sdk/campaign/properties/CampaignInfoProperties;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;->$callback:Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 153
    .line 154
    invoke-virtual {v1}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v3, "Network request error "

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {v0, v1, p1}, Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;->onFailure(ILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    .line 184
    return-object p1

    .line 185
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 186
    .line 187
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 188
    .line 189
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1
.end method
