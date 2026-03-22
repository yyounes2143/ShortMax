.class public final Lai/turbolink/sdk/request/event/EventCustom;
.super Lai/turbolink/sdk/request/ServerRequestURL;
.source "EventCustom.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/request/event/TurboLinkCustomProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "customDataBuilder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "context"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3, p1}, Lai/turbolink/sdk/request/ServerRequestURL;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    const-string p3, "custom_data"

    .line 25
    .line 26
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p2

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "Occurred exception when add new JSONArray to the custom_data."

    .line 37
    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/request/ServerRequestURL;->setPost(Lorg/json/JSONObject;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p4}, Lai/turbolink/sdk/request/ServerRequest;->setCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 62
    .line 63
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getEventListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-eqz p2, :cond_0

    .line 68
    .line 69
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getToggleClickAppEventListenerCallback()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_0

    .line 74
    .line 75
    const/4 p2, 0x1

    .line 76
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/TurboLink$Companion;->setWebviewGoReloadUrl(Z)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide p2

    .line 83
    const/16 p4, 0x3e8

    .line 84
    .line 85
    int-to-long v0, p4

    .line 86
    div-long/2addr p2, v0

    .line 87
    invoke-virtual {p1, p2, p3}, Lai/turbolink/sdk/TurboLink$Companion;->setWebviewGoReloadUrlLastCustomEventTime(J)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 91
    .line 92
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getLastOpenWebviewActivity()Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    new-instance p1, Landroid/os/Handler;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    .line 106
    .line 107
    new-instance p2, Lh/a;

    .line 108
    .line 109
    invoke-direct {p2}, Lh/a;-><init>()V

    .line 110
    .line 111
    .line 112
    const-wide/16 p3, 0x7d0

    .line 113
    .line 114
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    .line 116
    .line 117
    :cond_0
    return-void
.end method

.method private static final _init_$lambda-0()V
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getWebviewGoReloadUrl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lai/turbolink/sdk/TurboLink$Campaign;->reLoadUrl()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lai/turbolink/sdk/request/event/EventCustom;->_init_$lambda-0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
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
    invoke-super {p0, p1}, Lai/turbolink/sdk/request/ServerRequestURL;->handleErrors(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public handleFailure(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lai/turbolink/sdk/request/ServerRequestURL;->handleFailure(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequest;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;->onFailure(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
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
    invoke-super {p0, p1}, Lai/turbolink/sdk/request/ServerRequestURL;->handleSuccess(Lai/turbolink/sdk/request/ServerResponse;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;->INSTANCE:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;

    .line 10
    .line 11
    invoke-virtual {v0}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;->doDistribute()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequest;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;->onSuccess(Lai/turbolink/sdk/request/response/EventResponse;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
