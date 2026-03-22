.class public final Lai/turbolink/sdk/request/event/EventRegister;
.super Lai/turbolink/sdk/request/ServerRequestURL;
.source "EventRegister.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/Activity;
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
    const-string v0, "activity"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REGISTER:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 12
    .line 13
    invoke-virtual {v0}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->getEvent()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, p1, v0}, Lai/turbolink/sdk/request/ServerRequestURL;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequestURL;->setAsync()V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/request/ServerRequestURL;->setPost(Lorg/json/JSONObject;)V

    .line 29
    .line 30
    .line 31
    iput-object p3, p0, Lai/turbolink/sdk/request/event/EventRegister;->activity:Landroid/app/Activity;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lai/turbolink/sdk/request/ServerRequest;->setCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final openWebview()V
    .locals 4

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getLastNoLoginWebviewUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v2, p0, Lai/turbolink/sdk/request/event/EventRegister;->activity:Landroid/app/Activity;

    .line 16
    .line 17
    const-class v3, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getLastNoLoginWebviewUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 27
    .line 28
    invoke-virtual {v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getWEBVIEW_INTENT_EXTRA_KEY()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lai/turbolink/sdk/TurboLink$Companion;->setLastOpenWebViewUrl(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/high16 v0, 0x4000000

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lai/turbolink/sdk/request/event/EventRegister;->activity:Landroid/app/Activity;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    :cond_0
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
    invoke-direct {p0}, Lai/turbolink/sdk/request/event/EventRegister;->openWebview()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequest;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;->onFailure(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
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
    invoke-direct {p0}, Lai/turbolink/sdk/request/event/EventRegister;->openWebview()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;->INSTANCE:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;

    .line 13
    .line 14
    invoke-virtual {v0}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;->doDistribute()V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 18
    .line 19
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$SessionObj;->getSessionUseVerify()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    sget-object v0, Lai/turbolink/sdk/request/assistance/SDKVerify;->INSTANCE:Lai/turbolink/sdk/request/assistance/SDKVerify;

    .line 27
    .line 28
    invoke-virtual {v0}, Lai/turbolink/sdk/request/assistance/SDKVerify;->launchCheck()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lai/turbolink/sdk/request/ServerRequest;->getCallback()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerResponse;->getEventResponse()Lai/turbolink/sdk/request/response/EventResponse;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v0, p1}, Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;->onSuccess(Lai/turbolink/sdk/request/response/EventResponse;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
