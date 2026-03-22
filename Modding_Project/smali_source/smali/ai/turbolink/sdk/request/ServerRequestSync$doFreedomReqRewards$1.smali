.class final Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ServerRequestSync.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/request/ServerRequestSync;->doFreedomReqRewards(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;)V
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
    c = "ai.turbolink.sdk.request.ServerRequestSync$doFreedomReqRewards$1"
    f = "ServerRequestSync.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;

.field final synthetic $reqBody:Lorg/json/JSONObject;

.field final synthetic $turboLink:Lai/turbolink/sdk/TurboLink;

.field final synthetic $url:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Lai/turbolink/sdk/TurboLink;Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lai/turbolink/sdk/TurboLink;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;",
            "Lrs/c<",
            "-",
            "Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 2
    .line 3
    iput-object p2, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$reqBody:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$callback:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;

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
    new-instance p1, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;

    .line 2
    .line 3
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 4
    .line 5
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$url:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$reqBody:Lorg/json/JSONObject;

    .line 8
    .line 9
    iget-object v4, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$callback:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;-><init>(Lai/turbolink/sdk/TurboLink;Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->label:I

    .line 7
    .line 8
    if-nez v1, :cond_9

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$turboLink:Lai/turbolink/sdk/TurboLink;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink;->getNetworkInterface()Lai/turbolink/sdk/network/NetworkInterface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$url:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$reqBody:Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-virtual {p1, v1, v2}, Lai/turbolink/sdk/network/NetworkInterface;->doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;)Lai/turbolink/sdk/request/ServerResponse;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$callback:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_INVALID_REQUEST:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 40
    .line 41
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const-string v1, "Response is null."

    .line 46
    .line 47
    invoke-interface {p1, v0, v1}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;->onFailure(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_2
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseStatus()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/16 v2, 0xc8

    .line 58
    .line 59
    if-ne v1, v2, :cond_7

    .line 60
    .line 61
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseBody()Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$callback:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;

    .line 68
    .line 69
    if-eqz p1, :cond_8

    .line 70
    .line 71
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 72
    .line 73
    invoke-virtual {v0}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const-string v1, "Response body is null."

    .line 78
    .line 79
    invoke-interface {p1, v0, v1}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;->onFailure(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_3
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    sget-object v2, Lai/turbolink/sdk/utils/TurboLinkCode;->SUCCESS:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 93
    .line 94
    invoke-virtual {v2}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eq v1, v2, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$callback:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lai/turbolink/sdk/request/response/EventResponse;->getCode()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lai/turbolink/sdk/request/response/EventResponse;->getMsg()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-interface {v0, v1, p1}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;->onFailure(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_4
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getResponseBody()Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-nez p1, :cond_5

    .line 130
    .line 131
    new-instance p1, Lorg/json/JSONObject;

    .line 132
    .line 133
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .line 135
    .line 136
    :cond_5
    new-instance v1, Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;

    .line 137
    .line 138
    invoke-direct {v1}, Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;-><init>()V

    .line 139
    .line 140
    .line 141
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_6

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-string v0, "responseDataObj.getJSONObject(\"data\")"

    .line 152
    .line 153
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p1}, Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;->responseDataToProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :catch_0
    move-exception p1

    .line 161
    goto :goto_1

    .line 162
    :catch_1
    move-exception p1

    .line 163
    goto :goto_2

    .line 164
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v2, "parser request returns occurred exception."

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v2, "The parser request returns occurred exception."

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_6
    :goto_3
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$callback:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;

    .line 214
    .line 215
    invoke-interface {p1, v1}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;->onSuccess(Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;)V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_7
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;->$callback:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;

    .line 220
    .line 221
    if-eqz v0, :cond_8

    .line 222
    .line 223
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkCode;->ERROR_GATEWAY:Lai/turbolink/sdk/utils/TurboLinkCode;

    .line 224
    .line 225
    invoke-virtual {v1}, Lai/turbolink/sdk/utils/TurboLinkCode;->getCode()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v3, "Network request error "

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getMessage()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-interface {v0, v1, p1}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;->onFailure(ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 254
    .line 255
    return-object p1

    .line 256
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 257
    .line 258
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 259
    .line 260
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p1
.end method
