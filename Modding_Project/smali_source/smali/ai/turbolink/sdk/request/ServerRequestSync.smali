.class public final Lai/turbolink/sdk/request/ServerRequestSync;
.super Ljava/lang/Object;
.source "ServerRequestSync.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/request/ServerRequestSync;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/ServerRequestSync;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/request/ServerRequestSync;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/request/ServerRequestSync;->INSTANCE:Lai/turbolink/sdk/request/ServerRequestSync;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final doFreedomReq(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reqBody"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string p1, "TurboLink is not setup properly. make sure to call autoInstance."

    .line 20
    .line 21
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v7, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v1, v7

    .line 37
    move-object v3, p1

    .line 38
    move-object v4, p2

    .line 39
    move-object v5, p3

    .line 40
    invoke-direct/range {v1 .. v6}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReq$1;-><init>(Lai/turbolink/sdk/TurboLink;Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;Lrs/c;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x3

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    move-object v3, v0

    .line 48
    move-object v6, v7

    .line 49
    move v7, p1

    .line 50
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final doFreedomReqDeepLink(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reqBody"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string p1, "TurboLink is not setup properly. make sure to call autoInstance."

    .line 25
    .line 26
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v7, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    move-object v1, v7

    .line 42
    move-object v3, p1

    .line 43
    move-object v4, p2

    .line 44
    move-object v5, p3

    .line 45
    invoke-direct/range {v1 .. v6}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqDeepLink$1;-><init>(Lai/turbolink/sdk/TurboLink;Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/deeplink/LinkProperties$LinkPropertiesCallback;Lrs/c;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x3

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    move-object v3, v0

    .line 53
    move-object v6, v7

    .line 54
    move v7, p1

    .line 55
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final doFreedomReqRewards(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reqBody"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string p1, "TurboLink is not setup properly. make sure to call autoInstance."

    .line 25
    .line 26
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v7, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    move-object v1, v7

    .line 42
    move-object v3, p1

    .line 43
    move-object v4, p2

    .line 44
    move-object v5, p3

    .line 45
    invoke-direct/range {v1 .. v6}, Lai/turbolink/sdk/request/ServerRequestSync$doFreedomReqRewards$1;-><init>(Lai/turbolink/sdk/TurboLink;Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;Lrs/c;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x3

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    move-object v3, v0

    .line 53
    move-object v6, v7

    .line 54
    move v7, p1

    .line 55
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final doReq(Lai/turbolink/sdk/request/ServerRequestURL;)V
    .locals 8
    .param p1    # Lai/turbolink/sdk/request/ServerRequestURL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p1, "TurboLink is not setup properly. make sure to call autoInstance."

    .line 15
    .line 16
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->v(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v5, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v5, v0, p1, v1}, Lai/turbolink/sdk/request/ServerRequestSync$doReq$1;-><init>(Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/request/ServerRequestURL;Lrs/c;)V

    .line 32
    .line 33
    .line 34
    const/4 v6, 0x3

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 39
    .line 40
    .line 41
    return-void
.end method
