.class public Lcom/google/ads/mediation/pangle/PangleInitializer;
.super Ljava/lang/Object;
.source "PangleInitializer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;
    }
.end annotation


# static fields
.field private static instance:Lcom/google/ads/mediation/pangle/PangleInitializer;


# instance fields
.field private final initListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private isInitialized:Z

.field private isInitializing:Z

.field private final pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

.field private final pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitializing:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitialized:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->initListeners:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    invoke-direct {v0}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 6
    new-instance v0, Lcom/google/ads/mediation/pangle/PangleFactory;

    invoke-direct {v0}, Lcom/google/ads/mediation/pangle/PangleFactory;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/pangle/PangleSdkWrapper;Lcom/google/ads/mediation/pangle/PangleFactory;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitializing:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitialized:Z

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->initListeners:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 12
    iput-object p2, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    return-void
.end method

.method public static getInstance()Lcom/google/ads/mediation/pangle/PangleInitializer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/ads/mediation/pangle/PangleInitializer;->instance:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/ads/mediation/pangle/PangleInitializer;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/ads/mediation/pangle/PangleInitializer;->instance:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/pangle/PangleInitializer;->instance:Lcom/google/ads/mediation/pangle/PangleInitializer;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitializing:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitialized:Z

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/google/ads/mediation/pangle/PangleConstants;->createSdkError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->initListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;->onInitializeError(Lcom/google/android/gms/ads/AdError;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->initListeners:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x65

    .line 8
    .line 9
    const-string p2, "Failed to initialize Pangle SDK. Missing or invalid App ID."

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/google/ads/mediation/pangle/PangleConstants;->createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p2, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, p1}, Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;->onInitializeError(Lcom/google/android/gms/ads/AdError;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitializing:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->initListeners:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitialized:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {p3}, Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;->onInitializeSuccess()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitializing:Z

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->initListeners:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object p3, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->pangleFactory:Lcom/google/ads/mediation/pangle/PangleFactory;

    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/google/ads/mediation/pangle/PangleFactory;->createPAGConfigBuilder()Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const-string p3, "207"

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->setAdxId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {}, Lcom/google/ads/mediation/pangle/PangleMediationAdapter;->getGDPRConsent()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->setGDPRConsent(I)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const-string p3, "7.5.0.4.0"

    .line 79
    .line 80
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    const-string v0, "[{\"name\":\"mediation\",\"value\":\"google\"},{\"name\":\"adapter_version\",\"value\":\"%s\"}]"

    .line 85
    .line 86
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->setUserData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget-object p3, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->pangleSdkWrapper:Lcom/google/ads/mediation/pangle/PangleSdkWrapper;

    .line 99
    .line 100
    invoke-virtual {p3, p1, p2, p0}, Lcom/google/ads/mediation/pangle/PangleSdkWrapper;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitializing:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->isInitialized:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->initListeners:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/google/ads/mediation/pangle/PangleInitializer$Listener;->onInitializeSuccess()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/pangle/PangleInitializer;->initListeners:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
