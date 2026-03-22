.class public final Lai/turbolink/sdk/TurboLink$SDKAccessInfo;
.super Ljava/lang/Object;
.source "TurboLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/TurboLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SDKAccessInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static appLanguage:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static appLinks:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static campaignEventCallback:I

.field private static campaignLoadUrl:I

.field private static campaignLoginCallback:I

.field private static campaignRedirectCallback:I

.field private static campaignSetDelay:I

.field private static campaignSocialClickCallback:I

.field private static enableDelayInit:I

.field private static installEventStatus:I

.field private static loginEventStatus:I

.field private static logoutEventStatus:I

.field private static navigationBarType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static packageName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static registerEventStatus:I

.field private static schemes:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sdkLaunchEventSequence:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static setCallbackBeforeInit:I

.field private static setEventCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignLoginCallback:I

    .line 10
    .line 11
    sput v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignSocialClickCallback:I

    .line 12
    .line 13
    sput v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setEventCallback:I

    .line 14
    .line 15
    sput v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->enableDelayInit:I

    .line 16
    .line 17
    const-string v1, "Kotlin"

    .line 18
    .line 19
    sput-object v1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->appLanguage:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    sput-object v1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    sput v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setCallbackBeforeInit:I

    .line 26
    .line 27
    new-instance v1, Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->sdkLaunchEventSequence:Lorg/json/JSONArray;

    .line 33
    .line 34
    new-instance v1, Lorg/json/JSONArray;

    .line 35
    .line 36
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->schemes:Lorg/json/JSONArray;

    .line 40
    .line 41
    new-instance v1, Lorg/json/JSONArray;

    .line 42
    .line 43
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->appLinks:Lorg/json/JSONArray;

    .line 47
    .line 48
    sput v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignEventCallback:I

    .line 49
    .line 50
    sput v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignLoadUrl:I

    .line 51
    .line 52
    sput v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignRedirectCallback:I

    .line 53
    .line 54
    sput v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignSetDelay:I

    .line 55
    .line 56
    const-string v0, "Custom"

    .line 57
    .line 58
    sput-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->navigationBarType:Ljava/lang/String;

    .line 59
    .line 60
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
.method public final getAppLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->appLanguage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppLinks()Lorg/json/JSONArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->appLinks:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignEventCallback()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignEventCallback:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCampaignLoadUrl()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignLoadUrl:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCampaignLoginCallback()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignLoginCallback:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCampaignRedirectCallback()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignRedirectCallback:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCampaignSetDelay()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignSetDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCampaignSocialClickCallback()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignSocialClickCallback:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEnableDelayInit()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->enableDelayInit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getInstallEventStatus()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->installEventStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLoginEventStatus()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->loginEventStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLogoutEventStatus()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->logoutEventStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNavigationBarType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->navigationBarType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRegisterEventStatus()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->registerEventStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSchemes()Lorg/json/JSONArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->schemes:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSdkLaunchEventSequence()Lorg/json/JSONArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->sdkLaunchEventSequence:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSetCallbackBeforeInit()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setCallbackBeforeInit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSetEventCallback()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setEventCallback:I

    .line 2
    .line 3
    return v0
.end method

.method public final setAppLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->appLanguage:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAppLinks(Lorg/json/JSONArray;)V
    .locals 1
    .param p1    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->appLinks:Lorg/json/JSONArray;

    .line 7
    .line 8
    return-void
.end method

.method public final setCampaignEventCallback(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignEventCallback:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCampaignLoadUrl(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignLoadUrl:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCampaignLoginCallback(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignLoginCallback:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCampaignRedirectCallback(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignRedirectCallback:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCampaignSetDelay(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignSetDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCampaignSocialClickCallback(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->campaignSocialClickCallback:I

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableDelayInit(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->enableDelayInit:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInstallEventStatus(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->installEventStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLoginEventStatus(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->loginEventStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLogoutEventStatus(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->logoutEventStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNavigationBarType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->navigationBarType:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setRegisterEventStatus(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->registerEventStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSchemes(Lorg/json/JSONArray;)V
    .locals 1
    .param p1    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->schemes:Lorg/json/JSONArray;

    .line 7
    .line 8
    return-void
.end method

.method public final setSdkLaunchEventSequence(Lorg/json/JSONArray;)V
    .locals 1
    .param p1    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->sdkLaunchEventSequence:Lorg/json/JSONArray;

    .line 7
    .line 8
    return-void
.end method

.method public final setSetCallbackBeforeInit(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setCallbackBeforeInit:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSetEventCallback(I)V
    .locals 0

    .line 1
    sput p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->setEventCallback:I

    .line 2
    .line 3
    return-void
.end method
