.class public final Lai/turbolink/sdk/TurboLink;
.super Ljava/lang/Object;
.source "TurboLink.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/TurboLink$INTENT_STATE;,
        Lai/turbolink/sdk/TurboLink$SESSION_STATE;,
        Lai/turbolink/sdk/TurboLink$Companion;,
        Lai/turbolink/sdk/TurboLink$RiskManager;,
        Lai/turbolink/sdk/TurboLink$Campaign;,
        Lai/turbolink/sdk/TurboLink$InstallReferrerObj;,
        Lai/turbolink/sdk/TurboLink$SessionObj;,
        Lai/turbolink/sdk/TurboLink$SDKAccessInfo;,
        Lai/turbolink/sdk/TurboLink$DefaultEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lai/turbolink/sdk/TurboLink$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final GLOBAL_VERSION_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TURBOLINK_SDK_VERSION:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static _appCampaignCreateCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appCampaignDestroyCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appCampaignPauseCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appCampaignResumeCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appEventListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appLoginActivityRef:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appLoginListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appPointsListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appRedirectListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appRegActivityRef:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appRegListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _appShareListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _clientRewardsListener:Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _turboLinkEventCallback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static _turboLinkReferral:Lai/turbolink/sdk/TurboLink;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static blackbox:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static clipboardText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static deviceStatus:I

.field private static disableAutoSessionInitialization:Z

.field private static idSimpleMode:Z

.field private static isPlugin:Z

.field private static lastNoLoginWebviewUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static lastOpenWebViewUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static projectStatus:I

.field private static runEnvironment:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sdkType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static simpleParameterMode:Z

.field private static toggleClickAppEventListenerCallback:Z

.field private static userAgentGet_:Z

.field private static userAgentString_:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static userCompanionObj:Lai/turbolink/sdk/helpers/UserHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static webviewGoReloadUrl:Z

.field private static webviewGoReloadUrlLastCustomEventTime:J


