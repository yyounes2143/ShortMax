.class public final Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;
.super Ljava/lang/Object;
.source "ClientDistributeRewards.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;->INSTANCE:Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 14
    .line 15
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getTURBOLINK_BASE_URL_V2()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lai/turbolink/sdk/request/ServerRequestPath;->POST_CLIENT_REWARDS:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 23
    .line 24
    invoke-virtual {v1}, Lai/turbolink/sdk/request/ServerRequestPath;->getPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;->url:Ljava/lang/String;

    .line 36
    .line 37
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

.method public static final synthetic access$check(Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;->check()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final check()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 7
    .line 8
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getPROJECT_ID()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "project_id"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 18
    .line 19
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "user_id"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    sget-object v1, Lai/turbolink/sdk/request/ServerRequestSync;->INSTANCE:Lai/turbolink/sdk/request/ServerRequestSync;

    .line 29
    .line 30
    sget-object v2, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;->url:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v3, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$check$1;

    .line 33
    .line 34
    invoke-direct {v3}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$check$1;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v0, v3}, Lai/turbolink/sdk/request/ServerRequestSync;->doFreedomReqRewards(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final doDistribute()V
    .locals 7

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getClientRewardsListener()Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getUserId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v4, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$doDistribute$1;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {v4, v0}, Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$doDistribute$1;-><init>(Lrs/c;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
