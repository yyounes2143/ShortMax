.class public Lai/turbolink/sdk/request/ServerRequestURL;
.super Lai/turbolink/sdk/request/ServerRequest;
.source "ServerRequestURL.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private event:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAsync_:Z

.field private final requestData:Lai/turbolink/sdk/request/event/EventRequestData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestPath;->GET_EVENT:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Lai/turbolink/sdk/request/ServerRequest;-><init>(Landroid/content/Context;Lai/turbolink/sdk/request/ServerRequestPath;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lai/turbolink/sdk/request/ServerRequestURL;->event:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Lai/turbolink/sdk/request/event/EventRequestData;

    .line 19
    .line 20
    invoke-direct {p1}, Lai/turbolink/sdk/request/event/EventRequestData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getRequestData()Lai/turbolink/sdk/request/event/EventRequestData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleErrors(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handleFailure(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "msg"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handleSuccess(Lai/turbolink/sdk/request/ServerResponse;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/request/ServerResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isAsync()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lai/turbolink/sdk/request/ServerRequestURL;->isAsync_:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAsync()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lai/turbolink/sdk/request/ServerRequestURL;->isAsync_:Z

    .line 3
    .line 4
    return-void
.end method

.method protected setPost(Lorg/json/JSONObject;)V
    .locals 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "custom_data"

    .line 2
    .line 3
    const-string v1, "event_data"

    .line 4
    .line 5
    const-string v2, "post"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-object v4, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 15
    .line 16
    sget-object v5, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 17
    .line 18
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getPROJECT_ID()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v4, v6}, Lai/turbolink/sdk/request/event/EventRequestData;->putProjectID(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 26
    .line 27
    invoke-virtual {v4}, Lai/turbolink/sdk/request/event/EventRequestData;->putRequestID()V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 31
    .line 32
    invoke-virtual {v4}, Lai/turbolink/sdk/request/event/EventRequestData;->putTimestamp()V

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 36
    .line 37
    invoke-virtual {v5}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getKEY_APPSECRET()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Lai/turbolink/sdk/request/event/EventRequestData;->putMsgSignature(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 45
    .line 46
    iget-object v5, p0, Lai/turbolink/sdk/request/ServerRequestURL;->event:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Lai/turbolink/sdk/request/event/EventRequestData;->putEvent(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v4, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .line 55
    .line 56
    sget-object v5, Lai/turbolink/sdk/device/DeviceInfo;->Companion:Lai/turbolink/sdk/device/DeviceInfo$Companion;

    .line 57
    .line 58
    invoke-virtual {v5}, Lai/turbolink/sdk/device/DeviceInfo$Companion;->getInstance()Lai/turbolink/sdk/device/DeviceInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    invoke-virtual {v6, v4}, Lai/turbolink/sdk/device/DeviceInfo;->getRequestUserDataParams(Lorg/json/JSONObject;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_0
    :goto_0
    iget-object v6, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 72
    .line 73
    invoke-virtual {v6, v4}, Lai/turbolink/sdk/request/event/EventRequestData;->putUserData(Lorg/json/JSONObject;)V

    .line 74
    .line 75
    .line 76
    new-instance v4, Lorg/json/JSONObject;

    .line 77
    .line 78
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string v1, "post.getJSONObject(\"event_data\")"

    .line 92
    .line 93
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    const-string v1, "language"

    .line 97
    .line 98
    sget-object v6, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 99
    .line 100
    invoke-virtual {v6}, Lai/turbolink/sdk/TurboLink$Campaign;->getLang()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Lai/turbolink/sdk/request/event/EventRequestData;->putEventData(Lorg/json/JSONObject;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v4, "post.getJSONArray(\"custom_data\")"

    .line 125
    .line 126
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0}, Lai/turbolink/sdk/request/event/EventRequestData;->putCustomData(Lorg/json/JSONArray;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    .line 133
    .line 134
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v1, Lorg/json/JSONObject;

    .line 138
    .line 139
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Lai/turbolink/sdk/device/DeviceInfo$Companion;->getInstance()Lai/turbolink/sdk/device/DeviceInfo;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eqz v4, :cond_3

    .line 147
    .line 148
    invoke-virtual {v4, v1}, Lai/turbolink/sdk/device/DeviceInfo;->getRequestExtDataParams(Lorg/json/JSONObject;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    const-string v4, "android"

    .line 152
    .line 153
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    sget-object v1, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 157
    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide v6

    .line 162
    sub-long/2addr v6, v2

    .line 163
    invoke-virtual {v1, v6, v7}, Lai/turbolink/sdk/TurboLink$SessionObj;->setSessionInitParamTime(J)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lorg/json/JSONObject;

    .line 167
    .line 168
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Lai/turbolink/sdk/device/DeviceInfo$Companion;->getInstance()Lai/turbolink/sdk/device/DeviceInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    if-eqz v2, :cond_4

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Lai/turbolink/sdk/device/DeviceInfo;->getSessionParams(Lorg/json/JSONObject;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    const-string v2, "session"

    .line 181
    .line 182
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestURL;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Lai/turbolink/sdk/request/event/EventRequestData;->putExtData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v2, "Initialize request data exception "

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_2
    invoke-super {p0, p1}, Lai/turbolink/sdk/request/ServerRequest;->setPost(Lorg/json/JSONObject;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method
