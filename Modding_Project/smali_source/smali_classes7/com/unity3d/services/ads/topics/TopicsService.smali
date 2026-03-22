.class public final Lcom/unity3d/services/ads/topics/TopicsService;
.super Ljava/lang/Object;
.source "TopicsService.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "MissingPermission"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topicsManager:Li/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/webview/bridge/IEventSender;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/core/domain/ISDKDispatchers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/services/core/webview/bridge/IEventSender;
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
    const-string v0, "dispatchers"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "eventSender"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/unity3d/services/ads/topics/TopicsService;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/unity3d/services/ads/topics/TopicsService;->eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/topics/TopicsService;->getTopicsManager(Landroid/content/Context;)Li/d;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/unity3d/services/ads/topics/TopicsService;->topicsManager:Li/d;

    .line 28
    .line 29
    return-void
.end method

.method private final getTopicsManager(Landroid/content/Context;)Li/d;
    .locals 3

    .line 1
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->getApiLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x21

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    const v0, 0xf4240

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lj/b;->a(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x4

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_1
    const-class v0, Li/d;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Li/d;

    .line 29
    .line 30
    return-object p1
.end method


# virtual methods
.method public final checkAvailability()Lcom/unity3d/services/ads/topics/TopicsStatus;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->getApiLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x21

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/unity3d/services/ads/topics/TopicsStatus;->ERROR_API_BELOW_33:Lcom/unity3d/services/ads/topics/TopicsStatus;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const v0, 0xf4240

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lj/b;->a(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x4

    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/unity3d/services/ads/topics/TopicsStatus;->ERROR_EXTENSION_BELOW_4:Lcom/unity3d/services/ads/topics/TopicsStatus;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/unity3d/services/ads/topics/TopicsService;->topicsManager:Li/d;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    sget-object v0, Lcom/unity3d/services/ads/topics/TopicsStatus;->ERROR_TOPICSMANAGER_NULL:Lcom/unity3d/services/ads/topics/TopicsStatus;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_2
    invoke-static {}, Lcom/applovin/impl/wc;->a()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    sget-object v0, Lcom/unity3d/services/ads/topics/TopicsStatus;->ERROR_AD_SERVICES_DISABLED:Lcom/unity3d/services/ads/topics/TopicsStatus;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_3
    sget-object v0, Lcom/unity3d/services/ads/topics/TopicsStatus;->TOPICS_AVAILABLE:Lcom/unity3d/services/ads/topics/TopicsStatus;

    .line 42
    .line 43
    return-object v0
.end method

.method public final getTopics(Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adsSdkName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/unity3d/services/ads/topics/TopicsReceiver;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/unity3d/services/ads/topics/TopicsService;->eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/unity3d/services/ads/topics/TopicsReceiver;-><init>(Lcom/unity3d/services/core/webview/bridge/IEventSender;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Li/a$a;

    .line 14
    .line 15
    invoke-direct {v1}, Li/a$a;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Li/a$a;->b(Ljava/lang/String;)Li/a$a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Li/a$a;->c(Z)Li/a$a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Li/a$a;->a()Li/a;

    .line 27
    .line 28
    .line 29
    const-string p1, "Builder().setAdsSdkName(\u2026ecordObservation).build()"

    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object p1, p0, Lcom/unity3d/services/ads/topics/TopicsService;->topicsManager:Li/d;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/unity3d/services/ads/topics/TopicsService;->dispatchers:Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 40
    .line 41
    invoke-interface {v1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lgt/d1;->a(Lgt/c0;)Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0}, Landroidx/core/os/b;->a(Ljava/lang/Object;)Landroid/os/OutcomeReceiver;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, p2, v1, v0}, Li/d;->b(Li/a;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    iget-object p2, p0, Lcom/unity3d/services/ads/topics/TopicsService;->eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 59
    .line 60
    sget-object v0, Lcom/unity3d/services/core/webview/WebViewEventCategory;->TOPICS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 61
    .line 62
    sget-object v1, Lcom/unity3d/services/ads/topics/TopicsEvents;->NOT_AVAILABLE:Lcom/unity3d/services/ads/topics/TopicsEvents;

    .line 63
    .line 64
    sget-object v2, Lcom/unity3d/services/ads/topics/TopicsErrors;->ERROR_EXCEPTION:Lcom/unity3d/services/ads/topics/TopicsErrors;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {p2, v0, v1, v2}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v0, "Failed to get topics with error: "

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    :goto_0
    return-void
.end method