# instance fields
.field private _activityLifeCycleObserver:Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _currentActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _deviceInfo:Lai/turbolink/sdk/device/DeviceInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _initSessionState:Lai/turbolink/sdk/TurboLink$SESSION_STATE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private _intentActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _intentState:Lai/turbolink/sdk/TurboLink$INTENT_STATE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _networkInterface:Lai/turbolink/sdk/network/NetworkInterface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _requestQueue:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _userHelper:Lai/turbolink/sdk/helpers/UserHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lai/turbolink/sdk/TurboLink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "ai.turbolink.sdk:"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getSDKVersion()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lai/turbolink/sdk/TurboLink;->TURBOLINK_SDK_VERSION:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "TURBOLINK-VERSION-TAG:"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lai/turbolink/sdk/TurboLink;->GLOBAL_VERSION_TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "prod"

    .line 52
    .line 53
    sput-object v0, Lai/turbolink/sdk/TurboLink;->runEnvironment:Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, ""

    .line 56
    .line 57
    sput-object v0, Lai/turbolink/sdk/TurboLink;->userAgentString_:Ljava/lang/String;

    .line 58
    .line 59
    sput-object v0, Lai/turbolink/sdk/TurboLink;->lastNoLoginWebviewUrl:Ljava/lang/String;

    .line 60
    .line 61
    sput-object v0, Lai/turbolink/sdk/TurboLink;->lastOpenWebViewUrl:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v1, Lai/turbolink/sdk/helpers/UserHelper;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lai/turbolink/sdk/helpers/UserHelper;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sput-object v1, Lai/turbolink/sdk/TurboLink;->userCompanionObj:Lai/turbolink/sdk/helpers/UserHelper;

    .line 69
    .line 70
    sput-object v0, Lai/turbolink/sdk/TurboLink;->clipboardText:Ljava/lang/String;

    .line 71
    .line 72
    sput-object v0, Lai/turbolink/sdk/TurboLink;->blackbox:Ljava/lang/String;

    .line 73
    .line 74
    const-string v0, "native"

    .line 75
    .line 76
    sput-object v0, Lai/turbolink/sdk/TurboLink;->sdkType:Ljava/lang/String;

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object p2, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 10
    .line 11
    iput-object p2, p0, Lai/turbolink/sdk/TurboLink;->_initSessionState:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 12
    .line 13
    sget-object p2, Lai/turbolink/sdk/TurboLink$INTENT_STATE;->PENDING:Lai/turbolink/sdk/TurboLink$INTENT_STATE;

    .line 14
    .line 15
    iput-object p2, p0, Lai/turbolink/sdk/TurboLink;->_intentState:Lai/turbolink/sdk/TurboLink$INTENT_STATE;

    .line 16
    .line 17
    iput-object p1, p0, Lai/turbolink/sdk/TurboLink;->_context:Landroid/content/Context;

    .line 18
    .line 19
    sget-object p2, Lai/turbolink/sdk/TurboLink;->userCompanionObj:Lai/turbolink/sdk/helpers/UserHelper;

    .line 20
    .line 21
    iput-object p2, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 22
    .line 23
    new-instance p2, Lai/turbolink/sdk/device/DeviceInfo;

    .line 24
    .line 25
    invoke-direct {p2, p1}, Lai/turbolink/sdk/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lai/turbolink/sdk/TurboLink;->_deviceInfo:Lai/turbolink/sdk/device/DeviceInfo;

    .line 29
    .line 30
    sget-object p2, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getInstance(Landroid/content/Context;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Lai/turbolink/sdk/TurboLink;->_appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 37
    .line 38
    new-instance p2, Lai/turbolink/sdk/network/NetworkInterfaceUrlConnection;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lai/turbolink/sdk/network/NetworkInterfaceUrlConnection;-><init>(Lai/turbolink/sdk/TurboLink;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lai/turbolink/sdk/TurboLink;->_networkInterface:Lai/turbolink/sdk/network/NetworkInterface;

    .line 44
    .line 45
    sget-object p2, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->Companion:Lai/turbolink/sdk/request/ServerRequestAsyncQueue$Companion;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue$Companion;->getInstance(Landroid/content/Context;)Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lai/turbolink/sdk/TurboLink;->_requestQueue:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 52
    .line 53
    return-void
.end method

.method public static final synthetic access$getBlackbox$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->blackbox:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getClipboardText$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->clipboardText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDeviceStatus$cp()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink;->deviceStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getDisableAutoSessionInitialization$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink;->disableAutoSessionInitialization:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getGLOBAL_VERSION_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->GLOBAL_VERSION_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getIdSimpleMode$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink;->idSimpleMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getLastNoLoginWebviewUrl$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->lastNoLoginWebviewUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getLastOpenWebViewUrl$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->lastOpenWebViewUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getProjectStatus$cp()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/TurboLink;->projectStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getRunEnvironment$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->runEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSdkType$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->sdkType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSimpleParameterMode$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink;->simpleParameterMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getToggleClickAppEventListenerCallback$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink;->toggleClickAppEventListenerCallback:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getUserAgentGet_$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink;->userAgentGet_:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getUserAgentString_$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->userAgentString_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUserCompanionObj$cp()Lai/turbolink/sdk/helpers/UserHelper;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->userCompanionObj:Lai/turbolink/sdk/helpers/UserHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getWebviewGoReloadUrl$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink;->webviewGoReloadUrl:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getWebviewGoReloadUrlLastCustomEventTime$cp()J
    .locals 2

    .line 1
    sget-wide v0, Lai/turbolink/sdk/TurboLink;->webviewGoReloadUrlLastCustomEventTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$get_appCampaignCreateCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appCampaignCreateCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appCampaignDestroyCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appCampaignDestroyCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appCampaignPauseCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appCampaignPauseCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appCampaignResumeCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appCampaignResumeCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appEventListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appEventListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appLoginActivityRef$cp()Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appLoginActivityRef:Lkotlin/reflect/KClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appLoginListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appLoginListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appPointsListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appPointsListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appPrefHelper$p(Lai/turbolink/sdk/TurboLink;)Lai/turbolink/sdk/helpers/AppPrefHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lai/turbolink/sdk/TurboLink;->_appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$get_appRedirectListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appRedirectListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appRegActivityRef$cp()Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appRegActivityRef:Lkotlin/reflect/KClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appRegListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appRegListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appShareListenerCallback$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_appShareListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_clientRewardsListener$cp()Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_clientRewardsListener:Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_deviceInfo$p(Lai/turbolink/sdk/TurboLink;)Lai/turbolink/sdk/device/DeviceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lai/turbolink/sdk/TurboLink;->_deviceInfo:Lai/turbolink/sdk/device/DeviceInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$get_turboLinkEventCallback$cp()Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_turboLinkEventCallback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_turboLinkReferral$cp()Lai/turbolink/sdk/TurboLink;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->_turboLinkReferral:Lai/turbolink/sdk/TurboLink;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$isPlugin$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lai/turbolink/sdk/TurboLink;->isPlugin:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$setActivityLifeCycleObserver(Lai/turbolink/sdk/TurboLink;Landroid/app/Application;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lai/turbolink/sdk/TurboLink;->setActivityLifeCycleObserver(Landroid/app/Application;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setBlackbox$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->blackbox:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setClipboardText$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->clipboardText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setDeviceStatus$cp(I)V
    .locals 0

    .line 1
    sput p0, Lai/turbolink/sdk/TurboLink;->deviceStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setDisableAutoSessionInitialization$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink;->disableAutoSessionInitialization:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setIdSimpleMode$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink;->idSimpleMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLastNoLoginWebviewUrl$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->lastNoLoginWebviewUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLastOpenWebViewUrl$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->lastOpenWebViewUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPlugin$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink;->isPlugin:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setProjectStatus$cp(I)V
    .locals 0

    .line 1
    sput p0, Lai/turbolink/sdk/TurboLink;->projectStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setRunEnvironment$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->runEnvironment:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSdkType$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->sdkType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSimpleParameterMode$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink;->simpleParameterMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setToggleClickAppEventListenerCallback$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink;->toggleClickAppEventListenerCallback:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setUserAgentGet_$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink;->userAgentGet_:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setUserAgentString_$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->userAgentString_:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setUserCompanionObj$cp(Lai/turbolink/sdk/helpers/UserHelper;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->userCompanionObj:Lai/turbolink/sdk/helpers/UserHelper;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setWebviewGoReloadUrl$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lai/turbolink/sdk/TurboLink;->webviewGoReloadUrl:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setWebviewGoReloadUrlLastCustomEventTime$cp(J)V
    .locals 0

    .line 1
    sput-wide p0, Lai/turbolink/sdk/TurboLink;->webviewGoReloadUrlLastCustomEventTime:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appCampaignCreateCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appCampaignCreateCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appCampaignDestroyCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appCampaignDestroyCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appCampaignPauseCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appCampaignPauseCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appCampaignResumeCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appCampaignResumeCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appEventListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appEventListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appLoginActivityRef$cp(Lkotlin/reflect/KClass;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appLoginActivityRef:Lkotlin/reflect/KClass;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appLoginListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appLoginListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appPointsListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appPointsListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appRedirectListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appRedirectListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appRegActivityRef$cp(Lkotlin/reflect/KClass;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appRegActivityRef:Lkotlin/reflect/KClass;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appRegListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appRegListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appShareListenerCallback$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_appShareListenerCallback:Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_clientRewardsListener$cp(Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_clientRewardsListener:Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_turboLinkEventCallback$cp(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_turboLinkEventCallback:Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_turboLinkReferral$cp(Lai/turbolink/sdk/TurboLink;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/TurboLink;->_turboLinkReferral:Lai/turbolink/sdk/TurboLink;

    .line 2
    .line 3
    return-void
.end method

.method public static final activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->activitySessionBuilder(Landroid/app/Activity;)Lai/turbolink/sdk/TurboLinkActivitySession;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final declared-synchronized autoInstance(Landroid/content/Context;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lai/turbolink/sdk/TurboLink;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    invoke-virtual {v1, p0, p1, p2}, Lai/turbolink/sdk/TurboLink$Companion;->autoInstance(Landroid/content/Context;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final declared-synchronized autoInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    const-class v0, Lai/turbolink/sdk/TurboLink;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lai/turbolink/sdk/TurboLink$Companion;->autoInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static final createDeepLink()Lai/turbolink/sdk/deeplink/LinkProperties;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->createDeepLink()Lai/turbolink/sdk/deeplink/LinkProperties;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final customEvent(Landroid/app/Activity;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    invoke-virtual {v0, p0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->customEvent(Landroid/app/Activity;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final customEvent(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->customEvent(Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final enableLogger()V
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->enableLogger()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final isBelongTurboLink(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->isBelongTurboLink(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final isUrlBelongTurboLink(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->isUrlBelongTurboLink(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final setActivityIntent(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->setActivityIntent(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setActivityLifeCycleObserver(Landroid/app/Application;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;-><init>(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lai/turbolink/sdk/TurboLink;->_activityLifeCycleObserver:Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lai/turbolink/sdk/TurboLink;->_activityLifeCycleObserver:Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final setAppUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setAppUserId(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserId(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final setAppUserInviteCode(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserInviteCode(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setAppUserLevel(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserLevel(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setAppUserTag(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserTag(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setDelayedSessionInitialization(Z)V
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->setDelayedSessionInitialization(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setIdSimpleMode()V
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->setIdSimpleMode()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setIsPlugin()V
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->setIsPlugin()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setSDKType(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->setSDKType(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setSimpleParameterMode()V
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->setSimpleParameterMode()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final settingRunEnvironment(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->settingRunEnvironment(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final showToast(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->showToast(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final startSessionInitialization(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->startSessionInitialization(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final switchEnv()V
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->switchEnv()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withCampaignCreateCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withCampaignCreateCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignCreateCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withCampaignDestroyCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withCampaignDestroyCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignDestroyCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withCampaignPauseCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withCampaignPauseCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignPauseCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withCampaignResumeCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withCampaignResumeCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$CampaignResumeCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withClientRewardsListener(Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withClientRewardsListener(Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withEventCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withEventCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withEventListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withEventListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withLoginActivity(Lkotlin/reflect/KClass;)V
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
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withLoginActivity(Lkotlin/reflect/KClass;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withLoginListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withLoginListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withPointListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withPointListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withRedirectListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withRedirectListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$RedirectListenerCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withRegListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withRegListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final withShareListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;)V
    .locals 1
    .param p0    # Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lai/turbolink/sdk/TurboLink$Companion;->withShareListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$ShareListenerCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final generateRequestInternal(Lai/turbolink/sdk/request/ServerRequestURL;)V
    .locals 1
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
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerRequestURL;->isAsync()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_requestQueue:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->handleNewManualRequest(Lai/turbolink/sdk/request/ServerRequest;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lai/turbolink/sdk/request/ServerRequestSync;->INSTANCE:Lai/turbolink/sdk/request/ServerRequestSync;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/request/ServerRequestSync;->doReq(Lai/turbolink/sdk/request/ServerRequestURL;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final getActivityLifeCycleObserver()Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_activityLifeCycleObserver:Lai/turbolink/sdk/TurboLinkActivityLifeCycleObserver;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppPrefHelper()Lai/turbolink/sdk/helpers/AppPrefHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_currentActivityReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final getDeviceInfo()Lai/turbolink/sdk/device/DeviceInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_deviceInfo:Lai/turbolink/sdk/device/DeviceInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEventInstallOrOpenRequest(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)Lai/turbolink/sdk/request/ServerRequestSession;
    .locals 2
    .param p1    # Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getAppPrefHelper()Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper;->isAppNewInstall()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    new-instance v0, Lai/turbolink/sdk/request/event/EventInstall;

    .line 23
    .line 24
    iget-object v1, p0, Lai/turbolink/sdk/TurboLink;->_context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {v0, v1, p1, p2}, Lai/turbolink/sdk/request/event/EventInstall;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lai/turbolink/sdk/request/event/EventOpen;

    .line 31
    .line 32
    iget-object v1, p0, Lai/turbolink/sdk/TurboLink;->_context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v0, v1, p1, p2}, Lai/turbolink/sdk/request/event/EventOpen;-><init>(Landroid/content/Context;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;Z)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-object v0
.end method

.method public final getIntentActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_intentActivityReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final getNetworkInterface()Lai/turbolink/sdk/network/NetworkInterface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_networkInterface:Lai/turbolink/sdk/network/NetworkInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_initSessionState:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserHelper()Lai/turbolink/sdk/helpers/UserHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_currentActivityReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_currentActivityReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_intentActivityReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_intentActivityReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final initializeSession(Lai/turbolink/sdk/request/ServerRequestSession;)V
    .locals 2
    .param p1    # Lai/turbolink/sdk/request/ServerRequestSession;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getPROJECT_ID()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_5

    .line 17
    .line 18
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getKEY_APPKEY()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink;->getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lai/turbolink/sdk/TurboLink;->getSessionInitState()Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->INITIALISING:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 42
    .line 43
    if-ne v0, v1, :cond_4

    .line 44
    .line 45
    :cond_1
    sget-object v0, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->INITIALISING:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/TurboLink;->setSessionInitState(Lai/turbolink/sdk/TurboLink$SESSION_STATE;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_requestQueue:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->getWhetherAutoInitialized()Lai/turbolink/sdk/request/ServerRequestSession;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    :goto_0
    if-nez v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_requestQueue:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->insert(Lai/turbolink/sdk/request/ServerRequest;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object p1, p0, Lai/turbolink/sdk/TurboLink;->_requestQueue:Lai/turbolink/sdk/request/ServerRequestAsyncQueue;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Lai/turbolink/sdk/request/ServerRequestAsyncQueue;->processNextQueueTask()V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void

    .line 77
    :cond_5
    :goto_1
    sget-object p1, Lai/turbolink/sdk/TurboLink$SESSION_STATE;->UNINITIALISED:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lai/turbolink/sdk/TurboLink;->setSessionInitState(Lai/turbolink/sdk/TurboLink$SESSION_STATE;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "Warning: Please enter your projectID in your project`s manifest file."

    .line 83
    .line 84
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final onIntentRead(Landroid/content/Intent;Z)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lai/turbolink/sdk/TurboLink$INTENT_STATE;->READY:Lai/turbolink/sdk/TurboLink$INTENT_STATE;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/TurboLink;->setIntentState(Lai/turbolink/sdk/TurboLink$INTENT_STATE;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    sget-object p2, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 24
    .line 25
    invoke-virtual {p2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getLAST_INTENT_VALUE()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getLAST_INTENT_VALUE()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p2, p1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->setLAST_INTENT_VALUE(Landroid/net/Uri;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    sget-object p2, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lai/turbolink/sdk/utils/TurboLinkUtil;->isHttpUri(Landroid/net/Uri;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 53
    .line 54
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v0, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->LAUNCH_IN_UNIVERSAL_LINK:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 59
    .line 60
    invoke-virtual {v0}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p2, v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 73
    .line 74
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object v0, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->LAUNCH_SCHEME:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 79
    .line 80
    invoke-virtual {v0}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p2, v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    sget-object p1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 93
    .line 94
    const/4 p2, 0x0

    .line 95
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->setLAST_INTENT_VALUE(Landroid/net/Uri;)V

    .line 96
    .line 97
    .line 98
    sget-object p1, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 99
    .line 100
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-object p2, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 105
    .line 106
    sget-object v0, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->LAUNCH:Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;

    .line 107
    .line 108
    invoke-virtual {v0}, Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;->getEventSeq()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p2, v0}, Lai/turbolink/sdk/utils/TurboLinkUtil;->insertObjectToArray(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 117
    .line 118
    .line 119
    :goto_0
    return-void
.end method

.method public final setCurrentActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lai/turbolink/sdk/TurboLink;->_currentActivityReference:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method

.method public final setIntentActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lai/turbolink/sdk/TurboLink;->_intentActivityReference:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method

.method public final setIntentState(Lai/turbolink/sdk/TurboLink$INTENT_STATE;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/TurboLink$INTENT_STATE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/TurboLink;->_intentState:Lai/turbolink/sdk/TurboLink$INTENT_STATE;

    .line 7
    .line 8
    return-void
.end method

.method public final setSessionInitState(Lai/turbolink/sdk/TurboLink$SESSION_STATE;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/TurboLink$SESSION_STATE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "initState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/TurboLink;->_initSessionState:Lai/turbolink/sdk/TurboLink$SESSION_STATE;

    .line 7
    .line 8
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/helpers/UserHelper;->setUserId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nickName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "avatar"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "tags"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "inviteCode"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/helpers/UserHelper;->setUserId(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/helpers/UserHelper;->setNickName(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 37
    .line 38
    invoke-virtual {p1, p3}, Lai/turbolink/sdk/helpers/UserHelper;->setAvatar(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 42
    .line 43
    invoke-virtual {p1}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 48
    .line 49
    .line 50
    array-length p1, p4

    .line 51
    const/4 p2, 0x0

    .line 52
    :goto_0
    if-ge p2, p1, :cond_0

    .line 53
    .line 54
    aget-object p3, p4, p2

    .line 55
    .line 56
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 57
    .line 58
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    add-int/lit8 p2, p2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 69
    .line 70
    invoke-virtual {p1, p5}, Lai/turbolink/sdk/helpers/UserHelper;->setInviteCode(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final setUserInviteCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lai/turbolink/sdk/helpers/UserHelper;->setInviteCode(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setUserLevel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "level"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lai/turbolink/sdk/TurboLink;->_userHelper:Lai/turbolink/sdk/helpers/UserHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/UserHelper;->getLevelTag()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final set_currentActivityReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/TurboLink;->_currentActivityReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method

.method public final set_intentActivityReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/TurboLink;->_intentActivityReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method

.method public final userLogout()V
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->userCompanionObj:Lai/turbolink/sdk/helpers/UserHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/UserHelper;->cleanParams()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
