.class public final Lai/turbolink/sdk/request/event/EventLogout;
.super Lai/turbolink/sdk/request/ServerRequestURL;
.source "EventLogout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V
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
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGOUT:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, p1, v0}, Lai/turbolink/sdk/request/ServerRequestURL;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequestURL;->setAsync()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/request/ServerRequestURL;->setPost(Lorg/json/JSONObject;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lai/turbolink/sdk/request/ServerRequest;->setCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 27
    .line 28
    .line 29
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
    .locals 2
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
    sget-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 10
    .line 11
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SessionObj;->getSessionUseVerify()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lai/turbolink/sdk/request/assistance/SDKVerify;->INSTANCE:Lai/turbolink/sdk/request/assistance/SDKVerify;

    .line 19
    .line 20
    invoke-virtual {v0}, Lai/turbolink/sdk/request/assistance/SDKVerify;->launchCheck()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequest;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {v0, p1}, Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;->onSuccess(Lai/turbolink/sdk/request/response/EventResponse;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
