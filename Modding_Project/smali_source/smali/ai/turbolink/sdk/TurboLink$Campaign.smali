.class public final Lai/turbolink/sdk/TurboLink$Campaign;
.super Ljava/lang/Object;
.source "TurboLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/TurboLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Campaign"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static _canLaunchCampaignActivityStack:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static campaignLang:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static customParamsProperties:Lai/turbolink/sdk/campaign/CustomParamsProperties;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static fullScreenMode:Z

.field private static goneBack:Z

.field private static initTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static lastNotLaunchCampaignUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static lastOpenWebviewActivity:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static launchCampaignDelayShowTime:I

.field private static loadingPic:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static nightMode:Z

.field private static screenOrientationAll:Z

.field private static titleSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLink$Campaign;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/TurboLink$Campaign;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->initTitle:Ljava/lang/String;

    .line 11
    .line 12
    const/high16 v1, 0x41900000    # 18.0f

    .line 13
    .line 14
    sput v1, Lai/turbolink/sdk/TurboLink$Campaign;->titleSize:F

    .line 15
    .line 16
    new-instance v1, Lai/turbolink/sdk/campaign/CustomParamsProperties;

    .line 17
    .line 18
    invoke-direct {v1}, Lai/turbolink/sdk/campaign/CustomParamsProperties;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lai/turbolink/sdk/TurboLink$Campaign;->customParamsProperties:Lai/turbolink/sdk/campaign/CustomParamsProperties;

    .line 22
    .line 23
    sput-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->campaignLang:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    sput v0, Lai/turbolink/sdk/TurboLink$Campaign;->launchCampaignDelayShowTime:I

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->_canLaunchCampaignActivityStack:Ljava/util/HashSet;

    .line 34
    .line 35
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

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink$Campaign;->reLoadUrl$lambda-0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final closeLoadingOverlay()Z
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->lastOpenWebviewActivity:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->closeLoadingOverlay()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public static final getCampaignInfo(Ljava/lang/String;Ljava/lang/String;)Lai/turbolink/sdk/request/campaign/CampaignInfo;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "campaignId"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lai/turbolink/sdk/request/campaign/CampaignInfo;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lai/turbolink/sdk/request/campaign/CampaignInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static synthetic getCampaignInfo$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lai/turbolink/sdk/request/campaign/CampaignInfo;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lai/turbolink/sdk/TurboLink$Campaign;->getCampaignInfo(Ljava/lang/String;Ljava/lang/String;)Lai/turbolink/sdk/request/campaign/CampaignInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final loadDelayRedirectUrl(Landroid/app/Activity;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lai/turbolink/sdk/TurboLink$Campaign;->launchCampaignDelayShowTime:I

    .line 7
    .line 8
    if-gez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->lastNotLaunchCampaignUrl:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lai/turbolink/sdk/campaign/CampaignLoadURL;->INSTANCE:Lai/turbolink/sdk/campaign/CampaignLoadURL;

    .line 15
    .line 16
    sget-object v1, Lai/turbolink/sdk/TurboLink$Campaign;->lastNotLaunchCampaignUrl:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, v2, v1, p0}, Lai/turbolink/sdk/campaign/CampaignLoadURL;->openProcess(ILjava/lang/String;Landroid/app/Activity;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/TurboLink$Campaign;->setLastNotLaunchCampaignUrl(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public static final loadUrl(Landroid/content/Context;Ljava/lang/String;)Lai/turbolink/sdk/campaign/CampaignBuilder;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setCampaignLoadUrl(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lai/turbolink/sdk/campaign/CampaignBuilder;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lai/turbolink/sdk/campaign/CampaignBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static final openLoadingOverlay()Z
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->lastOpenWebviewActivity:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->openLoadingOverlay()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public static final reLoadUrl()V
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->lastOpenWebviewActivity:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->reloadCampaign()V

    .line 3
    :cond_0
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->reSetwebviewGoReloadUrl()V

    :cond_1
    return-void
.end method

.method public static final reLoadUrl(I)V
    .locals 6

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this.lastOpenWebviewActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lai/turbolink/sdk/TurboLink$Campaign;->lastOpenWebviewActivity:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->lastOpenWebviewActivity:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    new-instance v1, Lai/turbolink/sdk/a;

    invoke-direct {v1}, Lai/turbolink/sdk/a;-><init>()V

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final reLoadUrl$lambda-0()V
    .locals 0

    .line 1
    invoke-static {}, Lai/turbolink/sdk/TurboLink$Campaign;->reLoadUrl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final setCustomParams(Lai/turbolink/sdk/campaign/CustomParamsProperties;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CustomParamsProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "customParamsProperties"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lai/turbolink/sdk/TurboLink$Campaign;->customParamsProperties:Lai/turbolink/sdk/campaign/CustomParamsProperties;

    .line 7
    .line 8
    return-void
.end method

.method public static final setFullScreenMode(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink$Campaign;->fullScreenMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final setGoneBack(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink$Campaign;->goneBack:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final setInitTitle(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lai/turbolink/sdk/TurboLink$Campaign;->initTitle:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final setLang(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lang"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lai/turbolink/sdk/TurboLink$Campaign;->campaignLang:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final setLaunchCampaignActivity(Lkotlin/reflect/KClass;)Lai/turbolink/sdk/TurboLink$Campaign;
    .locals 1
    .param p0    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lai/turbolink/sdk/TurboLink$Campaign;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activityRef"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->_canLaunchCampaignActivityStack:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-interface {p0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    sget-object p0, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final setLaunchCampaignDelay(I)V
    .locals 2

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setCampaignSetDelay(I)V

    .line 5
    .line 6
    .line 7
    sput p0, Lai/turbolink/sdk/TurboLink$Campaign;->launchCampaignDelayShowTime:I

    .line 8
    .line 9
    return-void
.end method

.method public static final setLoadingPic(Landroid/content/Context;I)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->resourceToByteArray(Landroid/content/Context;I)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sput-object p0, Lai/turbolink/sdk/TurboLink$Campaign;->loadingPic:[B

    .line 13
    .line 14
    return-void
.end method

.method public static final setLoadingPicByByte([B)V
    .locals 1
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "imageBytes"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lai/turbolink/sdk/TurboLink$Campaign;->loadingPic:[B

    .line 7
    .line 8
    return-void
.end method

.method public static final setNightMode(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink$Campaign;->nightMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final setScreenOrientationAll()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lai/turbolink/sdk/TurboLink$Campaign;->screenOrientationAll:Z

    .line 3
    .line 4
    return-void
.end method

.method public static final setTitleSize(F)V
    .locals 0

    .line 1
    sput p0, Lai/turbolink/sdk/TurboLink$Campaign;->titleSize:F

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final getCustomParams()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->customParamsProperties:Lai/turbolink/sdk/campaign/CustomParamsProperties;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v0, :cond_0

    .line 12
    .line 13
    sget-object v4, Lai/turbolink/sdk/TurboLink$Campaign;->customParamsProperties:Lai/turbolink/sdk/campaign/CustomParamsProperties;

    .line 14
    .line 15
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v6, "key"

    .line 25
    .line 26
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v6, 0x24

    .line 34
    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v6, "value"

    .line 39
    .line 40
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x2c

    .line 63
    .line 64
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/lit8 v0, v0, -0x1

    .line 85
    .line 86
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 91
    .line 92
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    return-object v1
.end method

.method public final getFullScreenMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink$Campaign;->fullScreenMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getGoneBack()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink$Campaign;->goneBack:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInitTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->initTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->campaignLang:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastNotLaunchCampaignUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->lastNotLaunchCampaignUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastOpenWebviewActivity()Lai/turbolink/sdk/campaign/CampaignWebviewActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->lastOpenWebviewActivity:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLaunchCampaignActivity()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->_canLaunchCampaignActivityStack:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLaunchCampaignDelay()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$Campaign;->launchCampaignDelayShowTime:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLoadingPic()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$Campaign;->loadingPic:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNightMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink$Campaign;->nightMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getScreenOrientationAll()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink$Campaign;->screenOrientationAll:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTitleSize()F
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$Campaign;->titleSize:F

    .line 2
    .line 3
    return v0
.end method

.method public final setLastNotLaunchCampaignUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lai/turbolink/sdk/TurboLink$Campaign;->lastNotLaunchCampaignUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastOpenWebviewActivity(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/campaign/CampaignWebviewActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "webviewActivity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/TurboLink$Campaign;->lastOpenWebviewActivity:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 7
    .line 8
    return-void
.end method
