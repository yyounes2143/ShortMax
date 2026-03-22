.class public final Lai/turbolink/sdk/request/event/EventInstall;
.super Lai/turbolink/sdk/request/ServerRequestSession;
.source "EventInstall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->INSTALL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, p1, v0, p3}, Lai/turbolink/sdk/request/ServerRequestSession;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/request/ServerRequestSession;->setPost(Lorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lai/turbolink/sdk/request/ServerRequest;->setCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 24
    .line 25
    .line 26
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
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequest;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;->onFailure(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public handleSuccess(Lai/turbolink/sdk/request/ServerResponse;)V
    .locals 5
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
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setInstallEventStatus(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 17
    .line 18
    sget-object v4, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->RUN_CALLBACK_FUNC:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 19
    .line 20
    invoke-virtual {v4}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lai/turbolink/sdk/request/response/EventResponse;->getUseVerify()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ne v2, v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lai/turbolink/sdk/request/response/EventResponse;->getLinkHashId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lez v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v1, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->MATCH_LINK:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 60
    .line 61
    invoke-virtual {v1}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v3, v1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70
    .line 71
    .line 72
    :cond_0
    sget-object v0, Lai/turbolink/sdk/request/assistance/SDKVerify;->INSTANCE:Lai/turbolink/sdk/request/assistance/SDKVerify;

    .line 73
    .line 74
    invoke-virtual {v0}, Lai/turbolink/sdk/request/assistance/SDKVerify;->launchCheck()V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequest;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v0, v1}, Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;->onSuccess(Lai/turbolink/sdk/request/response/EventResponse;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    sget-object v0, Lai/turbolink/sdk/campaign/CampaignLoadURL;->INSTANCE:Lai/turbolink/sdk/campaign/CampaignLoadURL;

    .line 91
    .line 92
    const/4 v1, 0x2

    .line 93
    const/4 v2, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-static {v0, p1, v3, v1, v2}, Lai/turbolink/sdk/campaign/CampaignLoadURL;->appLaunch$default(Lai/turbolink/sdk/campaign/CampaignLoadURL;Lai/turbolink/sdk/request/ServerResponse;ZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
