.class public abstract Lai/turbolink/sdk/request/ServerRequestSession;
.super Lai/turbolink/sdk/request/ServerRequest;
.source "ServerRequestSession.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final event:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final initiatedByClient:Z

.field private requestData:Lai/turbolink/sdk/request/event/EventRequestData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
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
    iput-object p2, p0, Lai/turbolink/sdk/request/ServerRequestSession;->event:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->context:Landroid/content/Context;

    .line 19
    .line 20
    xor-int/lit8 p1, p3, 0x1

    .line 21
    .line 22
    iput-boolean p1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->initiatedByClient:Z

    .line 23
    .line 24
    new-instance p1, Lai/turbolink/sdk/request/event/EventRequestData;

    .line 25
    .line 26
    invoke-direct {p1}, Lai/turbolink/sdk/request/event/EventRequestData;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSession;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInitiatedByClient()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lai/turbolink/sdk/request/ServerRequestSession;->initiatedByClient:Z

    .line 2
    .line 3
    return v0
.end method

.method public getRequestData()Lai/turbolink/sdk/request/event/EventRequestData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

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

.method protected setPost(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "post"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 7
    .line 8
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getPROJECT_ID()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/request/event/EventRequestData;->putProjectID(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 18
    .line 19
    invoke-virtual {p1}, Lai/turbolink/sdk/request/event/EventRequestData;->putRequestID()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 23
    .line 24
    invoke-virtual {p1}, Lai/turbolink/sdk/request/event/EventRequestData;->putTimestamp()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 28
    .line 29
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getKEY_APPSECRET()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/request/event/EventRequestData;->putMsgSignature(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 37
    .line 38
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSession;->event:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/request/event/EventRequestData;->putEvent(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lai/turbolink/sdk/device/DeviceInfo;->Companion:Lai/turbolink/sdk/device/DeviceInfo$Companion;

    .line 49
    .line 50
    invoke-virtual {v0}, Lai/turbolink/sdk/device/DeviceInfo$Companion;->getInstance()Lai/turbolink/sdk/device/DeviceInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lai/turbolink/sdk/device/DeviceInfo;->getRequestUserDataParams(Lorg/json/JSONObject;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lai/turbolink/sdk/request/event/EventRequestData;->putUserData(Lorg/json/JSONObject;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "click_link_id"

    .line 73
    .line 74
    const-string v2, ""

    .line 75
    .line 76
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    const-string v1, "language"

    .line 80
    .line 81
    sget-object v2, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 82
    .line 83
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$Campaign;->getLang()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lai/turbolink/sdk/request/event/EventRequestData;->putEventData(Lorg/json/JSONObject;)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lorg/json/JSONObject;

    .line 101
    .line 102
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lai/turbolink/sdk/device/DeviceInfo$Companion;->getInstance()Lai/turbolink/sdk/device/DeviceInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_1

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Lai/turbolink/sdk/device/DeviceInfo;->getRequestExtDataParams(Lorg/json/JSONObject;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    const-string v2, "android"

    .line 115
    .line 116
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    new-instance v1, Lorg/json/JSONObject;

    .line 120
    .line 121
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lai/turbolink/sdk/device/DeviceInfo$Companion;->getInstance()Lai/turbolink/sdk/device/DeviceInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/device/DeviceInfo;->getSessionParams(Lorg/json/JSONObject;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    const-string v0, "session"

    .line 134
    .line 135
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/request/event/EventRequestData;->putExtData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v1, "Initialize request data raise exception on session "

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_2
    iget-object p1, p0, Lai/turbolink/sdk/request/ServerRequestSession;->requestData:Lai/turbolink/sdk/request/event/EventRequestData;

    .line 169
    .line 170
    invoke-super {p0, p1}, Lai/turbolink/sdk/request/ServerRequest;->setPost(Lorg/json/JSONObject;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method
